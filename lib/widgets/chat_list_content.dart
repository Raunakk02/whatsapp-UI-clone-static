import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatListContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final DateTime date;

  ChatListContent(this.title, this.subtitle, this.date);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      subtitle,
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                child: Text(
                  DateFormat.yMd().format(date),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
