import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_with_provider/weight_provider.dart';
import 'package:provider/provider.dart';

import 'height_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var weightProvider = Provider.of<WeightProvider>(context);
    var heightProvider = Provider.of<HeightProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Your Weight (Kg) :',
            style: TextStyle(fontSize: 24),
          ),
          Slider(
              divisions: 300,
              label: weightProvider.weight.toString(),
              activeColor: Colors.blue,
              inactiveColor: Colors.blue.withOpacity(0.2),
              min: 1,
              max: 300,
              value: weightProvider.weight,
              onChanged: (newValue) {
                weightProvider.weight = newValue;
              }),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Your Height (Cm) :',
            style: TextStyle(fontSize: 24),
          ),
          Slider(
            divisions: 300,
            label: heightProvider.height.toString(),
            activeColor: Colors.pink,
            inactiveColor: Colors.pink.withOpacity(0.2),
            min: 1,
            max: 300,
            value: heightProvider.height,
            onChanged: (newValue) {
              heightProvider.height = newValue;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'You BMI is : \n ${(weightProvider.weight / pow(heightProvider.height / 100, 2)).toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
