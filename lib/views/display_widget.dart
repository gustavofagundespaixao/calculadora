import 'package:calculadora/controllers/app_controller.dart';
import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  final AppController controller;
  const DisplayWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          controller.value,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
