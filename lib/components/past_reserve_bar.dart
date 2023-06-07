import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class PastReserveListBar extends StatelessWidget {
  PastReserveListBar({
    super.key,
    required this.status,
  });

  final String status;

  final checkedIcon = Container(
      margin: const EdgeInsets.only(left: 5, right: 15, top: 10, bottom: 10),
      child: const HeroIcon(
        HeroIcons.checkCircle,
        style: HeroIconStyle.solid,
        color: kPrimaryDefault,
        size: 30,
      )
  );

  final crossedIcon = Container (
    margin: const EdgeInsets.only(left: 5, right: 15, top: 10, bottom: 10),
    child: const HeroIcon(
      HeroIcons.xCircle,
      style: HeroIconStyle.solid,
      color: Colors.red,
      size: 30
    )
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
      child: Row(children: [
        if (status == 'completed') checkedIcon else if (status == 'cancelled') crossedIcon,
        const SizedBox(
          width: 10,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AB-123456',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: kFontColorDefault),
            ),
            SizedBox(height: 5),
            Text(
              '29 May 2023, 21:40',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w400,
                  color: kPrimaryBoldest),
            ),
          ],
        ),
        const Spacer(flex: 1),
        const HeroIcon(HeroIcons.chevronRight,
            color: kPrimaryBoldest, size: 24),
        const SizedBox(
          width: 20,
        ),
      ]),
    );
  }
}
