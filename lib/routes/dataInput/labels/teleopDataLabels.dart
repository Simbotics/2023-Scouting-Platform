// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Row2Labels extends StatefulWidget {
  const Row2Labels({
    Key? key,
  }) : super(key: key);

  @override
  _Row2labelsState createState() => _Row2labelsState();
}

class _Row2labelsState extends State<Row2Labels> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
          //Speaker Scored
          Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 170.0,
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: 
                const Text(
                  "Speaker Scored",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                
                ),
              ) 
          ),
          //speaker missed
          Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 170.0,
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: 
                const Text(
                  "Speaker Missed",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                
                ),
              ) 
          ),
          //amp scored
          Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 170.0,
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: 
                const Text(
                  "Amp Scored",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                
                ),
              ) 
          ),
          // Amp missed
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 170.0,
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 30.0),
            child: 
                const Text(
                  "Amp Missed",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                
                ),
              ) 
          ),
        
        const Divider(),
        ],
    );
  }
}