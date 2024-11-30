import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<StatefulWidget> createState() => WeatherPageState();
}

class WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/haze.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ],
      )
    );
  }
}