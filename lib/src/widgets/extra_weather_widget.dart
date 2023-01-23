import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_test/src/model/weather_data.dart';

class ExtraWeather extends StatelessWidget {
  final Weather temp;
  const ExtraWeather(this.temp, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Icon(
              CupertinoIcons.wind,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              temp.wind.toString() + " Km/h",
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Wind",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        ),
        Column(
          children: [
            const Icon(
              CupertinoIcons.sun_max,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              temp.humidity.toString() + " %",
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Humidity",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        ),
        Column(
          children: [
            const Icon(
              CupertinoIcons.cloud_moon_rain,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              temp.chanceRain.toString() + " %",
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Rain",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
