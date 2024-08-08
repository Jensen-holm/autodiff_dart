# autodiff_dart

automatic differentiation library for Dart!

![Pub Points](https://img.shields.io/pub/points/autodiff_dart)
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/Jensen-holm/autodiff_dart/dart.yml)
[![Static Badge](https://img.shields.io/badge/Dart_package_link-blue)](https://pub.dev/packages/autodiff_dart)

inspired by [Karpathy's micrograd](https://github.com/karpathy/micrograd), I thought that building this would be a good experience for me to learn dart, and deepen my understanding of backpropagation.

This started as a toy project to get to learn dart, and how automatic differentiation works behind the scenes in neural networks. 

But I do think that this could actually be useful in a calculator application. autodiff_dart could be used to implement derivative functionality in that context. 

## Simple Example

```dart
import 'package:autodiff_dart/value.dart';

void main() {
    // y = mx + b
    var m = Value(3);
    var x = Value(4);
    var b = Value(5);
    var y = m * x + b;

    // compute dy/dx
    y.backward();

    // print gradients
    print("$m\n$x\n$b");
}
```

output: 

```
Value Object{value: 3, op: null, grad: 4}
Value Object{value: 4, op: null, grad: 3}
Value Object{value: 5, op: null, grad: 1}
```

## Contributing

PR's welcome!
