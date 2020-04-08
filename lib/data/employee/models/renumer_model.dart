import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:reverse_test/domain/employee/entities/renumer_entity.dart';

class Renumer extends RenumerEntity {
  Renumer({
    @required String currency,
    @required String type,
    @required int value,
  }) : super(
          currency: currency,
          type: type,
          value: value,
        );

  factory Renumer.fromJson(Map<String, dynamic> json) {
    return Renumer(
      currency: json['currency'],
      type: json['type'],
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'currency': currency, 'type': type, 'value': value};
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
