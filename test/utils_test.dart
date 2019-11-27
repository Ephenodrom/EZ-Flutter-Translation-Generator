import 'package:ez_flutter_translation_generator/src/Utils.dart';
import "package:test/test.dart";

void main() {
  test('Test getLabel', () {
    expect(
        Utils.getLabel('EzTranslator.of(context).text("WELCOME");'), "WELCOME");
    expect(
        Utils.getLabel("EzTranslator.of(context).text('WELCOME');"), "WELCOME");
    expect(
        Utils.getLabel(
            'EzTranslator.of(context).text("WELCOME", replace: {"fname":"Jon"});'),
        "WELCOME");
    expect(
        Utils.getLabel(
            "EzTranslator.of(context).text('WELCOME', replace: {'fname':'Jon'});"),
        "WELCOME");
  });
}
