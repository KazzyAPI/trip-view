import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tripview/components/settings_item.dart';
import 'package:tripview/settings/settings_controller.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({
    super.key,
    required this.controller,
  });

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            SettingsItem(
              icon: IconButton(
                icon: Icon(Icons.location_on_rounded),
                onPressed: () {},
              ),
              title: "Region",
              action: () {},
            ),
          ],
        ),
      ),
    );
  }
}
