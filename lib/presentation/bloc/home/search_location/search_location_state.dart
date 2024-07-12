import 'package:equatable/equatable.dart';

class SearchLocationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingSLS extends SearchLocationState {}

class SuccessSLS extends SearchLocationState {}

class ErrorSLS extends SearchLocationState {}
