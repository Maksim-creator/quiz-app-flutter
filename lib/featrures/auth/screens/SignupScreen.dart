import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/auth/screens/LoginScreen.dart';
import 'package:quizz_app/featrures/auth/utils/entities.dart';
import 'package:quizz_app/featrures/auth/utils/validation.dart';
import '../../../assets/colors.dart';
import '../../../widgets/TextInput.dart';
import '../../../widgets/Button.dart';
import '../../user/screens/BottomTabsNavigation.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<StatefulWidget> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  bool signUpDisabled = true;
  @override
  void initState() {
    super.initState();
  }

  void registration() {
    try {
      SignUpData signUpData = SignUpData(
          email: email.text,
          password: password.text,
          confirmPassword: confirmPassword.text,
          name: name.text);

      context.read<AuthBloc>().add(
          AuthEvent.registration(signUpData: signUpData, context: context));
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
                            hintText: 'Your name',
                            label: 'Name',
                            validate: (value) {
                              if (!value!.isValidName) {
                                return 'Enter valid name';
                              }
                              return null;
                            },
                            prefixIcon: Icons.email_outlined,
                            controller: name,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          child: TextInput(
                            hintText: 'Your email address',
                            label: 'Email',
                            validate: (value) {
                              if (!value!.isValidEmail) {
                                return 'Enter valid email';
                              }
                              return null;
                            },
                            prefixIcon: Icons.person_outline,
                            controller: email,
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
                          controller: password,
                          validate: (value) {
                            if (!value!.isValidPassword) {
                              return 'Enter valid password';
                            }
                            return null;
                          },
                          isPassword: true,
                        ),
                      )),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: TextInput(
                          hintText: 'Confirm your password',
                          label: 'Confirm password',
                          prefixIcon: Icons.lock_outline,
                          controller: confirmPassword,
                          validate: (value) {
                            if (value != password.text) {
                              return 'Password mismatch';
                            }
                            return null;
                          },
                          isPassword: true,
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 5),
                        child: Button(
                          buttonText: 'Sign up',
                          onPress: () {
                            if (formKey.currentState!.validate()) {
                              registration();
                            }
                          },
                          disabled: false,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?'),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                side: const BorderSide(
                                    color: Colors.transparent)),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: ColorConstants.violet,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ))),
    );
  }
}
