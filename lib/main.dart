import 'package:flutter/material.dart';

import 'animated_product_card/animated_product_card_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Product Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Futura_Condensed",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AnimatedProductCardPage(),
    );
  }
}
