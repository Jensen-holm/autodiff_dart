import 'package:autodiff_dart/scalar.dart';

void main() {
  // y = mx + b
  var m = Scalar(3);
  var x = Scalar(4);
  var b = Scalar(5);
  var y = m * x + b;

  // compute dy/dx (right now does nothing)
  y.backward();
  print("$y = $m * $x + $b");
}
