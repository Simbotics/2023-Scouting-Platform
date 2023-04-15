// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Row2Headers extends StatefulWidget {
  const Row2Headers({
    Key? key,
  }) : super(key: key);

  @override
  _Row2HeadersState createState() => _Row2HeadersState();
}

class _Row2HeadersState extends State<Row2Headers> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Auto balance state
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 170.0,
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: const Text(
              "Auto Balance",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
          ),
        ),
        // Auto middle scored
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 170.0,
            padding: const EdgeInsets.only(top: 20.0),
            child: const Text(
              "Middle",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
          ),
        ),
        // Teleop cones middle scored
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 170.0,
            padding: const EdgeInsets.only(left: 62.0, top: 20.0),
            child: const Text(
              "Cones Mid",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
          ),
        ),
        // Teleop cubes middle scored
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 170.0,
            padding: const EdgeInsets.only(left: 62.0, top: 20.0),
            child: const Text(
              "Cubes Mid",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
          ),
        ),
        // Teleop time to balance
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 200.0,
            padding: const EdgeInsets.only(left: 62.0, top: 20.0),
            child: const Text(
              "Time To Balance",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
          ),
        ),
      ],
    );
  }
}
