import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';

import 'Utils.dart';

/// Checks if you are awesome. Spoiler: you are.
class TranslationBuilder extends Builder {
  @override
  FutureOr<void> build(BuildStep buildStep) async {
    List<String> labels = [];
    AssetId assetId = buildStep.inputId;
    String content = await buildStep.readAsString(assetId);

    List<String> splitted = content.split("\n");
    for (String s in splitted) {
      String label = Utils.getLabel(s);
      if (label != null) {
        labels.add(label);
      }
    }

    if (labels.isNotEmpty) {
      Directory dir = Directory('locale');
      List<FileSystemEntity> entries = dir.listSync(recursive: false).toList();
      for (FileSystemEntity entity in entries) {
        String fileContent = File(entity.path).readAsStringSync();
        Map<String, dynamic> jsonData = json.decode(fileContent);
        for (String l in labels) {
          if (!jsonData.containsKey(l)) {
            jsonData.putIfAbsent(l, () => "");
          }
        }
        File(entity.path).writeAsStringSync(json.encode(jsonData));
      }
    }
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        ".dart": [".json"],
      };
}
