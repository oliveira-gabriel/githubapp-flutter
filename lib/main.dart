import 'package:flutter/material.dart';
import 'package:github/pages/formUserScreen/index.dart';
import 'package:github/pages/homeScreen/index.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/',
      theme: ThemeData.from(
        colorScheme: ColorScheme.light(
          primary: Colors.black,
          secondary: Colors.black,
          onSecondary: Colors.white,
          brightness: Brightness.dark,
          surface: Colors.grey.shade50
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.black),
        )
      ),
      darkTheme:ThemeData.dark(),
      routes: {
        '/' : (context) => HomeScreen(),
        '/addUser' : (context) => FormUser(),
      },
    );
  }
}

