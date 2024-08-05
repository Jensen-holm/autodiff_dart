import 'package:test/test.dart';
import 'package:autodiff_dart/scalar.dart';
import 'package:autodiff_dart/ops.dart';

void main() {
  test('newScalar', () {
    var n = newScalar(9);

    expect(n.value, 9);
    expect(n.op, Op.na);
  });

  test('Scalar + Scalar', () {
    var n = newScalar(5);
    var x = newScalar(10);
    var result = x + n;

    identical(newScalar, result);
    expect(result.value, 15);
    expect(result.op, Op.add);
  });

  test('Scalar - Scalar', () {
    var n = newScalar(0);
    var x = newScalar(10);
    var result = n - x;

    identical(newScalar, result);
    expect(result.value, -10);
    expect(result.op, Op.sub);
  });

  test('Scalar == Scalar', () {
    var n = newScalar(10);
    var x = newScalar(10);

    expect(n == x, isTrue);
    expect(n != x, isFalse);
  });

  test('Scalar hashCode', () {
    var n = newScalar(100);
    var set = <Scalar>{};
    set.add(n);

    expect(set.contains(n), isTrue);
  });
}
