// ignore_for_file: prefer_const_constructors

import 'package:dis_man_sym/DOandDonts/Floods.dart';
import 'package:flutter/material.dart';
import 'DOandDonts/EarthQuake.dart';

class DoandDontScreen extends StatelessWidget {
  const DoandDontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Do\'s  and Donts'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => EarthquakeScreen()),
                    );
                  },
                  child: Text("EarthQuake"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FloodScreen()),
                    );
                  },
                  child: Text("FLOODS"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("LANDSLIDES"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("CYCLONE"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("TSUNAMI"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("DROUGHT"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
          ],
        ),
      ),
    );
  }
}