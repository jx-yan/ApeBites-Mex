import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:apebites_mex/data/data.dart';
import 'package:heroicons/heroicons.dart';

String _shopName = 'BreadTalk @ Tampines Mall';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class TotalSalesTodayCard extends StatelessWidget {
  const TotalSalesTodayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90,
          margin: const EdgeInsets.only(left: 25, right: 25),
          decoration: customBoxDecoration(),
          clipBehavior: Clip.hardEdge,
        ),
        Positioned(
          top: 15,
          left: 45,
          child: Row(
            children: [
              const HeroIcon(
                HeroIcons.chartBar,
                size: 20,
                color: kPrimaryBoldest,
                style: HeroIconStyle.solid,
              ),
              const SizedBox(
                width: 10,
              ),
              Text('Total Sales Today',
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ),
        Positioned(
            top: 45,
            left: 80,
            child: Row(
              children: [
                Text('S\$', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '1,000.00',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('(+10%)',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.green)),
                const SizedBox(
                  width: 125,
                ),
                const HeroIcon(
                  HeroIcons.chevronRight,
                  size: 20,
                  color: kPrimaryBoldest,
                  style: HeroIconStyle.solid,
                )
              ],
            )),
      ],
    );
  }
}

class OrdersBagsNum extends StatelessWidget {
  const OrdersBagsNum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('20 ',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w700, color: kPrimaryBoldest)),
        const Text('Orders | ',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: kFontColorDefault)),
        Text('20 ',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w700, color: kPrimaryBoldest)),
        const Text('Bags ',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kFontColorDefault)),
      ],
    );
  }
}

class HomeScreenButtons extends StatelessWidget {
  const HomeScreenButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 90,
          margin: const EdgeInsets.only(right: 15),
          decoration: customBoxDecoration(),
          clipBehavior: Clip.hardEdge,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              HeroIcon(
                HeroIcons.arrowUpTray,
                size: 20,
                color: kPrimaryBoldest,
                style: HeroIconStyle.solid,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Add Image',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: kFontColorDefault)),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Container(
          width: 90,
          margin: const EdgeInsets.only(right: 15),
          decoration: customBoxDecoration(),
          clipBehavior: Clip.hardEdge,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              HeroIcon(
                HeroIcons.plusCircle,
                size: 20,
                color: kPrimaryBoldest,
                style: HeroIconStyle.solid,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Add Bags',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: kFontColorDefault)),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Container(
          width: 90,
          margin: const EdgeInsets.only(right: 15),
          decoration: customBoxDecoration(),
          clipBehavior: Clip.hardEdge,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              HeroIcon(
                HeroIcons.clock,
                size: 20,
                color: kPrimaryBoldest,
                style: HeroIconStyle.solid,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Reservations',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: kFontColorDefault)),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Container(
          width: 90,
          margin: const EdgeInsets.only(right: 15),
          decoration: customBoxDecoration(),
          clipBehavior: Clip.hardEdge,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              HeroIcon(
                HeroIcons.chartBarSquare,
                size: 20,
                color: kPrimaryBoldest,
                style: HeroIconStyle.solid,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Sales',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: kFontColorDefault)),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ReservationListBar extends StatelessWidget {
  const ReservationListBar({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        margin: const EdgeInsets.only(left: 25, right: 25, top: 15),
        decoration: customBoxDecoration(),
        clipBehavior: Clip.hardEdge,
        child: const Stack(
          children: [
            Positioned(
                top: 15,
                left: 15,
                child: Text(
                  'Today, 21:40',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      color: kPrimaryBoldest),
                )),
            LargeOrderMarker(),
            Positioned(
                top: 40,
                left: 15,
                child: Row(
                  children: [
                    Text(
                      'AB-123456',
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: kFontColorDefault),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      '2 x Bags',
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: kFontColorDefault),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    HeroIcon(
                      HeroIcons.chevronRight,
                      size: 20,
                      color: kPrimaryBoldest,
                      style: HeroIconStyle.solid,
                    ),
                  ],
                )),
          ],
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
        left: 350,
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

class _HomeScreenState extends State<HomeScreen> {
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
              const Center(
                child: SizedBox(
                  height: 100,
                  child: TotalSalesTodayCard(),
                ),
              ),
              // Orders and Bags Number
              const OrdersBagsNum(),
              // Padding
              const Padding(padding: EdgeInsets.only(top: 20)),
              // HomeScreenButtons
              const SizedBox(
                height: 80,
                child: HomeScreenButtons(),
              ),
              // Padding
            ],
          )),
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 25, bottom: 15),
              title: Text("Today's Reservations",
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            automaticallyImplyLeading: false,
          ),
          SliverList(
              // reservation
              delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return const ReservationListBar();
            },
            childCount: 15,
          )),
          const SliverPadding(padding: EdgeInsets.only(top: 20)),
        ],
      ),
    );
  }
}
