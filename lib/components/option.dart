import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

class option extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final VoidCallback onTap;
  final String title;
  final String desc;
  final int price;
  const option(
      {required this.selectedIndex,
      required this.index,
      required this.onTap,
      required this.title,
      required this.desc,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
                color: selectedIndex == index
                    ? Color(0xff007DFF)
                    : Color(0xff4D587C)),
            borderRadius: BorderRadius.circular(14)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
              selectedIndex == this.index
                  ? Image.asset(
                      "assets/images/circle_active.png",
                      width: 30,
                    )
                  : Image.asset(
                      "assets/images/circle.png",
                      width: 30,
                    ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: planTextStyle,
                  ),
                  Text(
                    this.desc,
                    style: descTextStyle,
                  )
                ],
              ),
            ],
          ),
          Text(
            '\$${this.price.toString()}',
            style: priceTextStyle,
          )
        ]),
      ),
    );
  }
}
