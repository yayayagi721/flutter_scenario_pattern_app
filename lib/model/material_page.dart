import 'package:scenario_pattern_app/model/page.dart';

class MaterialPage extends Page {
  late List<Material> materials;
  MaterialPage(this.materials);
}

class Material {
  String name;
  String unitSymbol;
  String amount;
  Material(this.name, this.unitSymbol, this.amount);

  String toJson() =>
      '{"name":"$name","unit_symbol":"$unitSymbol","amount":"$amount"}';
}
