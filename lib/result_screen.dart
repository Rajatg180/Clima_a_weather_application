import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import './location.dart';
import 'dart:convert';

const apiKey = '165615f30a2c976fc290c292bb7b00e1';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  //static const routeName="/result-screen";

  double? longitude;
  double? latitude;
  void initState() {
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentPosition();
    latitude = location.latitude;
    longitude = location.longitude;
    getData();
  }

  void getData() async {
    http.Response response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey"));
    if (response.statusCode == 200) {
      String data = response.body;
      var result = jsonDecode(data);

      double temp = result['main']['temp'];
      String name = result['name'];
      String des = result['weather'][0]['description'];

      print(temp);
      print(name);
      print(des);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    );
  }
}
