import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:go_router/go_router.dart';

class HomeScreenButtons extends StatelessWidget {
  const HomeScreenButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
            child: Container(
          decoration: customBoxDecoration(),
          child: TextButton(
            onPressed: () {},
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: kFontColorDefault)),
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
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: kFontColorDefault)),
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
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: kFontColorDefault)),
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
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: kFontColorDefault)),
                ],
              )),
        )),
      ]),
    );
  }
}
