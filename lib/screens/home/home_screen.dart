import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:apebites_mex/styles/styles.dart';
import 'package:apebites_mex/components/components.dart';
import 'package:apebites_mex/screens/home/home_sales_card.dart';
import 'package:apebites_mex/screens/home/home_buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String _shopName = 'BreadTalk @ Tampines Mall';
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _isVisible = (_scrollController.position.userScrollDirection ==
            ScrollDirection.forward);
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            pinned: false,
            snap: false,
            expandedHeight: 75,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.only(left: 25, top: 50),
                title: RichText(
                    textScaleFactor: 1,
                    text: TextSpan(
                      text: 'Welcome, \n',
                      style: const TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: kFontColorDefault),
                      children: <TextSpan>[
                        TextSpan(
                            text: _shopName,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: kPrimaryBoldest)),
                      ],
                    ))),
            automaticallyImplyLeading: false,
          ),
          const SliverPadding(padding: EdgeInsets.only(top: 20)),
          SliverList(
              delegate: SliverChildListDelegate(
            <Widget>[
              // Total Sales Today Card
              TotalSalesTodayCard(todaySales: 2000.00, ordersNum: 20, bagsNum: 30,),
              // Padding
              const Padding(padding: EdgeInsets.only(top: 15)),
              // HomeScreenButtons
              const HomeScreenButtons()
              // Padding
            ],
          )),
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            backgroundColor: Colors.white,
            toolbarHeight: 50,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 30, top: 25),
              title: Align(
                alignment: Alignment.centerLeft,
                child: Text("Today's Reservations",
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headlineSmall),
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          SliverList(
              // reservation
              delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ReservationListBar(orderNumber: "AB-123434", orderTotal: 3.99, orderDateTime: DateTime.now(), bagsNum: 1);
            },
            childCount: 20,
          )),
          const SliverPadding(padding: EdgeInsets.only(top: 30)),
        ],
      ),
    );
  }
}
