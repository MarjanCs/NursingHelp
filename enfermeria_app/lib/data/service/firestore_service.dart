import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enfermeria_app/data/models/necesidades_model.dart';
import 'package:enfermeria_app/data/models/patrones_model.dart';

class fierstore_service {
  FirebaseFirestore bd = FirebaseFirestore.instance;

  //creamos el metodo para llamar toda la informacion de firebase
  Stream<List<necesidades_model>> getNecesidades(String nameCollection) {
    final resCollection = bd.collection(nameCollection);
    return resCollection.snapshots().map((event) {
      return event.docs.map((e) => necesidades_model.fromMap(e)).toList();
    });
  }

  Stream<List<patrones_model>> getPatrones(String nameCollection) {
    final resCollection = bd.collection(nameCollection);
    return resCollection.snapshots().map((event) {
      return event.docs.map((e) => patrones_model.fromMap(e)).toList();
    });
  }
}
