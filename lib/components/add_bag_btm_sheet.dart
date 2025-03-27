import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'time_picker.dart';

class AddBagBottomSheetComponent extends StatefulWidget {
  const AddBagBottomSheetComponent({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _AddBagBottomSheetComponentState();
}

class _AddBagBottomSheetComponentState
    extends State<AddBagBottomSheetComponent> {
  final Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: customBoxDecoration(),
              padding: const EdgeInsets.all(20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  HeroIcon(HeroIcons.shoppingBag,
                      size: 24,
                      color: kPrimaryBoldest,
                      style: HeroIconStyle.solid),
                  SizedBox(width: 10),
                  Text('Surprise Bag',
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kFontColorDefault)),
                  Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const EditQuantityBox(),
            const SizedBox(height: 20),
            Column(
              children: [
                const Text("Collection Time",
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryBoldest)),
                const SizedBox(height: 10),
                const TimePickerButton(),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      const TextSpan(
                          text:
                              "By listing the stated items, you agree to ApeBites' ",
                          style: TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: kFontColorDefault)),
                      TextSpan(
                          text: "Terms of Service",
                          style: const TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: kPrimaryDefault),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(_url);
                            }),
                    ]),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(48),
                            ),
                            padding: const EdgeInsets.all(15.0),
                            backgroundColor: kPrimaryBoldest,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'List',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05)
                  ],
                )),
          ],
        ),
      ),
    ]);
  }
}

class EditQuantityBox extends StatefulWidget {
  const EditQuantityBox({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EditQuantityBoxState();
}

class _EditQuantityBoxState extends State<EditQuantityBox> {
  int listBagsNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: customBoxDecoration(),
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const Center(
            child: Text("Quantity",
                style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryBoldest)),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () => setState(() {
                  if (listBagsNum > 1) listBagsNum--;
                }),
                child: const HeroIcon(
                  HeroIcons.minusCircle,
                  size: 30,
                  color: kPrimaryBoldest,
                  style: HeroIconStyle.solid,
                ),
              ),
              const Spacer(),
              Text(listBagsNum.toString(),
                  style: const TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: kFontColorDefault)),
              const Spacer(),
              TextButton(
                onPressed: () => setState(() {
                  listBagsNum++;
                }),
                child: const HeroIcon(
                  HeroIcons.plusCircle,
                  size: 30,
                  color: kPrimaryBoldest,
                  style: HeroIconStyle.solid,
                ),
              ),
              const Spacer(),
            ],
          )
        ]));
  }
}
