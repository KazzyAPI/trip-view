import 'package:flutter/material.dart';
import 'package:tripview/components/trip_information_box.dart';
import 'package:tripview/home/home_controller.dart';
import 'package:tripview/settings/settings_view.dart';
import 'package:tripview/trips/trips_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.homeController});
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: AnimatedBuilder(
            animation: homeController,
            builder: (context, snapshot) {
              return BottomNavigationBar(
                currentIndex: homeController.currentIndex,
                onTap: (value) => homeController.updateCurrentIndex(
                  value,
                  context,
                ),
                selectedItemColor: Colors.orange,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.train),
                    label: 'Trips',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'Settings',
                  ),
                ],
              );
            }),
        backgroundColor: const Color.fromARGB(239, 240, 240, 240),
        appBar: AppBar(
          leading: const Icon(
            Icons.train,
            color: Colors.white,
          ),
          title: const Text(
            "Tripview",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: AnimatedBuilder(
            animation: homeController,
            builder: (context, snapshot) {
              return IndexedStack(
                index: homeController.currentIndex,
                children: [
                  HomePage(),
                  TripsView(
                    controller: homeController.tripsController,
                  ),
                  SettingsView(
                    controller: homeController.settingsController,
                  ),
                ],
              );
            }));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          TripInformationBox(),
        ],
      ),
    );
  }
}
