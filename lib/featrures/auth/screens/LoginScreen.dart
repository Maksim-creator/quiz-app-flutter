import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/api/auth.dart';
import 'package:quizz_app/api/entities.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/cubit/auth_cubit.dart';
import 'package:quizz_app/featrures/user/screens/UserProfile.dart';
import 'package:quizz_app/widgets/Button.dart';
import 'package:quizz_app/widgets/LoadingOverlay.dart';
import 'package:quizz_app/widgets/TextInput.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  bool loginIsNotEmpty = false;
  bool passIsNotEmpty = false;
  bool _isLoading = false;
  dynamic _error;

  void handleLogin() async {
    try {
      setState(() {
        _isLoading = true;
      });
      Map<String, dynamic> data =
          await AuthApi().signIn(loginController.text, passwordController.text);

      BlocProvider.of<AuthCubit>(context).setLoginData(UserData(
          email: data['email'],
          name: data['name'],
          token: data['token'],
          avatar: data['avatar'],
          data: data['data']));

      await Future.delayed(const Duration(milliseconds: 2000));
      print(_isLoading);
      if (data.containsKey('email')) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserProfile()),
        );
      }
      setState(() {
        _isLoading = false;
      });
    } on Error catch (e) {
      setState(() {
        _isLoading = false;
        _error = e.message;
      });
    }
  }

  @override
  void initState() {
    loginController.addListener(() {
      setState(() {
        loginIsNotEmpty = loginController.text.isNotEmpty;
      });
    });
    passwordController.addListener(() {
      setState(() {
        passIsNotEmpty = passwordController.text.isNotEmpty;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
        loading: _isLoading,
        child: Scaffold(
          backgroundColor: ColorConstants.lightViolet,
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            title: const Text(
              'Sign Up',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            backgroundColor: ColorConstants.lightViolet,
            elevation: 0,
          ),
          body: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 0),
                      child: IntrinsicHeight(
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
                                  onPress: handleLogin,
                                  disabled:
                                      !loginIsNotEmpty || !passIsNotEmpty),
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
                      )));
            },
          ),
        ));
  }
}
