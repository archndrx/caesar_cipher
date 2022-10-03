class Logic {
  String caesar(String text, int key, int encrypt) {
    String result = "";

    for (var i = 0; i < text.length; i++) {
      int char = text.codeUnitAt(i), offset, x;

      if (char >= 'a'.codeUnitAt(0) && char <= 'z'.codeUnitAt(0))
        offset = 97;
      else if (char >= 'A'.codeUnitAt(0) && char <= 'Z'.codeUnitAt(0))
        offset = 65;
      else if (char == ' '.codeUnitAt(0)) {
        result += " ";
        continue;
      }

      if (encrypt == 1)
        x = (char + key - offset) % 26;
      else
        x = (char - key - offset) % 26;

      result += String.fromCharCode(x + offset);
    }
    return result;
  }
}
