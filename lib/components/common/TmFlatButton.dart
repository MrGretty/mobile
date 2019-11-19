import 'package:flutter/material.dart';

class TmFlatButton extends StatelessWidget {
  final double leftSideRadius, rightSideRadius;
  final bool isActive;
  final String text;

  final VoidCallback onButtonPressed;

  TmFlatButton(
      {this.leftSideRadius = 0,
      this.rightSideRadius = 0,
      this.isActive = false,
      this.onButtonPressed,
      @required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ButtonTheme(
        height: 50.0,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.only(
                topLeft: Radius.circular(this.leftSideRadius),
                bottomLeft: Radius.circular(this.leftSideRadius),
                topRight: Radius.circular(this.rightSideRadius),
                bottomRight: Radius.circular(this.rightSideRadius)),
          ),
          color:
              this.isActive ? Color.fromRGBO(241, 245, 244, 1) : Colors.white,
          child: Text(text,
              style: TextStyle(
                  fontSize: 16,
                  color: this.isActive
                      ? Color.fromRGBO(16, 69, 163, 1)
                      : Colors.black)),
          onPressed: onButtonPressed,
        ),
      ),
    );
  }
}
