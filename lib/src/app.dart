import 'package:drawer_exp/src/features/drawer/presentation/drawer_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DrawerScreen(),
    );
  }
}
