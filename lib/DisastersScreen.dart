import "package:flutter/material.dart";
import 'Disasters/Earthquake.dart';
import 'Disasters/Drought.dart';
import 'Disasters/cyclone.dart';
import 'Disasters/floods.dart';
import 'Disasters/landslides.dart';
import 'Disasters/tsunami.dart';

class DisastersScreen extends StatelessWidget {
  const DisastersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Disasters',
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        backgroundColor: Color.fromARGB(255, 236, 171, 118),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
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
            SizedBox(height: 10.0),
            Image.asset(
              'assets/images/disaster.png',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2),
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DisasterCycloneScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Cyclone"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2),
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DisasterFloodScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Flood"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2),
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DisasterLandslideScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Landslide"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2),
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DisasterEarthquakeScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Earthquake"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2),
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DisasterTsunamiScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Tsunami"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2),
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DisasterDroughtScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Drought"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
