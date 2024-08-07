import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/call_log/widget/call.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({super.key, this.name = "Unknown"});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Call(
      isAudioCall: false,
      name: name,
    );
  }
}
