import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.vector).existsSync(), isTrue);
    expect(File(Images.add).existsSync(), isTrue);
    expect(File(Images.arrow3).existsSync(), isTrue);
    expect(File(Images.arrowLeft).existsSync(), isTrue);
    expect(File(Images.arrowRight).existsSync(), isTrue);
    expect(File(Images.ava).existsSync(), isTrue);
    expect(File(Images.bigAva).existsSync(), isTrue);
    expect(File(Images.bigProd).existsSync(), isTrue);
    expect(File(Images.card).existsSync(), isTrue);
    expect(File(Images.carouselPic).existsSync(), isTrue);
    expect(File(Images.filterSquare).existsSync(), isTrue);
    expect(File(Images.home2).existsSync(), isTrue);
    expect(File(Images.messageEdit).existsSync(), isTrue);
    expect(File(Images.one).existsSync(), isTrue);
    expect(File(Images.prod).existsSync(), isTrue);
    expect(File(Images.prod2).existsSync(), isTrue);
    expect(File(Images.prod3).existsSync(), isTrue);
    expect(File(Images.profile).existsSync(), isTrue);
    expect(File(Images.searchNormal).existsSync(), isTrue);
    expect(File(Images.shoppingCart).existsSync(), isTrue);
  });
}
