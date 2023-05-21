import 'package:apebites_mex/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            ApeBitesLogo(),
            SizedBox(
              height: 100,
            ),
            ContinueWithGoogleButton(),
            SizedBox(
              height: 50,
            ),
            ContinueWithMobileButton(),
          ],
        ),
      ),
    );
  }
}

class ContinueWithGoogleButton extends StatelessWidget {
  const ContinueWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 350,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ),
            padding: const EdgeInsets.all(15.0),
            backgroundColor: kPrimaryDefault,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/google_logo.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Continue with Google',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
        ));
  }
}

class ContinueWithMobileButton extends StatelessWidget {
  const ContinueWithMobileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 350,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ),
            padding: const EdgeInsets.all(15.0),
            backgroundColor: kPrimarySoftest,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                HeroiconsSolid.phone,
                size: 24,
                color: kPrimaryBoldest,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Continue with Mobile',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryBold),
              ),
            ],
          ),
        ));
  }
}

class ApeBitesLogo extends StatelessWidget {
  const ApeBitesLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/ApeBitesMexLogo.png',
          width: 165,
          height: 225,
        ),
        // add large text using theme and make the color blue
        const SizedBox(
          height: 15,
        ),
        Text('ApeBites Merchant',
            //bold
            style: Theme.of(context).textTheme.displaySmall),
      ],
    );
  }
}
