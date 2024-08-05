import 'package:test/test.dart';
import 'package:autodiff_dart/scalar.dart';
import 'package:autodiff_dart/ops.dart';

void main() {
  test('Scalar', () {
    var n = Scalar(9);

    expect(n.value, 9);
    expect(n.op, Op.na);
  });

  test('Scalar + Scalar', () {
    var n = Scalar(5);
    var x = Scalar(10);
    var result = x + n;

    identical(Scalar, result);
    expect(result.value, 15);
    expect(result.op, Op.add);
  });

  test('Scalar - Scalar', () {
    var n = Scalar(0);
    var x = Scalar(10);
    var result = n - x;

    identical(Scalar, result);
    expect(result.value, -10);
    expect(result.op, Op.sub);
  });

  test('Scalar * Scalar', () {
    var n = Scalar(4);
    var x = Scalar(5);
    var result = n * x;

    identical(Scalar, result);
    expect(result.value, 20);
    expect(result.op, Op.mul);
  });

  test('Scalar == Scalar', () {
    var n = Scalar(10);
    var x = Scalar(10);

    expect(n == x, isTrue);
    expect(n != x, isFalse);
  });

  test('Scalar hashCode', () {
    var n = Scalar(100);
    var m = Scalar(100);
    var set = <Scalar>{};
    set.add(n);

    expect(set.contains(m), isTrue);
  });
}
