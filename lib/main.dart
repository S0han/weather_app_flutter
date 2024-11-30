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
          Padding(
            padding: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  TextField(
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.black26,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on
                      ),
                      Text(
                        'Toronto, ON',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],),
                    SizedBox(height: 50,),
                    Text(
                      '24˚C',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 90,
                        fontWeight: FontWeight.bold)
                    ),
                    Row(
                      children: [
                        Text(
                          'Haze',
                          style:
                            TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                        ),
                        Image.asset(
                          'assets/icons/Haze.png',
                          height: 80,
                        )
                    ]),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      const Icon(Icons.arrow_upward),
                      Text(
                        '35˚C',
                        style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic),
                      ),
                      const Icon(Icons.arrow_downward),
                      Text(
                        '25˚C',
                        style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic),
                      ),
                  ]),
                ],),)
          ),
        ],
      )
    );
  }
}