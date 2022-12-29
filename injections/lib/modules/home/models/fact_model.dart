import 'package:injections/shared/http/http_result.dart';

class FactModel {
  final String message;
  final int length;

  FactModel({required this.message, required this.length});

  factory FactModel.fromJson(Json json) {
    return FactModel(
      message: json['fact'],
      length: json['length']?.toInt(),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FactModel &&
        message == other.message &&
        length == other.length;
  }

  @override
  int get hashCode {
    return message.hashCode ^ length.hashCode;
  }
}
