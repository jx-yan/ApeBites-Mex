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
            toolbarHeight: 50,
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
              margin: const EdgeInsets.only(top: 25),
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
              preferredSize: const Size.fromHeight(270),
              child: Container(
                margin: const EdgeInsets.only(left: 0, right: 0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: const DateRangePickerButton(),
                    ),
                    const SizedBox(height: 10),
                    const TotalSalesCard(totalSales: 500.00),
                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[200],
                      ),
                      child: TabBar(
                        indicator: customBoxDecoration(),
                        indicatorColor: Colors.white,
                        indicatorWeight: 2,
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
                  return const ReservationListBar(
                    isLargeOrder: true,
                  );
                },
              ),
              ListView.builder(
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return PastReserveListBar(status: "completed");
                },
              ),
              ListView.builder(
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return PastReserveListBar(status: "cancelled");
                },
              ),
            ],
          ),
        ));
  }
}
