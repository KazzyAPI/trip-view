import 'package:flutter/material.dart';
import 'package:tripview/home/home_controller.dart';
import 'package:tripview/home/home_view.dart';
import 'package:tripview/settings/settings_controller.dart';
import 'package:tripview/trips/trips_controller.dart';

void main() {
  runApp(const MyApp());
}

SettingsController _settingsController = SettingsController();
TripsController _tripsController = TripsController();
final HomeController _homeController = HomeController(
  _settingsController,
  _tripsController,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.orange)),
        title: 'Flutter Demo',
        home: HomeView(
          homeController: _homeController,
        ));
  }
}
