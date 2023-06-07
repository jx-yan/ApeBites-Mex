import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class ReservationListBar extends StatelessWidget {
  const ReservationListBar({
    super.key,
    required this.isLargeOrder,
  });

  final bool isLargeOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        margin: const EdgeInsets.only(left: 25, right: 25, top: 15),
        decoration: customBoxDecoration(),
        child: Stack(
          children: [
            const Positioned(
                top: 15,
                left: 15,
                child: Text(
                  'Today, 21:40',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      color: kPrimaryBoldest),
                )),
            if (isLargeOrder) const LargeOrderMarker(),
            const Positioned(
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
                  ],
                )),
            const Positioned(
              top: 40,
              right: 15,
              child: HeroIcon(
                HeroIcons.chevronRight,
                size: 20,
                color: kPrimaryBoldest,
                style: HeroIconStyle.solid,
              ),
            ),
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
        right: 0,
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
