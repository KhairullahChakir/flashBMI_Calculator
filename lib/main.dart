import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.white,
          primarySwatch: Colors.amber, // for button
          cardColor: Colors.amber, // appbar
        ),
      ),
      home: const OnBoardingScreen(),
    );
  }
}
