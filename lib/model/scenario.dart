import 'package:scenario_pattern_app/model/page.dart';

abstract class Scenario {
  Scenario();
  Scenario.fromJson();

  List<Page> pages = [];
  String toJson();
}
