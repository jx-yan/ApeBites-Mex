import 'package:flutter/material.dart';
import 'package:apebites_mex/styles/styles.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:intl/intl.dart';

class Receipt {
  final String orderNumber;
  final DateTime? orderDateTime;
  final String? orderStatus;
  final double? bagPrice;
  final int? bagsNum;
  final double? subtotal;
  final double? serviceFees;
  final double? gst;
  final double? orderTotal;
  final DateTime? reserveDateTime;
  final DateTime? cancelDateTime;
  final DateTime? collectDateTime;

  Receipt({
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
    this.orderDateTime,
    required this.orderNumber,
  });

  String get formattedOrderTotalString {
    return orderTotal != null
        ? '\$${orderTotal?.toStringAsFixed(2)}'
        : '\$0.00';
  }

  String get reserveDateTimeString {
    String formattedOrderMonth =
        DateFormat.yMMM().format(orderDateTime!).toUpperCase();
    String formattedOrderHourMins = DateFormat.jm().format(orderDateTime!);
    return '${orderDateTime!.day} $formattedOrderMonth, $formattedOrderHourMins';
  }

  String get cancelDateTimeString {
    String formattedCancelOrderMonth =
        DateFormat.yMMM().format(cancelDateTime!);
    String formattedCancelOrderHourMins =
        DateFormat.jm().format(cancelDateTime!);
    return '${cancelDateTime?.day} $formattedCancelOrderMonth, $formattedCancelOrderHourMins';
  }

  String get collectDateTimeString {
    String formattedCollectOrderMonth =
        DateFormat.yMMM().format(collectDateTime!);
    String formattedCollectOrderHourMins =
        DateFormat.jm().format(collectDateTime!);
    return '${collectDateTime?.day} $formattedCollectOrderMonth, $formattedCollectOrderHourMins';
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
    Receipt receiptInView = Receipt(
      orderNumber: widget.orderNumber,
      orderDateTime: DateTime.now(),
      orderStatus: 'reserved',
      bagPrice: 2.50,
      bagsNum: 2,
      subtotal: 5.00,
      serviceFees: 0.50,
      gst: 0.35,
      orderTotal: 5.85,
      reserveDateTime: DateTime.now(),
      cancelDateTime: DateTime.now(),
      collectDateTime: DateTime.now(),
    );

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
      body: PageView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 30),
                // Order Number
                Text(
                  receiptInView.orderNumber,
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                // Order Status and DateTime
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'RESERVED ON',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: kPrimaryDefault),
                        ),
                        Text(
                          receiptInView.reserveDateTimeString,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: kPrimaryDefault),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
                if (receiptInView.orderStatus == 'cancelled')
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${receiptInView.orderStatus!.toUpperCase()} ON',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(245, 85, 56, 1)),
                          ),
                          Text(
                            receiptInView.cancelDateTimeString,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(245, 85, 56, 1)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                if (receiptInView.orderStatus == 'collected')
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${receiptInView.orderStatus!.toUpperCase()} ON',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 128, 74, 1)),
                          ),
                          Text(
                            receiptInView.collectDateTimeString,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 128, 74, 1)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                // Order Details
                const SizedBox(height: 15),
                const Divider(thickness: 1),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${receiptInView.bagsNum} x',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(width: 20),
                    Text('Surprise Bag',
                        style: Theme.of(context).textTheme.bodyMedium),
                    const Spacer(),
                    Text(
                      '\$${receiptInView.bagPrice?.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Divider(thickness: 1),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Subtotal',
                        style: Theme.of(context).textTheme.bodyMedium),
                    const Spacer(),
                    Text(
                      '\$${receiptInView.subtotal?.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Service Fees',
                        style: Theme.of(context).textTheme.bodyMedium),
                    const Spacer(),
                    Text(
                      '\$${receiptInView.serviceFees?.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('GST 8%',
                        style: Theme.of(context).textTheme.bodyMedium),
                    const Spacer(),
                    Text(
                      '\$${receiptInView.gst?.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Divider(thickness: 1),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Total',
                        style: Theme.of(context).textTheme.titleMedium),
                    const Spacer(),
                    Text(
                      '\$${receiptInView.orderTotal?.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                // Collection Buttons
                if (receiptInView.orderStatus == 'reserved')
                  Expanded(
                    child: Column(
                      children: [
                        const Spacer(),
                        SizedBox(
                            width: 350,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(48),
                                ),
                                padding: const EdgeInsets.all(15.0),
                                backgroundColor: kPrimaryBoldest,
                              ),
                              child: const Text(
                                'Collected',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            )),
                        const SizedBox(height: 35),
                        SizedBox(
                            width: 350,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(48),
                                ),
                                padding: const EdgeInsets.all(15.0),
                                backgroundColor: const Color.fromRGBO(245, 85, 56, 1),
                              ),
                              child: const Text(
                                'Cancel Reservation',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            )),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.125)
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
