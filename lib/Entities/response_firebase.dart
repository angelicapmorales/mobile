import 'package:third_application/Entities/registros.dart';

class ResponseFirebase{

  List<Registros>? registros;

  ResponseFirebase({this.registros});

  ResponseFirebase.fromJson(List<dynamic> json) {
    registros = json
        .map((e) => Registros.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
  }
}