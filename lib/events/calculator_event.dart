abstract class CalculatorEvent {
  final String value;

  CalculatorEvent(this.value);
}

class CommonEvent extends CalculatorEvent {
  CommonEvent(super.value);
}

class ClearEvent extends CalculatorEvent {
  ClearEvent(super.value);
}

class ClearEntryEvent extends CalculatorEvent {
  ClearEntryEvent(super.value);
}

class EqualsEvent extends CalculatorEvent {
  EqualsEvent(super.value);
}

class RemoveEvent extends CalculatorEvent {
  RemoveEvent(super.value);
}
