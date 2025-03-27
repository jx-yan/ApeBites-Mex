import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

// ignore: must_be_immutable
class DateRangePickerButton extends StatefulWidget {
  const DateRangePickerButton({
    super.key,
  });

  @override
  State<DateRangePickerButton> createState() => _DateRangePickerButtonState();
}

class _DateRangePickerButtonState extends State<DateRangePickerButton> {
  DateTimeRange? selectedDates = DateTimeRange(
      start: DateTime.now().toLocal(), end: DateTime.now().toLocal());

  String get startDateString {
    return '${selectedDates!.start.day}/${selectedDates!.start.month}/${selectedDates!.start.year}';
  }

  String get endDateString {
    return '${selectedDates!.end.day}/${selectedDates!.end.month}/${selectedDates!.end.year}';
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
          final DateTimeRange? dateTimeRange = await showDateRangePicker(
            context: context,
            firstDate: DateTime.now().subtract(const Duration(days: 365)),
            lastDate: DateTime.now(),
          );
          if (dateTimeRange != null) {
            setState(() {
              selectedDates = dateTimeRange;
            });
          }
        },
        child: Container(
          padding: const EdgeInsets.all(5),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const HeroIcon(
                  HeroIcons.calendarDays,
                  style: HeroIconStyle.solid,
                  color: kPrimaryBoldest,
                  size: 20,
                ),
              ),
              Row(
                children: [
                  Text(selectedDates != null ? startDateString : "Select Date",
                      style: const TextStyle(
                          color: kPrimaryBoldest, fontSize: 16)),
                  const SizedBox(width: 10),
                  const Text("-",
                      style: TextStyle(color: kPrimaryBoldest, fontSize: 14)),
                  const SizedBox(width: 10),
                  Text(selectedDates != null ? endDateString : "Select Date",
                      style: const TextStyle(
                          color: kPrimaryBoldest, fontSize: 16)),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: const HeroIcon(
                  HeroIcons.chevronRight,
                  style: HeroIconStyle.solid,
                  color: kPrimaryBoldest,
                  size: 20,
                ),
              ),
            ],
          ),
        ));
  }
}
