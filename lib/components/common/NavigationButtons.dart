import 'package:flutter/material.dart';

class NavigationButtons extends StatelessWidget {
  NavigationButtons(
      {@required this.onButtonBackPressed,
      @required this.onButtonMovePressed,
      this.isDisableBack = false,
      this.isDisableMove = false});

  final VoidCallback onButtonBackPressed, onButtonMovePressed;

  final bool isDisableBack, isDisableMove;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            flex: 1,
            child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0),
                ),
                onPressed: isDisableBack ? null : onButtonBackPressed,
                child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0.0),
                    child: Text('Назад',
                        style: TextStyle(
                            fontSize: 18,
                            color: isDisableBack
                                ? Colors.white
                                : Color.fromRGBO(172, 204, 70, 1)))))),
        Expanded(
            flex: 1,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0),
                ),
                onPressed: isDisableMove ? null : onButtonMovePressed,
                child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0.0),
                    child: Text('Далее',
                        style: TextStyle(fontSize: 18, color: Colors.white))))),
      ],
    );
  }
}
