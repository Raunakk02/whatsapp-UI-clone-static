import 'package:flutter/material.dart';

import '../data/dummy_data.dart';

import '../models/chat.dart';

import '../widgets/default_dp.dart';
import '../widgets/chat_list_content.dart';

class ChatList extends StatefulWidget {
  final appBarSize;

  ChatList(this.appBarSize);

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
final List<Chat> userChats = dummyChats;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height -
          MediaQuery.of(context).padding.top -
          widget.appBarSize-20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      DefaultDP(),
                      ChatListContent(
                        userChats[index].title,
                        userChats[index].subtitle,
                        userChats[index].date,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                indent: 100,
                height: 0,
                thickness: 1,
                endIndent: 10,
              ),
            ],
          );
        },
        itemCount: userChats.length,
      ),
    );
  }
}
