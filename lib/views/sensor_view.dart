import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class SensorView extends StatelessWidget {
  const SensorView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AccelerometerEvent>(
      stream: accelerometerEvents,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Center(
            child: Text('Acelerómetro: ${snapshot.data}'),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
