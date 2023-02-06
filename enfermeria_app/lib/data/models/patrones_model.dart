import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

//Se asiganara a una instancia de la clase y los argumentos se almacenan como variables de instancia dentro de la clase y pueden ser accedidos
//y modificados a través de una instancia de la clase.
class patrones_model {
  patrones_model(
      {required this.titulo,
      required this.titulo2,
      required this.titulo3,
      required this.titulo4,
      required this.titulo5,
      required this.subtitulo,
      required this.descripcion,
      required this.Matriz,
      required this.Matriz2,
      required this.imagen});

  final String titulo;
  final String titulo2;
  final String titulo3;
  final String titulo4;
  final String titulo5;
  final String subtitulo;
  final String descripcion;
  final String imagen;
  final List<dynamic> Matriz;
  final List<dynamic> Matriz2;

  //definimos una función de fábrica para crear un objeto de la clase patrones_model a partir de un objeto QueryDocumentSnapshot
  //extraemos los valores de los campos especificos

  factory patrones_model.fromMap(
          QueryDocumentSnapshot<Map<String, dynamic>> json) =>
      patrones_model(
          titulo: json['Title'],
          titulo2: json['Titulo'],
          titulo3: json['Titulo2'],
          titulo4: json['Titulo3'],
          titulo5: json['Titulo4'],
          subtitulo: json['Subtitulo'],
          descripcion: json['Descripcion'],
          Matriz: json['Matriz'],
          Matriz2: json['Matriz2'],
          imagen: json['ImagenT']);
  //Firebase da informacion en formato clave valor, se hace el mapeado para colocar la informacion en la que firebase pide

  Map<String, dynamic> toMap() => {
        'Title': titulo,
        'Titulo': titulo2,
        'Titulo2': titulo3,
        'Titulo3': titulo4,
        'Titulo4': titulo5,
        'Subtitulo': subtitulo,
        'Descripcion': descripcion,
        'Matriz': Matriz,
        'Matriz2': Matriz2,
        'ImagenT': imagen
      };
}
