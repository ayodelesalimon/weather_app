import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Weather {
  final int? max;
  final int? min;
  final int? current;
  final String? name;
  final String? day;
  final int? wind;
  final int? humidity;
  final int? chanceRain;
  final String? image;
  final String? time;
  final String? location;
  final String? bgImag;

  Weather(
      {this.max,
      this.min,
      this.name,
      this.day,
      this.wind,
      this.humidity,
      this.chanceRain,
      this.image,
      this.current,
      this.time,
      this.location, this.bgImag});
}

String appId = "c117d111b620917186c174ccf23aa1d5";


String findIcon(String name, bool type) {
  if (type) {
    switch (name) {
      case "Clouds":
        return "assets/icons/sunny.png";
        break;
      case "Rain":
        return "assets/icons/rainy.png";
        break;
      case "Drizzle":
        return "assets/icons/rainy.png";
        break;
      case "Thunderstorm":
        return "assets/icons/thunder.png";
        break;
      case "Snow":
        return "assets/icons/snow.png";
        break;
      default:
        return "assets/icons/sunny.png";
    }
  } else {
    switch (name) {
      case "Clouds":
        return "assets/icons/sunny.png";
        break;
      case "Rain":
        return "assets/icons/rainy.png";
        break;
      case "Drizzle":
        return "assets/icons/rainy.png";
        break;
      case "Thunderstorm":
        return "assets/icons/thunder.png";
        break;
      case "Snow":
        return "assets/icons/snow.png";
        break;
      default:
        return "assets/icons/sunny.png";
    }
  }
}
String getImageBg(String name, bool type) {
  if (type) {
    switch (name) {
      case "Clouds":
        return "assets/images/forest_cloudy.png";
        break;
      case "Rain":
        return "assets/images/sea_rainy.png";
        break;
      case "Drizzle":
        return "assets/images/forest_rainy.png";
        break;
      case "Thunderstorm":
        return "assets/images/sea_cloudy.png";
        break;
      case "Snow":
        return "assets/images/sea_cloudy.png";
        break;
      default:
        return "assets/images/forest_sunny.png";
    }
  } else {
    switch (name) {
       case "Clouds":
        return "assets/images/forest_cloudy.png";
        break;
      case "Rain":
        return "assets/images/sea_rainy.png";
        break;
      case "Drizzle":
        return "assets/images/forest_rainy.png";
        break;
      case "Thunderstorm":
        return "assets/images/sea_cloudy.png";
        break;
      case "Snow":
        return "assets/images/sea_cloudy.png";
        break;
      default:
        return "assets/images/forest_sunny.png";
    }
  }
}
class CityModel {
  final String? name;
  final String? lat;
  final String? lon;
  CityModel({this.name, this.lat, this.lon});
}

var cityJSON;

