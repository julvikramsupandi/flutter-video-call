import 'package:flutter/material.dart';
import 'package:video_call_tutorial/config.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  final String username;
  const CallPage({Key? key, required this.username}) : super(key: key);
  final callID = 'call_id_1';

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Config
          .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: Config
          .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: username,
      userName: username,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
