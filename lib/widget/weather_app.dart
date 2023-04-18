import 'package:bloc_weather_app/widget/last_update_widget.dart';
import 'package:bloc_weather_app/widget/location.dart';
import 'package:bloc_weather_app/widget/max_min_celcius_widget.dart';
import 'package:bloc_weather_app/widget/select_city_widget.dart';
import 'package:bloc_weather_app/widget/weather_image_widget.dart';
import 'package:flutter/material.dart';

class WeatherApp extends StatelessWidget {
  String kullanicininSectigiSehir = "Ankara";

  WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () async {
                kullanicininSectigiSehir = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelectCityWidget()));
                debugPrint("Seçilen sehir: $kullanicininSectigiSehir");
              }),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: LocationWidget(
                secilenSehir: kullanicininSectigiSehir,
              )),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: LastUpdateWidget()),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: WeatherImageWidget()),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: MaxMinCelciusWidget()),
            ),
          ],
        ),
      ),
    );
  }
}
