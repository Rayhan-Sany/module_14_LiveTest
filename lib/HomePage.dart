import 'package:accuweatherpractice/weatherDetails.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final WeatherDetails _weatherDetails = WeatherDetails();
  final List weatherDetailList =[];

  @override
  Widget build(BuildContext context) {
   final weatherDetailList = _weatherDetails.getWeatherDetailList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Info App'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Card(
                elevation: 6,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: myListTile(weatherDetailList,index),
              ),
              itemCount: weatherDetailList.length,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }

  ListTile myListTile(List weatherDetailList, index) {
    return ListTile(
      title: Text('City : ${weatherDetailList[index]['city']}'),
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Temperature : ${weatherDetailList[index]['temperature']}'),
        Text('Condition : ${weatherDetailList[index]['condition']}'),
        Text('Humidity : ${weatherDetailList[index]['humidity']}%'),
        Text('WindSpeed : ${weatherDetailList[index]['windSpeed']}'),
      ]),
    );
  }
}
