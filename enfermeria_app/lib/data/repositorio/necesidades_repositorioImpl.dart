import 'package:enfermeria_app/data/models/necesidades_model.dart';
import 'package:enfermeria_app/data/repositorio/necesidades_repositorio.dart';
import 'package:firebase_core/firebase_core.dart';

import '../service/firestore_service.dart';
//definimos todos los metodos de la clase abstracta y
//llamamos a los metodos que tenemos en el servicio de Firbase

class necesidades_repositorioImpl extends necesidades_repositorio {
  final fierstore_service _FirebaseService;

  necesidades_repositorioImpl(this._FirebaseService)
      : assert(_FirebaseService != null);

  @override
  Stream<List<necesidades_model>> getNecesidades(String nameCollection) {
    // TODO: implement getNecesidades

    return _FirebaseService.getNecesidades(nameCollection);
  }
}
