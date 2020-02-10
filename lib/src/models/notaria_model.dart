// To parse this JSON data, do
//
//     final notaria = notariaFromJson(jsonString);

import 'dart:convert';

List<Notaria> notariaFromJson(String str) => List<Notaria>.from(json.decode(str).map((x) => Notaria.fromJson(x)));

String notariaToJson(List<Notaria> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Notaria {
    String identificador;
    String nombre;
    String provincia;
    String canton;
    String direccion;
    String telefonos;
    String notario;
    String descripcion;
    String latitudMapa;
    String longitudMapa;
    String provinciaMapa;
    String email;
    String horario;
    String contentType;
    String foto;
    List<NotariosPasivo> notariosPasivos;

    Notaria({
        this.identificador,
        this.nombre,
        this.provincia,
        this.canton,
        this.direccion,
        this.telefonos,
        this.notario,
        this.descripcion,
        this.latitudMapa,
        this.longitudMapa,
        this.provinciaMapa,
        this.email,
        this.horario,
        this.contentType,
        this.foto,
        this.notariosPasivos,
    });

    factory Notaria.fromJson(Map<String, dynamic> json) => Notaria(
        identificador: json["identificador"],
        nombre: json["nombre"],
        provincia: json["provincia"],
        canton: json["canton"],
        direccion: json["direccion"],
        telefonos: json["telefonos"],
        notario: json["notario"],
        descripcion: json["descripcion"],
        latitudMapa: json["latitudMapa"],
        longitudMapa: json["longitudMapa"],
        provinciaMapa: json["provinciaMapa"],
        email: json["email"],
        horario: json["horario"],
        contentType: json["content_type"],
        foto: json["foto"],
        notariosPasivos: json["notariosPasivos"] == null ? null : List<NotariosPasivo>.from(json["notariosPasivos"].map((x) => NotariosPasivo.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "identificador": identificador,
        "nombre": nombre,
        "provincia": provincia,
        "canton": canton,
        "direccion": direccion,
        "telefonos": telefonos,
        "notario": notario,
        "descripcion": descripcion,
        "latitudMapa": latitudMapa,
        "longitudMapa": longitudMapa,
        "provinciaMapa": provinciaMapa,
        "email": email,
        "horario": horario,
        "content_type": contentType,
        "foto": foto,
        "notariosPasivos": notariosPasivos == null ? null : List<dynamic>.from(notariosPasivos.map((x) => x.toJson())),
    };
}

class NotariosPasivo {
    String identificador;
    String nombre;
    String descripcion;
    dynamic contentType;
    dynamic foto;

    NotariosPasivo({
        this.identificador,
        this.nombre,
        this.descripcion,
        this.contentType,
        this.foto,
    });

    factory NotariosPasivo.fromJson(Map<String, dynamic> json) => NotariosPasivo(
        identificador: json["identificador"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        contentType: json["content_type"],
        foto: json["foto"],
    );

    Map<String, dynamic> toJson() => {
        "identificador": identificador,
        "nombre": nombre,
        "descripcion": descripcion,
        "content_type": contentType,
        "foto": foto,
    };
}