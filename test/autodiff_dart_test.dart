import 'package:autodiff_dart/autodiff_dart.dart';
import 'package:test/test.dart';

void main() {
  test('Number + Number', () {
    var n = newNumber(5);
    var x = newNumber(10);
    var result = x + n;

    identical(newNumber(15), result);
    expect(result.op, Op.add);
  });

  test('Number - Number', () {
    var n = newNumber(0);
    var x = newNumber(10);
    var result = n - x;

    identical(newNumber(-10), result);
    expect(result.op, Op.sub);
  });
}
