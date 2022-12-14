import 'package:flutter/material.dart';
import 'package:todoapp_sqf/screens/home.screen.dart';

import '../screens/home.screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
