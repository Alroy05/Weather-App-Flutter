import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String apiKey = '54a4215d65eb60a2a0c49c14c289a227';
  dynamic weatherData;

  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  Future<void> getWeatherData() async {
    String url =
        'http://api.openweathermap.org/data/2.5/weather?q=Mumbai&appid=$apiKey&units=metric';
    Uri uri = Uri.parse(url);

    var response = await http.get(uri);
    if (response.statusCode == 200) {
      setState(() {
        weatherData = json.decode(response.body);
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: weatherData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue,
                    Colors.blue,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70,
                    ),
                    child: Icon(
                      FontAwesomeIcons.cloudSun,
                      size: 100,
                      color: Colors.blue[900],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Temperature: ${weatherData['main']['temp']}°C',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'City: ${weatherData['name']}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Weather: ${weatherData['weather'][0]['description']}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        getWeatherData();
                      },
                      child: Text(
                        'Refresh',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}