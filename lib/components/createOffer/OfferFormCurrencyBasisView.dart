import 'package:flutter/material.dart';

class OfferFormCurrencyBasisView extends StatelessWidget {
  final int operation;

  OfferFormCurrencyBasisView({@required this.operation});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            margin: new EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
              border: Border.all(
                color: Color.fromRGBO(0, 0, 0, 0.12),
                width: 1.0,
              ),
            ),
            child: Text('Аукцион'),
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: new EdgeInsets.only(bottom: 20.0),
                  child: Text('Валюта'),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 0.12),
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ButtonTheme(
                          height: 50.0,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.only(
                                  topLeft: Radius.circular(7.0),
                                  bottomLeft: Radius.circular(7.0)),
                            ),
                            color: Color.fromRGBO(241, 245, 244, 1),
                            child: Text('Доллар США',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(16, 69, 163, 1))),
                            onPressed: () => null,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ButtonTheme(
                          height: 50.0,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.only(
                                  topRight: Radius.circular(7.0),
                                  bottomRight: Radius.circular(7.0)),
                            ),
                            color: Colors.white,
                            child: Text('Гривна Украина',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                            onPressed: () => null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: new EdgeInsets.only(bottom: 20.0),
                  child: Text('Базис'),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 0.12),
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ButtonTheme(
                          height: 50.0,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.only(
                                  topLeft: Radius.circular(7.0),
                                  bottomLeft: Radius.circular(7.0)),
                            ),
                            color: Colors.white,
                            child: Text('CPT',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                            onPressed: () => null,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ButtonTheme(
                          height: 50.0,
                          child: FlatButton(
                            color: Color.fromRGBO(241, 245, 244, 1),
                            child: Text('DAP',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(16, 69, 163, 1))),
                            onPressed: () => null,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ButtonTheme(
                          height: 50.0,
                          child: FlatButton(
                            color: Colors.white,
                            child: Text('EXW',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                            onPressed: () => null,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ButtonTheme(
                          height: 50.0,
                          child: FlatButton(
                            color: Colors.white,
                            child: Text('FOB',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                            onPressed: () => null,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ButtonTheme(
                          height: 50.0,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.only(
                                  topRight: Radius.circular(7.0),
                                  bottomRight: Radius.circular(7.0)),
                            ),
                            color: Colors.white,
                            child: Text('DAF',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                            onPressed: () => null,
                          ),
                        ),
                      ),
                    ],
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
