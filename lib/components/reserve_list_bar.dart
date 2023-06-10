import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:apebites_mex/screens/home/receipt_screen.dart';
import 'package:intl/intl.dart';

class ReservationListBar extends StatelessWidget {
  const ReservationListBar({
    super.key,
    required this.orderNumber,
    required this.orderDateTime,
    required this.orderTotal,
    required this.bagsNum,
    this.isLargeOrder,
  });

  final bool? isLargeOrder;
  final String orderNumber;
  final DateTime orderDateTime;
  final int bagsNum;
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

  String get orderTimeString {
    return '${orderDateTime.day} ${formattedOrderMonth()}, ${formattedOrderHourMins()}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        margin: const EdgeInsets.only(left: 25, right: 25, top: 15),
        decoration: customBoxDecoration(),
        child: TextButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return ReceiptScreen(
                  orderNumber: orderNumber,
                );
              },
            ),
          ),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 15,
                  left: 15,
                  child: Text(
                    orderTimeString,
                    style: const TextStyle(
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w300,
                        color: kPrimaryBoldest),
                  )),
              if (isLargeOrder == true) const LargeOrderMarker(),
              Positioned(
                  top: 40,
                  left: 15,
                  child: Row(
                    children: [
                      Text(
                        orderNumber,
                        style: const TextStyle(
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: kFontColorDefault),
                      ),
                      const SizedBox(width: 80),
                      RichText(
                        text: TextSpan(
                          text: '$bagsNum',
                          style: const TextStyle(
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: kFontColorDefault),
                          children: const <TextSpan>[
                            TextSpan(
                                text: ' Bags',
                                style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: kFontColorDefault)),
                          ],
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  top: 40,
                  right: 15,
                  child: Text(
                    formattedOrderTotal(),
                    style: const TextStyle(
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: kFontColorDefault),
                  )),
            ],
          ),
        ));
  }
}

class LargeOrderMarker extends StatelessWidget {
  const LargeOrderMarker({
    super.key,
  });

  @override
  Widget build(context) {
    return Positioned(
        right: 0,
        child: Container(
          height: 30,
          width: 80,
          decoration: const BoxDecoration(
              color: kPrimaryBoldest,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              )),
          child: const Center(
            child: Text(
              'Large',
              style: TextStyle(
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Colors.white),
            ),
          ),
        ));
  }
}
