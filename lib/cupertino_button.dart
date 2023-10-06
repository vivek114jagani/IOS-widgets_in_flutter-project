import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'context_menu.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              child: const Text('Exit'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CupertinoButton.filled(
              borderRadius: BorderRadius.circular(50),
              // if user can not pop OR push any page in onPressed, so user can used .filled.
              child: const Text('Cupertino Context Menu'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const COntextMenu(),
                  ),
                );
              },
              // onPressed: null,
              // user can write null in onPressed, so buttonhase can be disabled.
            ),
          ],
        ),
      ),
    );
  }
}
