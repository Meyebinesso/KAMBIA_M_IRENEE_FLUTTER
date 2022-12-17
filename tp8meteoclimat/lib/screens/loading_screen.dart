import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tp8meteoclimat/screens/location_screen.dart';
import 'package:tp8meteoclimat/services/location.dart';
import 'package:tp8meteoclimat/services/networking.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tp8meteoclimat/services/weather.dart';
const apiKey='149ee15b972154de3e10b2c7804dad48';

class LoadingScreen extends StatefulWidget {
  double ? latitude;
  double ? longitude;


  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async{
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));

  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: SpinKitDoubleBounce(
           color: Colors.white,
           size: 100.0,
         )  ,
       ),
     );
}}