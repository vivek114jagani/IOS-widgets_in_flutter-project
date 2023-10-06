import 'package:flutter/cupertino.dart';

class DatePickeR extends StatefulWidget {
  const DatePickeR({super.key});

  @override
  State<DatePickeR> createState() => _DatePickeRState();
}

class _DatePickeRState extends State<DatePickeR> {
  DateTime dateTime = DateTime(3000, 2, 1, 10, 20);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text(
            '${dateTime.day} - ${dateTime.month} - ${dateTime.year}',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          // child: const Text('Cupertino Date Picker'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  backgroundColor: CupertinoColors.white,
                  initialDateTime: dateTime,
                  onDateTimeChanged: (DateTime newTime) {
                    setState(() => dateTime = newTime);
                  },
                  use24hFormat: true,
                  mode: CupertinoDatePickerMode.dateAndTime,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
