import 'ops.dart';

class Scalar {
  Op op;
  num value;
  num grad = 0;

  Scalar(this.value, [this.op = Op.na]);

  Scalar operator +(covariant Scalar other) {
    var result = Scalar(value + other.value, Op.add);
    return result;
  }

  Scalar operator -(covariant Scalar other) {
    var result = Scalar(value - other.value, Op.sub);
    return result;
  }

  Scalar operator *(covariant Scalar other) {
    var result = Scalar(value * other.value, Op.mul);
    return result;
  }

  void backward() {
    // TODO : implement backpropagation
    // right now does nothing
  }

  @override
  bool operator ==(covariant Scalar other) {
    return value == other.value;
  }

  @override
  int get hashCode => value.hashCode ^ op.hashCode;

  @override
  String toString() {
    return "Scalar Object{value: $value, op: $op}";
  }
}
