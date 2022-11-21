import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_with_provider/weight_provider.dart';
import 'package:provider/provider.dart';
import 'height_provider.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BMI with Provider',
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<HeightProvider>(create: (context) => HeightProvider(),),
          ChangeNotifierProvider<WeightProvider>(create: (context) => WeightProvider(),),
        ],
        child: const HomePage(),
      ),
    );
  }
}
