import 'dart:convert';
import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/friends/widgets/FriendsModal.dart';
import 'package:quizz_app/featrures/user/utils/helpers.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  final String baseAvatar = 'lib/assets/baseAvatar.png';
  final ImagePicker picker = ImagePicker();
  final storage = const FlutterSecureStorage();

  Future getImage() async {
    try {
      var img = await picker.pickImage(source: ImageSource.gallery);

      if (img != null && context.mounted) {
        File file = File(img.path);

        context.read<AuthBloc>().add(AuthEvent.uploadAvatar(avatar: file));
      }
    } catch (e) {
      throw Exception();
    }
  }

  Future<dynamic> getReviewedFriendRequests() async {
    final storageRequestsGot = await storage.read(key: 'requestsGot');
    if (storageRequestsGot != null) {
      final decoded = jsonDecode(storageRequestsGot);

      return decoded;
    } else {
      return [];
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
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
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  baseAvatar,
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
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
                            style: const TextStyle(
                                color: Colors.white, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                FutureBuilder(
                    future: getReviewedFriendRequests(),
                    builder: (context, snapshot) {
                      dynamic mydata = json.decode((snapshot.data.toString()));
                      if (snapshot.hasError) {
                        return const SizedBox.shrink();
                      } else {
                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            mydata == null
                                ? const CircularProgressIndicator()
                                : mydata.length == 0
                                    ? const SizedBox.shrink()
                                    : Positioned(
                                        top: -7,
                                        right: -7,
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                              color: Colors.red.shade500,
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: Text(
                                            mydata.length.toString(),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11),
                                          ),
                                        )),
                            Center(
                              child: Ink(
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.group_add_rounded),
                                  color: Colors.white,
                                  onPressed: () => showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const FriendsModal(),
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      }
                    }),
              ],
            );
    });
  }
}
