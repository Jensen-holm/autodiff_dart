import 'package:autodiff_dart/value.dart';

void main() {
  var m = Value(3);
  var x = Value(4);
  var b = Value(5);
  var y = m * x + b;

  // compute dy/dx
  y.backward();

  // print gradients
  print("$m\n$x\n$b");
}
