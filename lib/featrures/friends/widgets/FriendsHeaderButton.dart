import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'FriendsModal.dart';

class FriendsHeaderButton extends StatelessWidget {
  const FriendsHeaderButton({super.key});

  final storage = const FlutterSecureStorage();

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
    return FutureBuilder(
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
                                  borderRadius: BorderRadius.circular(100)),
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
                        builder: (BuildContext context) => const FriendsModal(),
                      ),
                    ),
                  ),
                )
              ],
            );
          }
        });
  }
}
