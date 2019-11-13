import 'package:flutter/material.dart';
import 'package:Tradomatic/router.dart' as router;
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FlutterStatusbarManager.setColor(Color.fromRGBO(23, 182, 191, 1),
        animated: true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tradomatic app',
      onGenerateRoute: router.generateRoute,
      initialRoute: 'createOffer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonColor: Color.fromRGBO(172, 204, 70, 1)),
    );
  }
}
