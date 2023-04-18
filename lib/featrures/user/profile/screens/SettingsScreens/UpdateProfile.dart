import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';

import '../../widgets/SettingsWidgets/UpdateAvatar.dart';
import '../../widgets/SettingsWidgets/UpdateUsername.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () =>
                Navigator.of(context).pushNamed('/main_screen/settings'),
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 32,
            )),
        title: const Text(
          'Update profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: state.isLoading
                  ? Center(
                      child: CircularProgressIndicator(
                        color: ColorConstants.violet,
                      ),
                    )
                  : Column(
                      children: [
                        UpdateAvatarWidget(
                            avatar: state.avatar,
                            isLoading: state.isAvatarLoading),
                        UpdateUsernameWidget(username: state.name),
                      ],
                    ));
        },
      ),
    );
  }
}
