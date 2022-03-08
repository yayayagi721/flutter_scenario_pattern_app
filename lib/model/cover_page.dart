import 'package:scenario_pattern_app/model/page.dart';

class CoverPage extends Page {
  late final String title;
  late final String mainImagePath;
  CoverPage(this.title, this.mainImagePath);
}

class BackCoverPage extends Page {
  late final String comment;
  BackCoverPage(this.comment);
}
