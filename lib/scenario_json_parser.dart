import 'dart:convert';

import 'package:scenario_pattern_app/model/page.dart';

class ScenarioJsonParser {
  List<Page> parse(String jsonStr) {
    final _map = json.decode(jsonStr);
    print(_map);
  }
}
