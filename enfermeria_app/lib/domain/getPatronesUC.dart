import 'package:enfermeria_app/data/models/necesidades_model.dart';
import 'package:enfermeria_app/data/models/patrones_model.dart';
import 'package:enfermeria_app/data/repositorio/patrones_repositorio.dart';
import 'package:enfermeria_app/domain/getNecesidadesUC.dart';

class getPatronesUC {
  final patrones_repositorio _Patrones_Repositorio;

  getPatronesUC(this._Patrones_Repositorio) : assert(patrones_model != null);

  Stream<List<patrones_model>> CallPatrones(String nameCollection) {
    return _Patrones_Repositorio.getPatrones(nameCollection);
  }
}
