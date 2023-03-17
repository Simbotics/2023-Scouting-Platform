import 'dart:async';

import 'package:scouting_platform/textStyles/title.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:scouting_platform/routes/nav/navigationSidebar.dart';
import 'package:scouting_platform/sections/autoScoutingData.dart';
import 'package:scouting_platform/sections/teamMatchInformation.dart';
import 'package:scouting_platform/sections/teleopScoutingData.dart';
import 'package:scouting_platform/textStyles/header.dart';
import 'package:scouting_platform/ui/style/style.dart';
import 'package:scouting_platform/builders/dropdownMenu.dart';
import 'package:scouting_platform/builders/numberInputField.dart';
import 'package:scouting_platform/builders/textInputField.dart';

import '../main.dart';
import 'comments.dart';

class TeamAndMatchInformation extends StatefulWidget {
  const TeamAndMatchInformation({Key? key}) : super(key: key);

  @override
  State<TeamAndMatchInformation> createState() =>
      _TeamAndMatchInformationState();
}

class _TeamAndMatchInformationState extends State<TeamAndMatchInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Navigation sidebar
      drawer: const NavigationSidebar(),
      // Background color and pixel resize fix
      backgroundColor: AppStyle.primaryColor,
      //resizeToAvoidBottomInset: true,

      // Top navigation bar
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: AppStyle.textInputColor,
            title: const Text(
              "Scouting Platform - 2023",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Futura'),
            ),
          )),

      body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const TitleStyle(
                  text: "Team & Match Information",
                  padding: EdgeInsets.only(left: 10.0)),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 170.0,
                  padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                  child: const Text(
                    "Match Number",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ),
              ),
              NumberInputField(
                controller: TeamAndMatchData.matchNumberController,
                hintText: "Match Number",
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 200.0,
                  padding: const EdgeInsets.only(left: 10.0, top: 20),
                  child: const Text(
                    "Alliance Colour",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ),
              ),
              ScoutingDropdownMenu(
                  width: 150.0,
                  margin: const EdgeInsets.only(left: 10.0),
                  dropdownMenuSelectedItem: TeamAndMatchData.teamAlliance,
                  onChanged: (value) {
                    setState(() {
                      TeamAndMatchData.teamAlliance = value;
                    });
                  },
                  dropdownItems: const ['Red', 'Blue']),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 170.0,
                  padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                  child: const Text(
                    "Team Number",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ),
              ),
              NumberInputField(
                controller: TeamAndMatchData.teamNumberController,
                hintText: "Team Number",
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 170.0,
                  padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                  child: const Text(
                    "Scout Initials",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ),
              ),
              TextInputField(
                  margin: EdgeInsets.only(left: 10),
                  onChanged: (value) {
                    setState(() {
                      TeamAndMatchData.initialsController.text = value;
                    });
                  },
                  textAlign: TextAlign.center,
                  hintText: "Scout Initials"),
              SizedBox(height: 30.0),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      padding: const EdgeInsets.only(top: 4.0, right: 13),
                      height: 47.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppStyle
                              .textInputColorLight, // Set the background color here
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomeScreen();
                          }));
                        },
                        child: const Text(
                          'Auto/Teleop >',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      )))
            ],
          )),
    );
  }
}
