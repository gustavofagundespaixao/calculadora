import 'package:calculadora/controllers/app_controller.dart';
import 'package:calculadora/events/calculator_event.dart';
import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  final AppController controller;
  const ButtonsWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      crossAxisCount: 4,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        ButtonWidget(
          onPressed: (value) {
            controller.onButtonClick(ClearEntryEvent(value));
          },
          color: Theme.of(context).primaryColorDark,
          value: 'CE',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(ClearEvent(value));
          },
          color: Theme.of(context).primaryColorDark,
          value: 'C',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(RemoveEvent(value));
          },
          color: Theme.of(context).primaryColorDark,
          value: '<',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent('/'));
          },
          color: Theme.of(context).primaryColorDark,
          value: '÷',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          value: '7',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          value: '8',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          value: '9',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          color: Theme.of(context).primaryColorDark,
          value: 'x',
        ),
        ButtonWidget(
          value: '4',
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          value: '5',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          value: '6',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          color: Theme.of(context).primaryColorDark,
          value: '-',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          value: '1',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          value: '2',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          value: '3',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          color: Theme.of(context).primaryColorDark,
          value: '+',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent('-'));
          },
          color: Theme.of(context).primaryColorDark,
          value: '+/-',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent(value));
          },
          value: '0',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(CommonEvent('.'));
          },
          color: Theme.of(context).primaryColorDark,
          value: ',',
        ),
        ButtonWidget(
          onPressed: (String value) {
            controller.onButtonClick(EqualsEvent(value));
          },
          color: Theme.of(context).primaryColorLight,
          value: '=',
        ),
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final Color? color;
  final void Function(String value) onPressed;
  final String value;

  const ButtonWidget({
    super.key,
    this.color,
    required this.onPressed,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed(value);
      },
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(
        value,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
