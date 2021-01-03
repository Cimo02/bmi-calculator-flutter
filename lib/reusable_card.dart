import 'package:flutter/material.dart';

// created by just clicking "Extract Widget"
class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild; // what appears on our custom cards

  // constructor w/ required parameter "cardColor"
  ReusableCard({@required this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
