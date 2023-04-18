import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import '../../../../../assets/colors.dart';

class UpdateUsernameWidget extends StatefulWidget {
  final String username;

  const UpdateUsernameWidget({super.key, required this.username});

  @override
  State<UpdateUsernameWidget> createState() => _UpdateUsernameWidgetState();
}

class _UpdateUsernameWidgetState extends State<UpdateUsernameWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: Device.get().isTablet ? 125 : 65,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: ColorConstants.lightViolet,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              children: [
                const Text(
                  'Username: ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Flexible(
                    child: Text(
                  widget.username,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16),
                ))
              ],
            ),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: ColorConstants.violet),
              onPressed: () => Navigator.of(context).pushNamed(
                    '/main_screen/settings/update_profile/password_check',
                  ),
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
