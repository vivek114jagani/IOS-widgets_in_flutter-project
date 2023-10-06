// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'date_picker.dart';

class COntextMenu extends StatefulWidget {
  const COntextMenu({super.key});

  @override
  State<COntextMenu> createState() => _COntextMenuState();
}

class _COntextMenuState extends State<COntextMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('Exit'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Cupertino Date Picker'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DatePickeR(),
                    ),
                  );
                },
              ),
            ],
            child: Image.network(
              'https://www.91-cdn.com/hub/wp-content/uploads/2022/04/YouTube-videos-ad-free-1200x900.png',
            ),
          ),
        ),
      ),
    );
  }
}
