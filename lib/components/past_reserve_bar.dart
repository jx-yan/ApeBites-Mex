import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:intl/intl.dart';
import 'package:apebites_mex/screens/home/receipt_screen.dart';

class PastReserveListBar extends StatelessWidget {
  PastReserveListBar({
    super.key,
    required this.status,
    required this.orderNumber,
    required this.orderDateTime,
    required this.orderTotal,
  });

  final String status;
  final String orderNumber;
  final DateTime orderDateTime;
  final double orderTotal;

  String formattedOrderTotal() {
    return "\$${orderTotal.toStringAsFixed(2)}";
  }

  String formattedOrderMonth() {
    return DateFormat.yMMM().format(orderDateTime);
  }

  String formattedOrderHourMins() {
    return DateFormat.jm().format(orderDateTime);
  }

  String get orderDateTimeString {
    return '${orderDateTime.day} ${formattedOrderMonth()}, ${formattedOrderHourMins()}';
  }

  final checkedIcon = Container(
      margin: const EdgeInsets.only(left: 5, right: 15, top: 10, bottom: 10),
      child: const HeroIcon(
        HeroIcons.checkCircle,
        style: HeroIconStyle.solid,
        color: kPrimaryDefault,
        size: 30,
      ));

  final crossedIcon = Container(
      margin: const EdgeInsets.only(left: 5, right: 15, top: 10, bottom: 10),
      child: const HeroIcon(HeroIcons.xCircle,
          style: HeroIconStyle.solid, color: Colors.red, size: 30));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
      child: TextButton(
          onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ReceiptScreen(orderNumber: orderNumber,);
                  },
                ),
              ),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Row(children: [
            if (status == 'completed') checkedIcon,
            if (status == 'cancelled') crossedIcon,
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderNumber,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: kFontColorDefault),
                ),
                const SizedBox(height: 5),
                Text(
                  orderDateTimeString,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w300,
                      color: kPrimaryBoldest),
                ),
              ],
            ),
            const Spacer(flex: 1),
            if (status == 'completed')
              Text(
                formattedOrderTotal(),
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: kFontColorDefault),
              ),
            if (status == "cancelled")
              Text(
                '-${formattedOrderTotal()}',
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: kFontColorDefault),
              ),
            const SizedBox(
              width: 10,
            ),
            const HeroIcon(HeroIcons.chevronRight,
                color: kPrimaryBoldest, size: 24),
            const SizedBox(
              width: 10,
            ),
          ])),
    );
  }
}
