class Utils {
  static RegExp regExp = RegExp(
    r'EzTranslator\.of\(context\)\.text\(".*\)',
    multiLine: true,
  );

  static RegExp regExp2 = RegExp(
    r"EzTranslator\.of\(context\)\.text\('.*\)",
    multiLine: true,
  );

  static String START = "EzTranslator.of(context).text(\"";

  static String END = "\"";

  static String START2 = "EzTranslator.of(context).text('";

  static String END2 = "'";

  static String getLabel(String line) {
    if (regExp.hasMatch(line)) {
      RegExpMatch match = regExp.firstMatch(line);
      String sub = line.substring(match.start, match.end);
      sub = sub.substring(START.length);
      String label = sub.substring(0, sub.indexOf(END));
      return label;
    } else if (regExp2.hasMatch(line)) {
      RegExpMatch match = regExp2.firstMatch(line);
      String sub = line.substring(match.start, match.end);
      sub = sub.substring(START2.length);
      String label = sub.substring(0, sub.indexOf(END2));
      return label;
    }
    return null;
  }
}
