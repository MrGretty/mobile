import 'package:flutter/material.dart';
import 'package:Tradomatic/routes/routerDemo.dart' as routerDemo;
import 'package:Tradomatic/routes/routerLoggedIn.dart' as routerLoggedIn;
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final bool isLoggedIn = true;

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
      onGenerateRoute: isLoggedIn ? routerDemo.generateRoute : routerLoggedIn.generateRoute,
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonColor: Color.fromRGBO(172, 204, 70, 1),
      ),
    );
  }
}
