import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.action});
  final Widget icon;
  final String title;
  final Function() action;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("object");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                const SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                ),
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.chevron_right,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
