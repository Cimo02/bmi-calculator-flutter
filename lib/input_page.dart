import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild:
                        IconContent(label: "MALE", icon: FontAwesomeIcons.mars),
                    onTapFunction: () {
                      setState(() {
                        if (selectedGender == Gender.male) {
                          selectedGender = null;
                        } else {
                          selectedGender = Gender.male;
                        }
                        //updateColor(Gender.male);
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    cardColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                        label: "FEMALE", icon: FontAwesomeIcons.venus),
                    onTapFunction: () {
                      setState(() {
                        if (selectedGender == Gender.female) {
                          selectedGender = null;
                        } else {
                          selectedGender = Gender.female;
                        }
                        //updateColor(Gender.female);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
