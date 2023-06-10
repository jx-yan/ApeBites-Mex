import 'package:apebites_mex/components/past_reserve_bar.dart';
import 'package:flutter/material.dart';
import 'package:apebites_mex/styles/styles.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';

class CompletedReserveScreen extends StatefulWidget {
  const CompletedReserveScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CompletedReserveScreenState createState() => _CompletedReserveScreenState();
}

class _CompletedReserveScreenState extends State<CompletedReserveScreen> {
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
              'Completed',
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
            return PastReserveListBar(
                status: "completed",
                orderNumber: "AB-22443",
                orderDateTime: DateTime.now(),
                orderTotal: 5.99);
          },
          childCount: 20,
        )),
        const SliverPadding(padding: EdgeInsets.only(bottom: 20))
      ],
    ));
  }
}
