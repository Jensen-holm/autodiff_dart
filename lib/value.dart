import 'ops.dart';

class Value {
  num value;
  num grad = 0;

  Op? op;
  Function? backwardFn;

  Value(this.value, {this.op});

  Value operator +(covariant Value other) {
    var result = Value(value + other.value, op: Op.add);
    return result;
  }

  Value operator -(covariant Value other) {
    var result = Value(value - other.value, op: Op.sub);
    return result;
  }

  Value operator *(covariant Value other) {
    var result = Value(value * other.value, op: Op.mul);
    return result;
  }

  void backward() {}

  @override
  bool operator ==(covariant Value other) {
    return value == other.value;
  }

  @override
  int get hashCode => value.hashCode ^ op.hashCode;

  @override
  String toString() {
    return "Value Object{value: $value, op: $op}";
  }
}
