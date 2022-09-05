library thai;

bool isThaiCharacter(String string) {
  return string.runes.every((c) => 'ก'.runes.first <= c && c <= '๙'.runes.first);
}

String? getFirstThaiAlphabet(String s) {
  return String.fromCharCode(s.runes.firstWhere((c) {
    return 'ก'.runes.first <= c && c <= 'ฮ'.runes.first;
  }));
}

String removeToneMarks(String s) {
  RegExp regExp = RegExp(r'(็|่|้|๊|๋|์)');
  return s.replaceAll(regExp, '');
}

int comparator(String first, String second) {

  if (first.length > 0 && second.length > 0) {
    if (!isThaiCharacter(first) || !isThaiCharacter(second)) {
      return first.compareTo(second);
    }

    var rmFirstToneMark = removeToneMarks(first);
    var rmSecondToneMark = removeToneMarks(second);

    var firstTHChar = getFirstThaiAlphabet(rmFirstToneMark);
    var secondTHChar = getFirstThaiAlphabet(rmSecondToneMark);

    if (firstTHChar == null || secondTHChar == null) {
      return first.compareTo(second);
    }

    if (firstTHChar != secondTHChar) {
      return firstTHChar.compareTo(secondTHChar);
    }

    if (rmFirstToneMark != rmSecondToneMark) {
      return rmFirstToneMark.compareTo(rmSecondToneMark);
    }
  }

  return first.compareTo(second);
}
