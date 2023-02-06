import 'package:enfermeria_app/data/models/necesidades_model.dart';
import 'package:enfermeria_app/data/repositorio/necesidades_repositorio.dart';

// Obtengo las necesidades de Firebase

class getNecesidadesUC {
  final necesidades_repositorio _Necesidades_Repositorio;

  getNecesidadesUC(this._Necesidades_Repositorio)
      : assert(necesidades_model != null);

  Stream<List<necesidades_model>> CallNecesidades(String nameCollection) {
    return _Necesidades_Repositorio.getNecesidades(nameCollection);
  }
}
