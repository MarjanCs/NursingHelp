import 'package:enfermeria_app/data/models/patrones_model.dart';

abstract class patrones_repositorio {
  Stream<List<patrones_model>> getPatrones(String nameCollection);
}
