import 'package:flutter/material.dart';
import 'package:tripview/settings/settings_controller.dart';
import 'package:tripview/trips/trips_controller.dart';

class HomeController extends ChangeNotifier {
  HomeController(this.settingsController, this.tripsController);
  final SettingsController settingsController;
  final TripsController tripsController;
  int currentIndex = 0;

  List<Widget> pages = [];
  void update() {
    return notifyListeners();
  }

  void updateCurrentIndex(
    int index,
    BuildContext context,
  ) {
    if (index != currentIndex) {
      currentIndex = index;
      update();
      // pageNavigation(currentIndex, context);
    }
  }

  void pageNavigation(int value, BuildContext context) {
    switch (value) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Container();
            },
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Container();
            },
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Container();
            },
          ),
        );
        break;
    }
  }
}
