import 'package:flutter/material.dart';
import 'package:movies/screens/correction_detail.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import './screens/correction_detail.dart';
import './screens/login.dart';

Future main() async {
  await DotEnv().load('.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'Movie flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.black12,
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: LoginPage(),
      routes: {
        // MovieDetailsScreen.routeName: (ctx) => MovieDetailsScreen(),
        MovieDetail.routeName: (ctx) => MovieDetail(),
      },
    );
  }
}