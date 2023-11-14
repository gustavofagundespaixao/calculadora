import 'package:calculadora/events/calculator_event.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class AppController extends ChangeNotifier {
  String value = '0';

  void onButtonClick(CalculatorEvent event) {
    if (event is CommonEvent) {
      var lastValue = value[value.length - 1];

      if (value == '0') {
        value = '';
      }

      if ((lastValue == '/' ||
              lastValue == 'x' ||
              lastValue == '-' ||
              lastValue == '+' ||
              lastValue == '.') &&
          (event.value == '/' ||
              event.value == 'x' ||
              event.value == '-' ||
              event.value == '+' ||
              event.value == '.')) {
        return;
      }

      value += event.value;
    } else if (event is ClearEvent) {
      value = '0';
    } else if (event is ClearEntryEvent) {
      value = '0';
    } else if (event is EqualsEvent) {
      final v = value.interpret();
      value = '$v';
    } else if (event is RemoveEvent) {
      if (value != '0') {
        value = value.substring(0, value.length - 1);
      }

      if (value == '') {
        value = '0';
      }
    }

    notifyListeners();
  }
}
