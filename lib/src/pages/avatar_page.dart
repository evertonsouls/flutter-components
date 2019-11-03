import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  'https://amp.businessinsider.com/images/5d4ae5ea100a2411da63051d-750-562.jpg'),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
