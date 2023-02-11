import 'package:flutter/material.dart';
import 'package:tripview/trips/trips_controller.dart';

class TripsView extends StatelessWidget {
  const TripsView({super.key, required this.controller});

  final TripsController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
       const  SizedBox(height: 30,),
      ],),
    );
  }
}
