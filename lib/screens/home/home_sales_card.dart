import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

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
