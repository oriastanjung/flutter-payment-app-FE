import 'package:flutter/material.dart';
import 'package:payment_app/components/header.dart';
import 'package:payment_app/components/option.dart';
import 'package:payment_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = -1;
  void onTapHandler(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff04112F),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                const header(),
                SizedBox(
                  height: 50,
                ),
                option(
                  selectedIndex: selectedIndex,
                  index: 0,
                  onTap: () {
                    onTapHandler(0);
                  },
                  title: "Monthly",
                  desc: "Good for starting up",
                  price: 20,
                ),
                option(
                  selectedIndex: selectedIndex,
                  index: 1,
                  onTap: () {
                    onTapHandler(1);
                  },
                  title: "Monthly",
                  desc: "Good for starting up",
                  price: 55,
                ),
                option(
                  selectedIndex: selectedIndex,
                  index: 2,
                  onTap: () {
                    onTapHandler(2);
                  },
                  title: "Monthly",
                  desc: "Good for starting up",
                  price: 220,
                ),
                SizedBox(
                  height: 50,
                ),
                selectedIndex != -1
                    ? Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: 51.23,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff007dff),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(71),
                                )),
                            onPressed: () {},
                            child: Text(
                              'Checkout Now',
                              style: buttonTextStyle,
                            )),
                      )
                    : SizedBox(),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ))),
    );
  }
}
