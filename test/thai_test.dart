import 'package:flutter_test/flutter_test.dart';

import 'package:thai/thai.dart';

void main() {
  test('', () {
    expect(isThaiCharacter('ทดสอบคำภาษาไทย'), true);
    expect(isThaiCharacter('ทดสอบคำภาษา eng'), false);
    expect(getFirstThaiAlphabet('เกาะ'), 'ก');
    expect(getFirstThaiAlphabet('กอ'), 'ก');
    expect(getFirstThaiAlphabet('ไป'), 'ป');

    var words = [
      'คลอน',
      'เกวียน',
      'แห่ง',
      'ศาลา',
      'สาระ',
      'จักรพรรดิ',
      'แกลบ',
      'ไกล',
      'ไตกง',
      'เกิน',
      'เก็ง',
      'จักรพรรณ',
      'ไต่ไม้',
      'เก่ง',
      'กลอน',
      'เก้ง',
      'เก็บ',
      'ไต้ก๋ง',
      'แหง่',
    ];
    words.sort(comparator);

    expect(words, [
      'กลอน',
      'เก็ง',
      'เก่ง',
      'เก้ง',
      'เก็บ',
      'เกวียน',
      'เกิน',
      'แกลบ',
      'ไกล',
      'คลอน',
      'จักรพรรณ',
      'จักรพรรดิ',
      'ไตกง',
      'ไต้ก๋ง',
      'ไต่ไม้',
      'ศาลา',
      'สาระ',
      'แหง่',
      'แห่ง'
    ]);
  });
}
