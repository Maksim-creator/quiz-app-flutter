
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/auth/utils/validation.dart';
import 'package:quizz_app/widgets/Button.dart';
import 'package:quizz_app/widgets/LoadingOverlay.dart';

import '../../../../../widgets/TextInput.dart';

class UsernameChange extends StatefulWidget {
  const UsernameChange({super.key});

  @override
  State<UsernameChange> createState() => _UsernameChangeState();
}

class _UsernameChangeState extends State<UsernameChange> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController nameController = TextEditingController();

  void changeUsername() {
    context.read<AuthBloc>().add(AuthEvent.updateUsername(
        username: nameController.text, context: context));

    Navigator.of(context).pushNamed('/main_screen/settings/update_profile');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return LoadingOverlay(
            loading: state.isUsernameLoading,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                leading: const Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                  size: 32,
                ),
                title: const Text(
                  'Username change',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
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
                                  'Here you can set your new account name. The name must not contain numbers or symbols. Be creative!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Flexible(
                                  child: TextInput(
                                      inputBackground:
                                          Colors.grey.shade300.withOpacity(0.5),
                                      hintText: 'Enter new username',
                                      label: 'Name',
                                      validate: (value) {
                                        if (!value!.isValidName) {
                                          return 'Enter valid name';
                                        }
                                        return null;
                                      },
                                      prefixIcon: Icons.person_outline,
                                      controller: nameController)),
                            ],
                          )),
                          Button(
                              buttonText: 'Change username',
                              onPress: () {
                                if (formKey.currentState!.validate()) {
                                  changeUsername();
                                }
                              },
                              disabled: false)
                        ]),
                      ))),
            ));
      },
    );
  }
}
