// ignore_for_file: file_names
import 'package:flutter/material.dart';

class TeleoperatedValues {
  static TextEditingController coralLeftL1 = TextEditingController(text: "0");
  static TextEditingController coralLeftL2 = TextEditingController(text: "0");
  static TextEditingController coralLeftL3 = TextEditingController(text: "0");
  static TextEditingController coralLeftL4 = TextEditingController(text: "0");
  static TextEditingController coralRightL1 = TextEditingController(text: "0");
  static TextEditingController coralRightL2 = TextEditingController(text: "0");
  static TextEditingController coralRightL3 = TextEditingController(text: "0");
  static TextEditingController coralRightL4 = TextEditingController(text: "0");
  static TextEditingController coralMissed = TextEditingController(text: "0");
  static TextEditingController algaeRemoved = TextEditingController(text: "0");
  static TextEditingController algaeProcessor =
      TextEditingController(text: "0");
  static TextEditingController algaeBarge = TextEditingController(text: "0");
  static TextEditingController humanPlayerMisses =
      TextEditingController(text: "0");
  static TextEditingController fieldCrosses = TextEditingController(text: "0");

  static void resetTeleopValues() {
    TeleoperatedValues.coralLeftL1.text = "0";
    TeleoperatedValues.coralLeftL2.text = "0";
    TeleoperatedValues.coralLeftL3.text = "0";
    TeleoperatedValues.coralLeftL4.text = "0";
    TeleoperatedValues.coralRightL1.text = "0";
    TeleoperatedValues.coralRightL2.text = "0";
    TeleoperatedValues.coralRightL3.text = "0";
    TeleoperatedValues.coralRightL4.text = "0";
    TeleoperatedValues.coralMissed.text = "0";
    TeleoperatedValues.algaeRemoved.text = "0";
    TeleoperatedValues.algaeProcessor.text = "0";
    TeleoperatedValues.algaeBarge.text = "0";
    TeleoperatedValues.humanPlayerMisses.text = "0";
    TeleoperatedValues.fieldCrosses.text = "0";
  }
}
