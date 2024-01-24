// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:scouting_platform/builders/routePage.dart';
import 'package:scouting_platform/textStyles/title.dart';

class settingsRoute extends StatefulWidget {
  const settingsRoute({
    Key? key,
  }) : super(key: key);

  @override
  _settingsRoute createState() => _settingsRoute();
}

class _settingsRoute extends State<settingsRoute> {

 

  @override
  Widget build(BuildContext context) {
    return const RoutePage(title: "Settings", 
    body: Center(
    child: Column(
      children: [
        TitleStyle(text: "Hi Ian", padding: EdgeInsets.only(left: 40, top: 10))
       
      
      ],
    )
    )
    );
  }
}

