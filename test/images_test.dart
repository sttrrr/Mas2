import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:docum/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.document).existsSync(), true);
    expect(File(Images.person).existsSync(), true);
    expect(File(Images.request).existsSync(), true);
    expect(File(Images.scaner).existsSync(), true);
  });
}
