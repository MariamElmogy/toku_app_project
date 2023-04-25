import 'package:flutter/material.dart';
import 'package:toku_app_project/views/color_view.dart';
import 'package:toku_app_project/views/family_view.dart';
import 'package:toku_app_project/views/home.dart';
import 'package:toku_app_project/views/numbers_view.dart';
import 'package:toku_app_project/views/phrases_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
        NumbersView.id: (context) => const NumbersView(),
        ColorView.id: (context) => const ColorView(),
        FamilyView.id: (context) => const FamilyView(),
        PhrasesView.id: (context) => const PhrasesView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
