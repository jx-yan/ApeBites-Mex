import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:go_router/go_router.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:apebites_mex/components/components.dart';

class HomeScreenButtons extends StatefulWidget {
  const HomeScreenButtons({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _HomeScreenButtonsState();
}

class _HomeScreenButtonsState extends State<HomeScreenButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      height: 80,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
            child: Container(
          decoration: customBoxDecoration(),
          child: TextButton(
            clipBehavior: Clip.hardEdge,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                useSafeArea: true,
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('Add Image Modal BottomSheet'),
                          ElevatedButton(
                            child: const Text('Close'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                HeroIcon(
                  HeroIcons.arrowUpTray,
                  size: 20,
                  color: kPrimaryBoldest,
                  style: HeroIconStyle.solid,
                ),
                SizedBox(
                  height: 8,
                ),
                AutoSizeText('Add Image',
                    maxLines: 2,
                    softWrap: true,
                    maxFontSize: 12,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w500,
                        color: kFontColorDefault)),
                Spacer(),
              ],
            ),
          ),
        )),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: Container(
          decoration: customBoxDecoration(),
          child: TextButton(
              clipBehavior: Clip.hardEdge,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                showModalBottomSheet<void>(
                  useSafeArea: true,
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return const AddBagBottomSheetComponent();
                  },
                );
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  HeroIcon(
                    HeroIcons.plusCircle,
                    size: 20,
                    color: kPrimaryBoldest,
                    style: HeroIconStyle.solid,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  AutoSizeText('Add Bags',
                      softWrap: true,
                      maxLines: 2,
                      maxFontSize: 12,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                          color: kFontColorDefault)),
                  Spacer(),
                ],
              )),
        )),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: Container(
          decoration: customBoxDecoration(),
          child: TextButton(
              clipBehavior: Clip.hardEdge,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () => context.go('/home/reservations'),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  HeroIcon(
                    HeroIcons.clock,
                    size: 20,
                    color: kPrimaryBoldest,
                    style: HeroIconStyle.solid,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  AutoSizeText('Orders',
                      textAlign: TextAlign.center,
                      maxFontSize: 12,
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                          color: kFontColorDefault)),
                  Spacer(),
                ],
              )),
        )),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: Container(
          decoration: customBoxDecoration(),
          child: TextButton(
              clipBehavior: Clip.hardEdge,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () => context.go('/home/sales'),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  HeroIcon(
                    HeroIcons.chartBarSquare,
                    size: 20,
                    color: kPrimaryBoldest,
                    style: HeroIconStyle.solid,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  AutoSizeText('Sales',
                      textAlign: TextAlign.center,
                      maxFontSize: 12,
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                          color: kFontColorDefault)),
                  Spacer(),
                ],
              )),
        )),
      ]),
    );
  }
}