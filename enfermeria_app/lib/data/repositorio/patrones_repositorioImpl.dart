import 'package:enfermeria_app/data/models/patrones_model.dart';
import 'package:enfermeria_app/data/repositorio/patrones_repositorio.dart';
import 'package:enfermeria_app/data/service/firestore_service.dart';

//definimos todos los metodos de la clase abstracta y
//llamamos a los metodos que tenemos en el servicio de Firbase

class patrones_repositorioImpl extends patrones_repositorio {
  final fierstore_service _FirebaseService;

  patrones_repositorioImpl(this._FirebaseService)
      : assert(_FirebaseService != null);

  @override
  Stream<List<patrones_model>> getPatrones(String nameCollection) {
    // TODO: implement getPatrones

    return _FirebaseService.getPatrones(nameCollection);
  }
}
