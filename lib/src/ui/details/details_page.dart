import 'package:flutter/material.dart';

import 'package:weather_app_test/src/model/weather_data.dart';
import '../../widgets/custom_textstyle.dart';
import '../../widgets/extra_weather_widget.dart';


class DetailPage extends StatelessWidget {
  final Weather tomorrowTemp;
  final List<Weather> sevenDay;
   const DetailPage(this.tomorrowTemp, this.sevenDay, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030317),
      body: Column(
        children: [TomorrowWeather(tomorrowTemp), SevenDays(sevenDay)],
      ),
    );
  }
}

class TomorrowWeather extends StatelessWidget {
  final Weather tomorrowTemp;
   const TomorrowWeather(this.tomorrowTemp, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Color(0xfffc1158),
     decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(tomorrowTemp.bgImag!),
            fit: BoxFit.cover,
          ),
        ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 30, left: 30, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                Row(
                  children: const [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                    Text(
                      " 5 days",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Icon(Icons.more_vert, color: Colors.white)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(tomorrowTemp.image!),
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Tomorrow",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      height: 105,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(tomorrowTemp.max.toString(),
                              style: custom_textStyle(
                                  60, Colors.black, FontWeight.bold)),
                          Text(
                            "/" + tomorrowTemp.min.toString() + "\u00B0",
                            style: custom_textStyle(40,
                                Colors.black.withOpacity(0.4), FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      " " + tomorrowTemp.name!,
                      style:
                          custom_textStyle(30, Colors.black, FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              right: 50,
              left: 50,
            ),
            child: Column(
              children: [
                const Divider(color: Colors.white),
                const SizedBox(
                  height: 10,
                ),
                ExtraWeather(tomorrowTemp)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SevenDays extends StatelessWidget {
  final List<Weather> sevenDay;
  const SevenDays(this.sevenDay, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: sevenDay.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding:
                    const EdgeInsets.only(left: 20, right: 20, bottom: 25, top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      sevenDay[index].day!,
                      style: custom_textStyle(20, Colors.white),
                    ),
                    SizedBox(
                      width: 135,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(sevenDay[index].image!),
                            width: 40,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            sevenDay[index].name!,
                            style: custom_textStyle(14, Colors.white),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "+" + sevenDay[index].max.toString() + "\u00B0",
                          style: custom_textStyle(20, Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "+" + sevenDay[index].min.toString() + "\u00B0",
                          style: custom_textStyle(20, Colors.white),
                        ),
                      ],
                    )
                  ],
                ));
          }),
    );
  }
}
