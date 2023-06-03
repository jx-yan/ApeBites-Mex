import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class TotalSalesTodayCard extends StatelessWidget {
  TotalSalesTodayCard({
    super.key,
    required this.todaySales,
    required this.ordersNum,
    required this.bagsNum,
  });

  final double todaySales;
  final int ordersNum;
  final int bagsNum;

  static const TextStyle ordersBagsNumStyle = TextStyle(
      fontFamily: 'Lexend',
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: kFontColorDefault);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: customBoxDecoration(),
          margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
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
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Text('S\$', style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      todaySales.toStringAsFixed(2),
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
                    const Spacer(flex: 1),
                    const HeroIcon(
                      HeroIcons.chevronRight,
                      size: 20,
                      color: kPrimaryBoldest,
                      style: HeroIconStyle.solid,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ordersNum.toString(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w700, color: kPrimaryBoldest)),
            const SizedBox(width: 5),
            const Text('Orders',
                textAlign: TextAlign.center,
                style: ordersBagsNumStyle),
            const SizedBox(width: 5),
            const Text('|',
                textAlign: TextAlign.center, style: ordersBagsNumStyle),
            const SizedBox(width: 5),
            Text(bagsNum.toString(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w700, color: kPrimaryBoldest)),
            const SizedBox(width: 5),
            const Text('Bags',
                textAlign: TextAlign.center,
                style: ordersBagsNumStyle),
          ],
        ),
      ],
    );
  }
}
