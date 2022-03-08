import 'package:scenario_pattern_app/model/page.dart';

class ProcessPage extends Page {
  String operation;
  Duration? operationTime;
  ProcessPage(this.operation, [this.operationTime]);
}
