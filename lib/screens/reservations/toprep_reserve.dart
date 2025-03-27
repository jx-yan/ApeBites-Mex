import 'package:apebites_mex/components/reserve_list_bar.dart';
import 'package:flutter/material.dart';
import 'package:apebites_mex/styles/styles.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';

class ToPrepReserveScreen extends StatefulWidget {
  const ToPrepReserveScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ToPrepReserveScreenState createState() => _ToPrepReserveScreenState();
}

class _ToPrepReserveScreenState extends State<ToPrepReserveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          pinned: false,
          snap: false,
          toolbarHeight: 65,
          backgroundColor: Colors.white,
          leadingWidth: 70,
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
          flexibleSpace: const FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              'To Prepare',
              style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryBoldest),
            ),
            titlePadding: EdgeInsets.only(bottom: 15),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return ReservationListBar(
              isLargeOrder: false,
              orderNumber: "AB-123434",
              orderTotal: 3.99,
              orderDateTime: DateTime.now(),
              bagsNum: 1
            );
          },
          childCount: 20,
        )),
        const SliverPadding(padding: EdgeInsets.only(bottom: 20))
      ],
    ));
  }
}
