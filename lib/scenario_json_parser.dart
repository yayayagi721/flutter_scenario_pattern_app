import 'dart:convert';

import 'package:scenario_pattern_app/model/cover_page.dart';
import 'package:scenario_pattern_app/model/material_page.dart';
import 'package:scenario_pattern_app/model/page.dart';
import 'package:scenario_pattern_app/model/process_page.dart';

class ScenarioJsonParser {
  List<Page> parse(String jsonStr) {
    final _map = json.decode(jsonStr);
    List<Page> pages = [];

    List _contents = _map["contensts"];

    _contents.map((pageObj) {
      switch (pageObj["kind"]) {
        case "cover":
          pages.add(CoverPage(_map["title"], pageObj["cover_image_path"]));
          break;
        case "material":
          final materials = pageObj.map((material) {
            return Material(
                material["name"], material["unit_symbol"], material["amount"]);
          });
          pages.add(MaterialPage(materials));
          break;
        case "process":
          pages.add(ProcessPage(
              pageObj["operation"], pageObj.containsKey('operation')));
          break;
        default:
          throw Exception("hoge");
      }
    });

    //表紙を作る

    //素材ページを作る

    //手順を作る

    print(_map);

    return [];
  }
}
