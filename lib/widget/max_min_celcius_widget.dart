import 'package:flutter/material.dart';

class MaxMinCelciusWidget extends StatelessWidget {
  const MaxMinCelciusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const <Widget>[
        Text(
          "Maksimum : ${24} ℃",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "Minimum  : ${12} ℃",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
