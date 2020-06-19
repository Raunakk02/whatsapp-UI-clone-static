import 'package:flutter/material.dart';

import '../widgets/chats_list.dart';

class ChatScreen extends StatelessWidget {
  final double appBarHeight;

  ChatScreen(this.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ChatList(appBarHeight),
    );
  }
}
