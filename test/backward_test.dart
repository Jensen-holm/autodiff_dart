import 'dart:math';

import 'package:autodiff_dart/value.dart';
import 'package:test/test.dart';

void main() {
  test('Mul Bakcward', () {
    var a = Value(4);
    var b = Value(5);
    var result = a * b;
    result.backward();
    expect(a.grad == b.value, isTrue);
  });

  test('Pow backward', () {
    var a = Value(2);
    var exp = Value(3);
    var result = a ^ exp;
    result.backward();
    expect(a.grad == (3 * pow(2, 2)), isTrue);
  });

  test('Add backward', () {
    var a = Value(1);
    var b = Value(2);
    var result = a + b;
    result.backward();
    expect(a.grad == 1, isTrue);
    expect(b.grad == 1, isTrue);
  });
}
