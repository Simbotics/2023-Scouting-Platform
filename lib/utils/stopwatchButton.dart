import 'package:scouting_platform/main.dart';
import 'package:scouting_platform/ui/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StopwatchButton extends StatelessWidget {
  final String variable;
  final String text;
  final Function stopwatchMethod;

  const StopwatchButton({
    Key? key,
    required this.variable,
    required this.text,
    required this.stopwatchMethod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      child: ElevatedButton(
        child: Text(text,
            style: TextStyle(fontSize: 16.0, fontFamily: "Helvetica")),
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(150.0, 47.0),
            backgroundColor: AppStyle.textInputColorLight),
        onPressed: () {
          stopwatchMethod();
          //print("pressed");
        },
      ),
    );
  }
}
