import 'dart:convert';
import 'package:dis_man_sym/alerts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  bool showMoreOptions = false;
  String apiKey = '54a4215d65eb60a2a0c49c14c289a227';
  String city = "Mumbai";
  dynamic weatherData;
  List<String> cities = [
    'Mumbai',
    'Delhi',
    'Bangalore',
    'Hyderabad',
    'Chennai',
    'Kolkata',
    'Pune',
    'Ahmedabad',
    'Jaipur',
    'Surat',
    'Lucknow',
    'Kanpur',
    'Nagpur',
    'Visakhapatnam',
    'Bhopal',
    'Patna',
    'Agra',
    'Nashik',
    'Vadodara',
    'Singapore',
    'Moscow'
  ];

  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  Future<void> getWeatherData() async {
    String url =
        'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';
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
    double temperature = weatherData['main']['temp'];
    String Dynamic_City_value = city;

    String iconImage;
    if (weatherData != null) {
      switch (weatherData['weather'][0]['main']) {
        case 'Clear':
          iconImage = 'assets/images/sun.png';
          break;
        case 'Rain':
          iconImage = 'assets/images/rainy.png';
          break;
        case 'Clouds':
          iconImage = 'assets/images/cloudy.png';
          break;
        case 'Smoke':
          iconImage = 'assets/images/smoky.png';
          break;
        case 'Haze':
          iconImage = 'assets/images/smoky.png';
          break;
        case 'Thunderstorm':
          iconImage = 'assets/images/thunderstrom.png';
          break;
        default:
          iconImage = 'assets/images/cloudy.png';
      }
    } else {
      iconImage = 'assets/images/cloudy.png';
    }
    var static;
    // var temperature;
    return Container(
      child: weatherData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 20),
                          Image.asset(
                            iconImage,
                            height: 150,
                            width: 150,
                          )
                        ]),
                    SizedBox(
                      height: 20,
                    ),

                    Text(
                      '${temperature.round()}°C',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        fontSize: 50,
                        color: Color(0xFF276589),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // Text(
                    //        temperature > 10 ? "very hot": "normal"
                    // ),

                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 255, 225, 200).withOpacity(0.1),
                            Color.fromARGB(255, 255, 225, 200).withOpacity(0.1)
                          ],
                        ),
                      ),
                      child: DropdownButton(
                        value: city,
                        dropdownColor: Color(0xFF9EE5FA).withOpacity(0.9),
                        items: cities.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 25,
                                    color: Color(0xFF276589),
                                  )),
                            );
                          },
                        ).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            city = value!;
                          });
                          getWeatherData(); // call getWeatherData to fetch weather data for the selected city
                        },
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${weatherData['weather'][0]['description'][0].toUpperCase()}${weatherData['weather'][0]['description'].substring(1)}',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF276589),
                            ),
                          ),
                          SizedBox(height: 20),
                          weatherData['rain'] != null
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Precipitation: ${weatherData['rain']['1h']}mm',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF276589),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'Wind speed: ${weatherData['wind']['speed']} m s',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF276589),
                                      ),
                                    ),
                                  ],
                                )
                              : Text(
                                  'Wind speed: ${weatherData['wind']['speed']} m s',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF276589),
                                  ),
                                ),
                          SizedBox(height: 20),
                          Text(
                            'Wind Deg:${weatherData['wind']['deg']}°',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF276589),
                            ),
                          ),
                          SizedBox(height: 20),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            height: showMoreOptions ? 460 : 0,
                            curve: Curves.easeInOut,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Humidity:${weatherData['main']['humidity']}g/cu m',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF276589),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Feels Like:${weatherData['main']['feels_like']}°C',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF276589),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Temp min:${weatherData['main']['temp_min']}°C',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF276589),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Temp max:${weatherData['main']['temp_max']}°C',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF276589),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Visibility:${weatherData['visibility'] / 1000}km',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF276589),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Latitude:${weatherData['coord']['lat']}°',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF276589),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Longitude:${weatherData['coord']['lon']}°',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF276589),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Pressure:${weatherData['main']['pressure']}',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF276589),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                showMoreOptions = !showMoreOptions;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color(0xFF9EE5FA), // Background color
                            ),
                            child: Text(
                              showMoreOptions ? 'See less' : 'See more',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF276589),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
