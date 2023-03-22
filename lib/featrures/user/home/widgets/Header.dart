import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/user/utils/helpers.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  final String baseAvatar = 'lib/assets/baseAvatar.png';
  final ImagePicker picker = ImagePicker();

  Future getImage() async {
    try {
      var img = await picker.pickImage(source: ImageSource.gallery);

      if (img != null) {
        File file = File(img.path);

        context.read<AuthBloc>().add(AuthEvent.uploadAvatar(avatar: file));
      }
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Widget build(BuildContext context) {
    Greeting greetingMessage = defineTimePeriod(DateTime.now().hour);
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return state.isLoading || state.isAvatarLoading
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                  backgroundColor: ColorConstants.darkViolet,
                ),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          greetingMessage.icon,
                          color: ColorConstants.lightPink,
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text(
                            greetingMessage.greeting,
                            style: TextStyle(
                              color: ColorConstants.lightPink,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        state.name,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    )
                  ],
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      side: const BorderSide(color: Colors.transparent)),
                  onPressed: () {
                    getImage();
                  },
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: state.avatar.isNotEmpty
                          ? Image.memory(
                              base64Decode(state.avatar),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              baseAvatar,
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            )),
                ),
              ],
            );
    });
  }
}
