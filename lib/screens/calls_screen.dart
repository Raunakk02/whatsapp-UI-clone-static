import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CallsScreen extends StatelessWidget {
  static const routeName = '/calls';

  Widget buildCallsListTile({
    BuildContext context,
    String title,
    String imageUrl,
    IconData subtitleIcon,
    Color subtitleIconColor,
  }) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 10,
            left: 16,
            right: 16,
          ),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageUrl),
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          subtitle: Row(
            children: [
              Icon(
                subtitleIcon,
                color: subtitleIconColor,
              ),
              Text('${DateFormat.yMMMd().format(DateTime.now())}'),
            ],
          ),
          trailing: IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
          ),
        ),
        Divider(
          indent: 90,
          height: 0,
          thickness: 1,
          endIndent: 10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildCallsListTile(
          context: context,
          imageUrl: 'assets/images/p1.jpg',
          subtitleIcon: Icons.call_made,
          subtitleIconColor: Colors.green,
          title: 'Marrie Anne'
        ),
        buildCallsListTile(
          context: context,
          imageUrl: 'assets/images/p2.jpeg',
          subtitleIcon: Icons.call_received,
          subtitleIconColor: Colors.green,
          title: 'Andrew Cagney'
        ),
        buildCallsListTile(
          context: context,
          imageUrl: 'assets/images/p3.jpeg',
          subtitleIcon: Icons.call_made,
          subtitleIconColor: Colors.red,
          title: 'David Warner'
        ),
        buildCallsListTile(
          context: context,
          imageUrl: 'assets/images/p4.jpg',
          subtitleIcon: Icons.call_received,
          subtitleIconColor: Colors.red,
          title: 'Prince Charles'
        ),
        buildCallsListTile(
          context: context,
          imageUrl: 'assets/images/p4.jpg',
          subtitleIcon: Icons.call_received,
          subtitleIconColor: Colors.green,
          title: 'Prince Charles'
        ),
        buildCallsListTile(
          context: context,
          imageUrl: 'assets/images/p5.jpeg',
          subtitleIcon: Icons.call_received,
          subtitleIconColor: Colors.green,
          title: 'Elisa Walls'
        ),
      ],
    );
  }
}
