import 'package:flutter/cupertino.dart';

class ActivityIndicator extends StatelessWidget {
  const ActivityIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: CupertinoColors.darkBackgroundGray,
      child: Center(
        child: CupertinoActivityIndicator(
          radius: 50,
          animating:
              true, // user can be get false value of animating so loading animation is stoped.
          color: CupertinoColors.link,
        ),
      ),
    );
  }
}
