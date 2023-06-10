import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class TotalSalesCard extends StatelessWidget {
  const TotalSalesCard({
    super.key,
    required this.totalSales,
    required this.ordersNum,
    required this.bagsNum,
  });

  final double totalSales;
  final int ordersNum;
  final int bagsNum;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 25, right: 25),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          decoration: customBoxDecoration(),
          clipBehavior: Clip.hardEdge,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
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
                Text('Total Sales',
                    style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
            Row(
              children: [
                const Text('S\$',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: kFontColorDefault)),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  totalSales.toStringAsFixed(2),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            )
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  decoration: customBoxDecoration(),
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Orders',
                                style: Theme.of(context).textTheme.bodyMedium),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(ordersNum.toString(),
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ]),
                )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  decoration: customBoxDecoration(),
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Bags',
                                style: Theme.of(context).textTheme.bodyMedium),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(bagsNum.toString(),
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ]),
                ))
              ],
            ))
      ],
    );
  }
}
