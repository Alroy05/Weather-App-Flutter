import 'package:dis_man_sym/DisastersScreen.dart';
import 'package:dis_man_sym/alerts.dart';
import 'package:dis_man_sym/rainfallAlert.dart';
import 'package:flutter/material.dart';
import 'DoandDontScreen.dart';
import 'weatherforecast.dart';
import 'splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Disaster Management System",
        home: SplashScreen(), // Splash Screen
        routes: {
          '/home': (context) => HomeScreen(),
        });
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            'assets/images/mainGlobeC.png',
          ),
          title: Text(
            'AlertMe',
            style: TextStyle(fontFamily: 'Raleway'),
          ),
          backgroundColor:
              Colors.transparent, // set background color as transparent
          foregroundColor: Colors.white,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFEE4D5F),
                  Color.fromARGB(255, 236, 171, 118),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 236, 171, 118),
                  Color(0xFFEE4D5F),
                ],
              ),
            ),
            child: Column(
              children: [
                WeatherScreen(),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        height: 65.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 225, 200)
                                  .withOpacity(0.3),
                              Color.fromARGB(255, 255, 225, 200)
                                  .withOpacity(0.3)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => DisastersScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            foregroundColor: Colors.white,
                            textStyle: TextStyle(
                                fontSize: 20.0, fontFamily: 'Raleway'),
                          ),
                          icon: Icon(Icons.warning),
                          label: Text('Disasters'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        height: 65.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 225, 200)
                                  .withOpacity(0.3),
                              Color.fromARGB(255, 255, 225, 200)
                                  .withOpacity(0.3)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => alerts()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Color.fromARGB(0, 249, 249, 249),
                            foregroundColor: Colors.white,
                            textStyle: TextStyle(
                                fontSize: 20.0, fontFamily: 'Raleway'),
                          ),
                          icon: Icon(Icons.call),
                          label: Text("Helpline"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        height: 65.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 225, 200)
                                  .withOpacity(0.3),
                              Color.fromARGB(255, 255, 225, 200)
                                  .withOpacity(0.3)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => DoandDontScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            foregroundColor: Colors.white,
                            textStyle: TextStyle(
                                fontSize: 20.0, fontFamily: 'Raleway'),
                          ),
                          icon: Icon(Icons.check_circle_outline),
                          label: Text("Do's and Dont's"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        height: 65.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 225, 200)
                                  .withOpacity(0.3),
                              Color.fromARGB(255, 255, 225, 200)
                                  .withOpacity(0.3)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => WeatherForecast()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            foregroundColor: Colors.white,
                            textStyle: TextStyle(
                                fontSize: 20.0, fontFamily: 'Raleway'),
                          ),
                          icon: Icon(Icons.cloud),
                          label: Text('Weather Forecast'),
                        ),
                      ),
                    ),
                    // Expanded(
                    //   child: Container(
                    //     margin: EdgeInsets.symmetric(horizontal: 8.0),
                    //     height: 65.0,
                    //     decoration: BoxDecoration(
                    //       gradient: LinearGradient(
                    //         colors: [
                    //           Color.fromARGB(255, 255, 225, 200)
                    //               .withOpacity(0.3),
                    //           Color.fromARGB(255, 255, 225, 200)
                    //               .withOpacity(0.3)
                    //         ],
                    //         begin: Alignment.topLeft,
                    //         end: Alignment.bottomRight,
                    //       ),
                    //       borderRadius: BorderRadius.circular(8.0),
                    //     ),
                    //     // child: ElevatedButton.icon(
                    //     //   onPressed: () {
                    //     //     Navigator.of(context).push(
                    //     //       MaterialPageRoute(
                    //     //           builder: (context) => alerts(

                    //     //           )),
                    //     //     );
                    //     //   },
                    //       style: ElevatedButton.styleFrom(
                    //         backgroundColor: Colors.transparent,
                    //         shadowColor: Colors.transparent,
                    //         foregroundColor: Colors.white,
                    //         textStyle: TextStyle(
                    //             fontSize: 20.0, fontFamily: 'Raleway'),
                    //       ),
                    //       icon: Icon(Icons.cloud),
                    //       label: Text('Weather Forecast'),
                    //     ),
                    //   ),
                    //),
                  ],
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ), //container bracket
        ));
  }
}
