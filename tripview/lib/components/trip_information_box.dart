import 'package:flutter/material.dart';

class TripInformationBox extends StatelessWidget {
  const TripInformationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
          ),
          alignment: Alignment.center,
          height: 40,
          width: double.maxFinite,
          child: const Text("Welcome to TripView Lite", style: TextStyle(color: Colors.white),),
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5))),
          width: double.maxFinite,
          child: Column(
            children: const [
              Text("To get started, press the plus button to add a new trip\n", textAlign: TextAlign.center, ),
              Text("By default, this Lite version does not save trips. Tap here for details on how to enabled saved trips.", textAlign: TextAlign.center,),
            ],
          ),
        )
      ],
    );
  }
}
