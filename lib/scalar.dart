import 'ops.dart';

Scalar newScalar(num value) {
  return Scalar(value, Op.na);
}

class Scalar {
  num value;
  Op op;

  Scalar(this.value, this.op);

  Scalar operator +(covariant Scalar other) {
    var result = _doOp(value + other.value, Op.add);
    return result;
  }

  Scalar operator -(covariant Scalar other) {
    var result = _doOp(value - other.value, Op.sub);
    return result;
  }

  Scalar _doOp(num resultVal, Op op) {
    return Scalar(resultVal, op);
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
