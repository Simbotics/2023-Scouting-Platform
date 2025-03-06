// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:scouting_platform/builders/bases/CounterNumberField.dart';
import 'package:scouting_platform/builders/bases/PlatformDropdownMenu.dart';
import 'package:scouting_platform/utils/data/constants/OptionConstants.dart';
import 'package:scouting_platform/utils/data/values/EndgameValues.dart';
import 'package:scouting_platform/utils/data/values/TeleoperatedValues.dart';

class TeleoperatedFields4 extends StatefulWidget {
  const TeleoperatedFields4({
    super.key,
  });

  @override
  State<TeleoperatedFields4> createState() => _TeleoperatedFields4State();
}

class _TeleoperatedFields4State extends State<TeleoperatedFields4> {
  /// Increments an integer in a controllers value by one
  void incrementNumber(TextEditingController controller) {
    if (!mounted) return;

    int currentValue = int.parse(controller.text);
    setState(() {
      currentValue++;
      controller.text = currentValue.toString();
    });
  }

  /// Decrements an integer in a controllers value by one unless it's 0
  void decrementNumber(TextEditingController controller) {
    if (!mounted) return;

    int currentValue = int.parse(controller.text);
    setState(() {
      currentValue--;
      controller.text = (currentValue > 0 ? currentValue : 0).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //coral l4 Left
        CounterNumberField(
            controller: TeleoperatedValues.coralLeftL4,
            onTapDecrement: () =>
                decrementNumber(TeleoperatedValues.coralLeftL4),
            onTapIncrement: () =>
                incrementNumber(TeleoperatedValues.coralLeftL4)),
        // coral far l4
        CounterNumberField(
            controller: TeleoperatedValues.coralRightL4,
            onTapDecrement: () =>
                decrementNumber(TeleoperatedValues.coralRightL4),
            onTapIncrement: () =>
                incrementNumber(TeleoperatedValues.coralRightL4)),
        //algae barge
        CounterNumberField(
            controller: TeleoperatedValues.algaeBarge,
            onTapDecrement: () =>
                decrementNumber(TeleoperatedValues.algaeBarge),
            onTapIncrement: () =>
                incrementNumber(TeleoperatedValues.algaeBarge)),
        //field crosses
        CounterNumberField(
            controller: TeleoperatedValues.fieldCrosses,
            onTapDecrement: () =>
                decrementNumber(TeleoperatedValues.fieldCrosses),
            onTapIncrement: () =>
                incrementNumber(TeleoperatedValues.fieldCrosses)),
        //endgame dropdown
        PlatformDropdownMenu(
            dropdownMenuSelectedItem: EndgameValues.endgame.text,
            onChanged: (value) {
              setState(() {
                EndgameValues.endgame.text = value;
              });
            },
            dropdownItems: OptionConstants.endgameOptions,
            margin: const EdgeInsets.only(left: 20)),
      ],
    );
  }
}
