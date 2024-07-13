import 'package:equatable/equatable.dart';
import 'package:weatherify_app/domain/entities/locations.dart';

class SearchLocationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingSLS extends SearchLocationState {}

class SuccessSLS extends SearchLocationState {
  Locations data;
  SuccessSLS(this.data);
}

class ErrorSLS extends SearchLocationState {
  String? message;
  ErrorSLS(this.message);
}
