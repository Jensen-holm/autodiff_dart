import 'package:autodiff_dart/scalar.dart';

void main(List<String> arguments) {
  // y = 2x + c
  var x = newScalar(5);
  var c = newScalar(10);
  var y = x + c;
  print(y);
}
