import 'package:flutter/material.dart';
import 'package:apebites_mex/styles/styles.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:intl/intl.dart';

class Receipt {
  final String orderNumber;
  final DateTime orderDateTime;
  final String orderStatus;
  final double bagPrice;
  final int bagsNum;
  final double subtotal;
  final double serviceFees;
  final double gst;
  final double orderTotal;
  final DateTime reserveDateTime;
  final DateTime cancelDateTime;
  final DateTime collectDateTime;

  Receipt(
    this.reserveDateTime,
    this.subtotal,
    this.serviceFees,
    this.gst,
    this.cancelDateTime,
    this.collectDateTime,
    this.orderStatus,
    this.orderTotal,
    this.bagsNum,
    this.bagPrice,
    this.orderDateTime, {
    required this.orderNumber,
  });

  String get formattedOrderTotalString {
    return "\$${orderTotal.toStringAsFixed(2)}";
  }

  String get reserveDateTimeString {
    String formattedOrderMonth = DateFormat.yMMM().format(orderDateTime);
    String formattedOrderHourMins = DateFormat.jm().format(orderDateTime);
    return '${orderDateTime.day} $formattedOrderMonth, $formattedOrderHourMins';
  }

  String get cancelDateTimeString {
    String formattedCancelOrderMonth = DateFormat.yMMM().format(cancelDateTime);
    String formattedCancelOrderHourMins =
        DateFormat.jm().format(cancelDateTime);
    return '${cancelDateTime.day} $formattedCancelOrderMonth, $formattedCancelOrderHourMins';
  }

  String get collectDateTimeString {
    String formattedCollectOrderMonth =
        DateFormat.yMMM().format(collectDateTime);
    String formattedCollectOrderHourMins =
        DateFormat.jm().format(collectDateTime);
    return '${collectDateTime.day} $formattedCollectOrderMonth, $formattedCollectOrderHourMins';
  }
}

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({
    super.key,
    required this.orderNumber,
  });

  final String orderNumber;

  @override
  State<StatefulWidget> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 5,
        leadingWidth: 100,
        leading: Stack(children: [
          Positioned(
              top: 15,
              left: 15,
              child: IconButton(
                onPressed: () => context.pop(),
                icon: const HeroIcon(HeroIcons.arrowLeft,
                    color: kPrimaryBoldest, size: 24),
              ))
        ]),
        title: Container(
          margin: const EdgeInsets.only(top: 30, bottom: 15),
          child: const Text(
            'Receipt',
            style: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: kPrimaryBoldest),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Text(
                  widget.orderNumber,
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

