import 'package:scenario_pattern_app/model/page.dart';
import 'package:scenario_pattern_app/model/scenario.dart';
import 'package:scenario_pattern_app/scenario_json_parser.dart';

class RecipeBookScenario extends Scenario {
  final ScenarioJsonParser _parser = ScenarioJsonParser();

  RecipeBookScenario.fromJson(json) {
    pages = _parser.parse(json);
  }

  @override
  String toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
