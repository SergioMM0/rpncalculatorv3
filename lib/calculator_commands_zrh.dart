import 'dart:io';

enum operationType { SUM, SUBTRACT, MULTIPLY, DIVIDE, UNDO }

class CalculatorCommand {
  List<num> numbers = [];
  List<num> lastOperation = [];
  List<num> numbersToUndo = [];
  operationType lastOperationType = operationType.UNDO;

  void operate(operationType type) {
    switch (type) {
      case operationType.SUM:
        numbers.add(getFirstTwoOfStack(numbers)
            .reduce((value, element) => value + element));
        numbersToUndo.addAll(numbers.reversed.take(2));
        numbersToUndo.clear();
        numbers.removeRange(numbers.length - 3, numbers.length - 1);
        lastOperationType = operationType.SUM;
        break;
      case operationType.SUBTRACT:
        numbers.add(getFirstTwoOfStack(numbers)
            .reduce((value, element) => value - element));
        numbers.removeRange(numbers.length - 3, numbers.length - 1);
        numbersToUndo.clear();
        numbersToUndo.addAll(numbers.reversed.take(2));
        lastOperationType = operationType.SUBTRACT;
        break;
      case operationType.MULTIPLY:
        numbers.add(getFirstTwoOfStack(numbers)
            .reduce((value, element) => value * element));
        numbers.removeRange(numbers.length - 3, numbers.length - 1);
        numbersToUndo.clear();
        numbersToUndo.addAll(numbers.reversed.take(2));
        lastOperationType = operationType.MULTIPLY;
        break;
      case operationType.DIVIDE:
        numbers.add(getFirstTwoOfStack(numbers)
            .reduce((value, element) => value / element));
        numbers.removeRange(numbers.length - 3, numbers.length - 1);
        numbersToUndo.clear();
        numbersToUndo.addAll(numbers.reversed.take(2));
        lastOperationType = operationType.DIVIDE;
        break;
      case operationType.UNDO:
        if(lastOperationType == operationType.UNDO){
        }else {
          numbers.removeLast();
          numbers.addAll(numbersToUndo);
          lastOperationType = operationType.UNDO;
        }

    }
  }
}

List<num> getFirstTwoOfStack(List<num> list) {
  return new List.from(list.reversed.take(2));
}

abstract class Command implements Function {
  void act();
}

class Sum implements Command {
  CalculatorCommand calculator;

  Sum(this.calculator);

  void act() {
    calculator.operate(operationType.SUM);
  }
}

class Subtract implements Command {
  CalculatorCommand calculator;

  Subtract(this.calculator);

  void act() {
    calculator.operate(operationType.SUBTRACT);
  }
}

class Multiply implements Command {
  CalculatorCommand calculator;

  Multiply(this.calculator);

  void act() {
    calculator.operate(operationType.MULTIPLY);
  }
}

class Divide implements Command {
  CalculatorCommand calculator;

  Divide(this.calculator);

  void act() {
    calculator.operate(operationType.DIVIDE);
  }
}

class Undo implements Command {
  CalculatorCommand calculator;

  Undo(this.calculator);

  void act() {
    calculator.operate(operationType.UNDO);
  }
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}