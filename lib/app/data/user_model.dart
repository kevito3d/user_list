import 'dart:convert';

// lista de usuarios a json
String usuariosToJson(List<Usuario> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// json a lista de usuarios
List<Usuario> usuariosFromJson(String str) => List<Usuario>.from(json.decode(str).map((x) => Usuario.fromJson(x)));

class Usuario {
  String id;
  String nombre;
  int edad;
  String profesion;

  Usuario({required this.id, required this.nombre, required this.edad, required this.profesion});

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        id: json['id'],
        nombre: json['nombre'],
        edad: json['edad'],
        profesion: json['profesion'],
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'edad': edad,
        'profesion': profesion,
      };
}
