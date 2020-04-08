import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class RenumerEntity extends Equatable {
  final String currency;
  final String type;
  final int value;

  RenumerEntity({
    @required this.currency,
    @required this.type,
    @required this.value,
  });

  List<Object> get props => [
        currency,
        type,
        value,
      ];

  RenumerEntity copyWith({
    String currency,
    String gross,
    int value,
  }) =>
      RenumerEntity(
        currency: currency ?? this.currency,
        type: gross ?? this.type,
        value: value ?? this.value,
      );
}
