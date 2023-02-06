import 'package:enfermeria_app/data/models/necesidades_model.dart';

abstract class necesidades_repositorio {
  Stream<List<necesidades_model>> getNecesidades(String nameCollection);
}
