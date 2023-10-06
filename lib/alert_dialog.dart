import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cupertino_button.dart';

class Alertdialog extends StatelessWidget {
  const Alertdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        border: Border(
          bottom: BorderSide(
            color: CupertinoColors.black,
          ),
        ),
        middle: Text(
          'Flutter Mapp',
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('CupertinoAlertDialog'),
          onPressed: () {
            showCupertinoDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: const Text(
                    'ALERT',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  content: const Text(
                    'Are you lier?',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  actions: <CupertinoDialogAction>[
                    CupertinoDialogAction(
                      isDestructiveAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'No',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    CupertinoDialogAction(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Button(),
                          ),
                        );
                      },
                      child: const Text(
                        'Yes',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
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
