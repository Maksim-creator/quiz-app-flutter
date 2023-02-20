import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/api/entities.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/auth/utils/validation.dart';
import 'package:quizz_app/featrures/user/screens/BottomTabsNavigation.dart';
import 'package:quizz_app/widgets/Button.dart';
import 'package:quizz_app/widgets/TextInput.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void login() {
    try {
      SignInData signInData = SignInData(
          email: loginController.text, password: passwordController.text);

      context.read<AuthBloc>().add(AuthEvent.login(signInData: signInData));

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BottomTabs()),
      );
    } catch (e) {
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
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                child: IntrinsicHeight(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            child: TextInput(
                              hintText: 'Your email address',
                              label: 'Email',
                              prefixIcon: Icons.email_outlined,
                              controller: loginController,
                              validate: (value) {
                                if (!value!.isValidEmail) {
                                  return 'Enter valid email';
                                }
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
                          padding: const EdgeInsets.only(top: 20, bottom: 5),
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
                              side:
                                  const BorderSide(color: Colors.transparent)),
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
                ))));
  }
}
