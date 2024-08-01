enum Op {
  na,
  add,
  sub,
  mul,
}

Number newNumber(num value) {
  return Number(value, Op.na);
}

Number _opResult(num resultVal, Op op) {
  return Number(resultVal, op);
}

class Number {
  num value;
  Op op;

  Number(this.value, this.op);

  Number operator +(covariant Number other) {
    var result = _opResult(value + other.value, Op.add);
    return result;
  }

  Number operator -(covariant Number other) {
    var result = _opResult(value - other.value, Op.sub);
    return result;
  }
}
