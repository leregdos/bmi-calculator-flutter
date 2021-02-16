import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_child.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const bottomContainerHeight = 80.0;
const reusableCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);
enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedValue = Gender.male;
                      });
                    },
                    colour: (selectedValue == Gender.male
                        ? reusableCardColor
                        : inactiveCardColor),
                    cardChild: CardChild(
                      iconGender: Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      textGender: 'MALE',
                    ),
                  ),
                ),
                Expanded(imer
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedValue = Gender.female;
                      });
                    },
                    colour: selectedValue == Gender.female
                        ? reusableCardColor
                        : inactiveCardColor,
                    cardChild: CardChild(
                      iconGender: Icon(
                        FontAwesomeIcons.venus,
                        size: 80.0,
                      ),
                      textGender: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
