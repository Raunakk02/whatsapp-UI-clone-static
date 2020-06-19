import 'package:flutter/material.dart';

class DefaultDP extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(
        bottom: 2,
        top: 2,
        right: 6,
      ),
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.blueGrey[100],
          ),
          Positioned(
            top: 8,
            child: Icon(
              Icons.person,
              size: 57,
              color: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey[100], width: 1),
              shape: BoxShape.circle,
            ),
            height: 56,
            width: 56,
          ),
        ],
      ),
    );
  }
}
