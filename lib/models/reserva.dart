class Reserva {
  Reserva({
    required this.titulo,
    required this.dateTime,
  });

  Reserva.fromJson(Map<String, dynamic> json)
      : titulo = json['titulo'] as String,
        dateTime = DateTime.parse(json['dateTime'] as String);

  final String titulo;
  final DateTime dateTime;

  Map<String, dynamic> toJson() {
    return {
      'titulo': titulo,
      'dateTime': dateTime.toIso8601String(),
    };
  }
}