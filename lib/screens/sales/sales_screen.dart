import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
            floating: true,
            pinned: false,
            snap: false,
            toolbarHeight: 50,
            backgroundColor: Colors.white,
            leadingWidth: 100,
            leading: Stack(children: [
              Positioned(
                  top: 15,
                  left: 25,
                  child: IconButton(
                    onPressed: () => context.pop(),
                    icon: const HeroIcon(HeroIcons.arrowLeft,
                        color: kPrimaryBoldest, size: 24),
                  ))
            ]),
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Sales',
                style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryBoldest),
              ),
              titlePadding: EdgeInsets.only(top: 50),
            ),
          ),
        ],
      ),
    );
  }
}