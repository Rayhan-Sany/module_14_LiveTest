import 'package:accuweatherpractice/weatherDetails.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
 final WeatherDetails _weatherDetails = WeatherDetails();
 List weatherDetailList =[];
  @override
  Widget build(BuildContext context) {
    weatherDetailList = _weatherDetails.getWeatherDetailList();
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text('Weather Info App'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title:Text('City : ${weatherDetailList[index]['city']}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text('Temperature : ${weatherDetailList[index]['temperature']}'),
                  Text('Condition : ${weatherDetailList[index]['condition']}'),
                  Text('Humidity : ${weatherDetailList[index]['humidity']}%'),
                  Text('WindSpeed : ${weatherDetailList[index]['windSpeed']}'),
                ]),
              ),itemCount:weatherDetailList.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(12)),),
        ],
      ),
    );
  }
}
