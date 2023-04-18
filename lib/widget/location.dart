import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  final String secilenSehir;

  const LocationWidget({super.key, required this.secilenSehir});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Ankara",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
