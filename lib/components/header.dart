import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
              child: Center(
                child: Image.asset(
                  "assets/images/payment.png",
                  width: 267,
                  height: 200,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upgrade to',
                  style: titleTextStyle,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Pro',
                  style: titleProTextStyle,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Go unlock all features and \nbuild your own business bigger",
                    style: subtitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        );
  }
}