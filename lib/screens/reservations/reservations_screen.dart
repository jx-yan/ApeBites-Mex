import 'package:apebites_mex/components/search_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:apebites_mex/styles/styles.dart';
import 'package:apebites_mex/components/components.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';

class ReservationsScreen extends StatefulWidget {
  const ReservationsScreen({super.key});

  @override
  State<ReservationsScreen> createState() => _ReservationsScreenState();
}

class _ReservationsScreenState extends State<ReservationsScreen> {
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
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              pinned: false,
              snap: false,
              toolbarHeight: 110,
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
                  'Reservations',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryBoldest),
                ),
                titlePadding: EdgeInsets.only(bottom: 90),
              ),
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(30), child: SearchFilter()),
            ),
            SliverList(
                delegate: SliverChildListDelegate(
              <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(width: 30),
                    // To Prepare Subtitle
                    Text("To Prepare",
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headlineSmall),
                    const Spacer(flex: 1),
                    const TextButton(
                      onPressed: null,
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        children: [
                          Text("View All",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: kPrimaryBoldest)),
                          SizedBox(width: 10),
                          HeroIcon(HeroIcons.chevronRight,
                              size: 14, color: kPrimaryBoldest),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                  ],
                )
              ],
            )),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const ReservationListBar(isLargeOrder: false,);
              },
              childCount: 5,
            )),
            const SliverPadding(padding: EdgeInsets.only(top: 10)),
            SliverList(
                delegate: SliverChildListDelegate(
              <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(width: 30),
                    // Completed Subtitle
                    Text("Completed",
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headlineSmall),
                    const Spacer(flex: 1),
                    const TextButton(
                      onPressed: null,
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        children: [
                          Text("View All",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: kPrimaryBoldest)),
                          SizedBox(width: 10),
                          HeroIcon(HeroIcons.chevronRight,
                              size: 14, color: kPrimaryBoldest),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                  ],
                )
              ],
            )),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return PastReserveListBar(status: "completed");
              },
              childCount: 5,
            )),
            SliverList(
                delegate: SliverChildListDelegate(
              <Widget>[
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(width: 30),
                    // Cancelled Subtitle
                    Text("Cancelled",
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headlineSmall),
                    const Spacer(flex: 1),
                    const TextButton(
                      onPressed: null,
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        children: [
                          Text("View All",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: kPrimaryBoldest)),
                          SizedBox(width: 10),
                          HeroIcon(HeroIcons.chevronRight,
                              size: 14, color: kPrimaryBoldest),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                  ],
                )
              ],
            )),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return PastReserveListBar(status: "cancelled");
              },
              childCount: 5,
            )),
            const SliverPadding(padding: EdgeInsets.only(top: 30)),
          ],
        ),
      ),
    );
  }
}
