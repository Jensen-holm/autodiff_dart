import 'package:test/test.dart';
import 'package:autodiff_dart/value.dart';
import 'package:autodiff_dart/ops.dart';

void main() {
  test('Value', () {
    var n = Value(9);

    expect(n.value, 9);
    expect(n.op, null);
  });

  test('Value + Value', () {
    var n = Value(5);
    var x = Value(10);
    var result = x + n;

    identical(Value, result);
    expect(result.value, 15);
    expect(result.op, Op.add);
  });

  test('Value - Value', () {
    var n = Value(0);
    var x = Value(10);
    var result = n - x;

    identical(Value, result);
    expect(result.value, -10);
    expect(result.op, Op.sub);
  });

  test('Value * Value', () {
    var n = Value(4);
    var x = Value(5);
    var result = n * x;

    identical(Value, result);
    expect(result.value, 20);
    expect(result.op, Op.mul);
  });

  test('Value == Value', () {
    var n = Value(10);
    var x = Value(10);

    expect(n == x, isTrue);
    expect(n != x, isFalse);
  });

  test('Value hashCode', () {
    var n = Value(100);
    var m = Value(100);
    var set = <Value>{};
    set.add(n);

    expect(set.contains(m), isTrue);
  });
}
