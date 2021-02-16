import 'package:flutter/material.dart';
import 'constants.dart';

class CardChild extends StatelessWidget {
  final Icon iconGender;
  final String textGender;
  CardChild({@required this.iconGender, this.textGender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        iconGender,
        SizedBox(
          height: 15.0,
        ),
        Text(textGender, style: kLabelTextStyle)
      ],
    );
  }
}
