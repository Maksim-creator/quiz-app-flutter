import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/auth/utils/entities.dart';
import 'package:quizz_app/featrures/auth/utils/validation.dart';
import 'package:quizz_app/featrures/user/screens/BottomTabsNavigation.dart';
import 'package:quizz_app/widgets/Button.dart';
import 'package:quizz_app/widgets/TextInput.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final storage = const FlutterSecureStorage();
  TextEditingController loginController =
      TextEditingController(text: 'lalal@g.c');
  TextEditingController passwordController =
      TextEditingController(text: 'Test123!');

  @override
  void initState() {
    super.initState();
  }

  void login() async {
    try {
      SignInData signInData = SignInData(
          email: loginController.text, password: passwordController.text);

      context
          .read<AuthBloc>()
          .add(AuthEvent.login(signInData: signInData, context: context));

      await storage.write(key: "KEY_USERNAME", value: loginController.text);
      await storage.write(key: "KEY_PASSWORD", value: passwordController.text);
    } catch (e) {
      print('${e.toString()} fgfg');
      throw Exception();
    }
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
        backgroundColor: ColorConstants.lightViolet,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'Sign Up',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          backgroundColor: ColorConstants.lightViolet,
          elevation: 0,
        ),
        body: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                    child: IntrinsicHeight(
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: TextInput(
                                  hintText: 'Your email address',
                                  label: 'Email',
                                  prefixIcon: Icons.email_outlined,
                                  controller: loginController,
                                  validate: (value) {
                                    if (!value!.isValidEmail) {
                                      return 'Enter valid email';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Flexible(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 7),
                              child: TextInput(
                                hintText: 'Your password',
                                label: 'Password',
                                prefixIcon: Icons.lock_outline,
                                controller: passwordController,
                                isPassword: true,
                              ),
                            )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 5),
                              child: Button(
                                  buttonText: 'Login',
                                  onPress: () {
                                    if (formKey.currentState!.validate()) {
                                      login();
                                    }
                                  },
                                  disabled: false),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.transparent)),
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                    color: ColorConstants.violet,
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    )));
          },
        ));
  }
}
