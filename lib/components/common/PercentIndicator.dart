import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentIndicator extends StatelessWidget {
  final String title;
  final String circleText;
  final double percent;

  const PercentIndicator(
      {Key key, this.title, this.circleText, @required this.percent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1.0, color: Color.fromRGBO(0, 0, 0, 0.12)),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 5.0,
              animation: true,
              percent: this.percent,
              center: Text(this.circleText),
              progressColor: Color.fromRGBO(23, 182, 191, 1)),
          Text(
            this.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
