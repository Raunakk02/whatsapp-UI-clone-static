import 'package:flutter/material.dart';

import '../screens/calls_screen.dart';
import '../screens/chats_screen.dart';
import '../screens/status_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int tabIndex = 1;

  IconData get fabIcon {
    switch (tabIndex) {
      case 1:
        return Icons.message;
        break;
      case 2:
        return Icons.camera_alt;
        break;
      case 3:
        return Icons.add_call;
        break;
      default:
        return Icons.add;
    }
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text('WhatsApp'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Colors.white,
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
          color: Colors.white,
        )
      ],
      elevation: 0,
      bottom: TabBar(        
        onTap: (curIndex) {
          setState(() {
            tabIndex = curIndex;
          });
        },
        tabs: [
          Tab(
            child: Container(
              height: 40,
              width: 40,
              child: Icon(Icons.camera_alt),
            ),
          ),
          Tab(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              child: Text('CHATS'),
            ),
          ),
          Tab(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              child: Text('STATUS'),
            ),
          ),
          Tab(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              child: Text('CALLS'),
            ),
          )
        ],
        indicatorColor: Colors.white,
        indicatorWeight: 4,
      ),
    );

    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: appBar,
        body: TabBarView(children: [
          Center(
            child: Text('Camera'),
          ),
          Center(
            child: ChatScreen(appBar.preferredSize.height),
          ),
          Center(
            child: StatusScreen(),
          ),
          Center(
            child: CallsScreen(),
          ),
        ]),
        floatingActionButton: tabIndex != 0
            ? FloatingActionButton(
                onPressed: () {},
                backgroundColor: Color(0xFF25D366),
                child: Icon(fabIcon),
              )
            : null,
      ),
    );
  }
}
