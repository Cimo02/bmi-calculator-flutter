import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    cardColor: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    cardColor: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              cardColor: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    cardColor: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    cardColor: Color(0xFF1D1E33),
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

// created by just clicking "Extract Widget"
class ReusableCard extends StatelessWidget {
  final Color cardColor;

  // constructor w/ required parameter "cardColor"
  ReusableCard({@required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
