import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  static const routeName = '/status';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/p2.jpeg'),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Stack(
                  children: [
                    Positioned(
                      top: 4,
                      left: 4,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.add_circle,
                      color: Color(0xFF25D366),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          title: Text(
            'My status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Tap to add status update'),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: Colors.blueGrey[50],
          child: Text(
            'Recent updates',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }
}
