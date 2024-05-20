import 'package:flutter/material.dart';
import 'package:portfolio_webapp/widgets/loading_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        title: 'Portfolio Web',
        home: LoadingAnimation());
  }
}
