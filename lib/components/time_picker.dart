import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:time_range_picker/time_range_picker.dart';

// ignore: must_be_immutable
class TimePickerButton extends StatefulWidget {
  const TimePickerButton({
    super.key,
  });

  @override
  State<TimePickerButton> createState() => _TimePickerButtonState();
}

class _TimePickerButtonState extends State<TimePickerButton> {
  final TimeOfDay _startTime = TimeOfDay.fromDateTime(DateTime.now().toLocal());
  final TimeOfDay _endTime =
      TimeOfDay.fromDateTime(DateTime.now().toLocal().add(const Duration(hours: 1)));

  String get startTimeString {
    return _startTime.format(context);
  }

  String get endTimeString {
    return _endTime.format(context);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(2),
      ),
      onPressed: () async {
        TimeRange? result = await showTimeRangePicker(
            use24HourFormat: true,
            context: context,
            start: _startTime,
            end: _endTime,
            disabledTime: TimeRange(
                startTime: const TimeOfDay(hour: 23, minute: 0),
                endTime: const TimeOfDay(hour: 5, minute: 0)),
            disabledColor: Colors.red.withOpacity(0.5),
            strokeWidth: 4,
            ticks: 24,
            ticksOffset: -7,
            ticksLength: 15,
            ticksColor: Colors.grey,
            labels: [
              "12 am",
              "3 am",
              "6 am",
              "9 am",
              "12 pm",
              "3 pm",
              "6 pm",
              "9 pm"
            ].asMap().entries.map((e) {
              return ClockLabel.fromIndex(idx: e.key, length: 8, text: e.value);
            }).toList(),
            labelOffset: 35,
            rotateLabels: false,
            padding: 60);

        if (kDebugMode) {
          print("result $result");
        }
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        alignment: Alignment.center,
        child: Row(
          children: [
            const Spacer(),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(startTimeString,
                      style: const TextStyle(
                          color: kPrimaryBoldest, fontSize: 16)),
                  const SizedBox(width: 10),
                  const Text("-",
                      style: TextStyle(color: kPrimaryBoldest, fontSize: 16)),
                  const SizedBox(width: 10),
                  Text(endTimeString,
                      style: const TextStyle(
                          color: kPrimaryBoldest, fontSize: 16)),
                ],
            ),
            const Spacer(),
            const HeroIcon(HeroIcons.chevronRight, color: kPrimaryBoldest)
          ],
        )
      ),
    );
  }
}
