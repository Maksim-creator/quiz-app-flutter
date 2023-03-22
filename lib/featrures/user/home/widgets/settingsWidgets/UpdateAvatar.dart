import 'dart:convert';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../assets/colors.dart';
import '../../../../auth/bloc/auth_bloc.dart';

class UpdateAvatarWidget extends StatefulWidget {
  final String avatar;
  final bool isLoading;

  const UpdateAvatarWidget(
      {super.key, required this.avatar, required this.isLoading});

  @override
  State<UpdateAvatarWidget> createState() => _UpdateAvatarWidgetState();
}

class _UpdateAvatarWidgetState extends State<UpdateAvatarWidget> {
  final ImagePicker picker = ImagePicker();

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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: ColorConstants.lightViolet,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.isLoading
              ? SizedBox(
                  width: Device.get().isTablet ? 120 : 60,
                  height: Device.get().isTablet ? 120 : 60,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: ColorConstants.violet,
                    ),
                  ),
                )
              : ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    width: Device.get().isTablet ? 120 : 60,
                    height: Device.get().isTablet ? 120 : 60,
                    color: Colors.white,
                    child: Image.memory(
                      base64Decode(widget.avatar),
                      width: Device.get().isTablet ? 120 : 60,
                      height: Device.get().isTablet ? 120 : 60,
                      fit: BoxFit.cover,
                    ),
                  )),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: ColorConstants.violet),
              onPressed: getImage,
              child: const Text(
                'Update',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
