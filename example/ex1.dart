import 'package:autodiff_dart/value.dart';

void main() {
  // y = mx + b
  var m = Value(3);
  var x = Value(4);
  var b = Value(5);
  var y = m * x + b;

  // compute dy/dx
  y.backward();
  print("$y = $m * $x + $b");
}
