import 'package:calculadora/controllers/app_controller.dart';
import 'package:calculadora/views/buttons_widget.dart';
import 'package:calculadora/views/display_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = AppController();

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(_listener);
    controller.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: DisplayWidget(controller: controller),
          ),
          Expanded(
            flex: 4,
            child: ButtonsWidget(controller: controller),
          ),
        ],
      ),
    );
  }
}
