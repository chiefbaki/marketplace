import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:marketplace/src/utilsresources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.add).existsSync(), isTrue);
    expect(File(Images.card).existsSync(), isTrue);
  });
}
