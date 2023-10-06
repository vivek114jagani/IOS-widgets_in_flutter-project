import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'activity_indicator.dart';
import 'alert_dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          'IOS Page',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text(
            'cupertino Action Sheet',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black87,
            ),
          ),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) {
                return CupertinoActionSheet(
                  title: const Text(
                    'Flutter Map',
                    style: TextStyle(
                      fontSize: 15,
                      color: CupertinoColors.black,
                    ),
                  ),
                  message: const Text('Your Message'),
                  actions: <CupertinoActionSheetAction>[
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Alertdialog(),
                          ),
                        );
                      },
                      child: const Text('Cupertino Alert Dialog'),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ActivityIndicator(),
                          ),
                        );
                      },
                      child: const Text('Cupertino Activity Indicator'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
