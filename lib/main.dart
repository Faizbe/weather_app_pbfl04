import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_pbfl04/pages/settings_page.dart';
import 'package:weather_app_pbfl04/pages/weather_home_page.dart';
import 'package:weather_app_pbfl04/providers/weather_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'RobotoSlab',
          brightness: Brightness.dark
        ),
        home: WeatherHomePage(),
        routes: {
          WeatherHomePage.routeName : (context) => WeatherHomePage(),
          SettingsPage.routeName : (context) => SettingsPage(),
        },
      ),
    );
  }
}

