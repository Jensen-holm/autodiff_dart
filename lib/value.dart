import 'dart:math';

import 'ops.dart';

class Value {
  num value;
  num grad = 0;
  String? op;

  Function? _backwardFn;
  final List<Value> _prev = [];

  Value(this.value, {this.op});

  Value operator +(covariant Value other) {
    var result = Value(value + other.value, op: addOp);
    result._prev.addAll([this, other]);
    _backwardFn = () => {
          grad += result.grad,
          other.grad += result.grad,
        };

    return result;
  }

  Value operator *(covariant Value other) {
    var result = Value(value * other.value, op: mulOp);
    result._prev.addAll([this, other]);
    _backwardFn = () => {
          grad += (other.value * result.grad),
          other.grad += (value * result.grad),
        };

    return result;
  }

  Value operator ^(covariant Value other) {
    var result = Value(pow(value, other.value), op: powOp);
    result._prev.addAll([this, other]);
    _backwardFn = () => {
          grad += ((other.value * pow(value, other.value - 1)) * result.grad),
        };

    return result;
  }

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

  List<dynamic> _buildTopoOrder(Value root, Set visited, List<dynamic> topo) {
    if (visited.contains(root)) {
      return topo;
    }

    visited.add(root);
    for (var child in root._prev) {
      topo = _buildTopoOrder(child, visited, topo);
    }

    topo.add(root);
    return topo;
  }

  void backward() {
    var topo = [];
    Set<Value> visited = {};
    topo = _buildTopoOrder(this, visited, topo);

    grad = 1;
    for (var idx = topo.length; idx >= 0; idx--) {
      var val = topo[idx];
      if (val._prev.length < 1) {
        break; // should mean root node
      }
      val._backwardFn();
    }
  }
}
