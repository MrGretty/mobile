import 'package:flutter/material.dart';

class TmChip extends StatelessWidget {
  final String text;

  TmChip({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: new EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7.0)),
        border: Border.all(
          color: Color.fromRGBO(0, 0, 0, 0.12),
          width: 1.0,
        ),
      ),
      child: Text(this.text),
    );
  }
}
