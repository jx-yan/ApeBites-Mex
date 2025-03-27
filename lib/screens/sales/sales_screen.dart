import 'package:apebites_mex/screens/sales/sales_card.dart';
import 'package:flutter/material.dart';
import 'package:apebites_mex/styles/styles.dart';
import 'package:apebites_mex/components/components.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({super.key});

  @override
  State<SalesScreen> createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  DateTime? startDate;
  DateTime? endDate;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
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
                'Sales',
                style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryBoldest),
              ),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(230),
              child: Container(
                margin: const EdgeInsets.only(left: 0, right: 0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: const DateRangePickerButton(),
                    ),
                    const SizedBox(height: 10),
                    const TotalSalesCard(
                        totalSales: 500.00, ordersNum: 10, bagsNum: 20),
                    const SizedBox(height: 10),
                    Container(
                      height: 45,
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      child: TabBar(
                          indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xff141414).withOpacity(0.08),
                                offset: const Offset(0, 0),
                                blurRadius: 1,
                              ),
                              BoxShadow(
                                color:
                                    const Color(0xff141414).withOpacity(0.08),
                                offset: const Offset(0, 1),
                                blurRadius: 8,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          indicatorPadding: const EdgeInsets.all(3),
                          indicatorColor: Colors.white,
                          indicatorWeight: 3,
                          labelColor: kPrimaryBoldest,
                          labelStyle: const TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          tabs: const <Widget>[
                            Tab(
                              text: 'Reserved',
                            ),
                            Tab(
                              text: 'Completed',
                            ),
                            Tab(
                              text: 'Cancelled',
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.builder(
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return ReservationListBar(
                      isLargeOrder: true,
                      orderNumber: "AB-123434",
                      orderTotal: 3.99,
                      orderDateTime: DateTime.now(),
                      bagsNum: 1);
                },
              ),
              ListView.builder(
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return PastReserveListBar(
                      status: "completed",
                      orderNumber: "AB-22443",
                      orderDateTime: DateTime.now(),
                      orderTotal: 5.99);
                },
              ),
              ListView.builder(
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return PastReserveListBar(
                      status: "cancelled",
                      orderNumber: "AB-22443",
                      orderDateTime: DateTime.now(),
                      orderTotal: 5.99);
                },
              ),
            ],
          ),
        ));
  }
}
