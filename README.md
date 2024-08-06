# autodiff_dart

automatic differentiation library for Dart!

[![Static Badge](https://img.shields.io/badge/Dart_package-blue)](https://pub.dev/packages/autodiff_dart)
![Pub Points](https://img.shields.io/pub/points/autodiff_dart)

![GitHub commit activity](https://img.shields.io/github/commit-activity/w/Jensen-holm/autodiff_dart)
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/Jensen-holm/autodiff_dart/dart.yml)

inspired by [Karpathy's micrograd](https://github.com/karpathy/micrograd), I thought that building this would be a good experience for me to learn dart, and deepen my understanding of backpropagation.

This package would be useful as a flutter package in a calculator application where you want the ability to calculate derivatives of functions that users write.


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
    print("$y = $m * $x + $b");
}
```
