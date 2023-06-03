import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:go_router/go_router.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeScreenButtons extends StatelessWidget {
  const HomeScreenButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      height: 80,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
          decoration: customBoxDecoration(),
          child: TextButton(
            onPressed: () {},
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
                Spacer(),
                Text('Add Image',
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
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
              onPressed: () {},
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
                  Spacer(),
                  Text('Add Bags',
                  maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
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
                  Spacer(),
                  Text('Reservations',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
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
                  Spacer(),
                  Text('Sales',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: kFontColorDefault)),
                  Spacer(),
                ],
              )),
        )),
      ]),
    );
  }
}
