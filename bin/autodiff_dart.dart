import 'package:autodiff_dart/Value.dart';

void main() {
  // y = mx + b
  var m = Value(3);
  var x = Value(4);
  var b = Value(5);
  var y = m * x + b;

  // compute dy/dx (right now does nothing)
  y.backward();
  print("$y = $m * $x + $b");
}
