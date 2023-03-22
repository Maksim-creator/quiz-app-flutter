import 'package:flutter/material.dart';
import 'package:quizz_app/featrures/auth/utils/validation.dart';
import 'package:quizz_app/featrures/repositories/auth_repo.dart';
import 'package:quizz_app/widgets/Button.dart';
import 'package:quizz_app/widgets/LoadingOverlay.dart';

import '../../../../widgets/TextInput.dart';

class PassCheck extends StatefulWidget {
  const PassCheck({super.key});

  @override
  State<PassCheck> createState() => _PassCheckState();
}

class _PassCheckState extends State<PassCheck> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController passwordController = TextEditingController();

  void checkPassword() async {
    try {
      setState(() {
        isLoading = true;
      });
      bool isValid =
          await AuthRepo().checkIsPasswordValid(passwordController.text);
      await Future.delayed(const Duration(seconds: 2));

      if (isValid && context.mounted) {
        Navigator.of(context).pushNamed(
          '/main_screen/settings/update_profile/password_check/username_change',
        );
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
        loading: isLoading,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: const Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 32,
            ),
            title: const Text(
              'Password check',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: SafeArea(
              child: Form(
                  key: formKey,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Column(children: [
                      Flexible(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Text(
                                'To verify that you are the owner of the account, enter the password to change the username.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                                child: TextInput(
                                    inputBackground:
                                        Colors.grey.shade300.withOpacity(0.5),
                                    hintText: 'Enter your password',
                                    label: 'Password',
                                    isPassword: true,
                                    validate: (value) {
                                      if (!value!.isValidPassword) {
                                        return 'Enter valid password';
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icons.lock_outline,
                                    controller: passwordController))
                          ],
                        ),
                      ),
                      Button(
                          buttonText: 'Check password',
                          onPress: () {
                            if (formKey.currentState!.validate()) {
                              checkPassword();
                            }
                          },
                          disabled: false)
                    ]),
                  ))),
        ));
  }
}
