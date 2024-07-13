import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  String? message = "Terjadi Kesalahan Server";
  int statusCode;
  Failure(this.message, this.statusCode);
  @override
  List<Object?> get props => [message, statusCode];
}

class ServerFailure extends Failure {
  ServerFailure({
    required String? message,
    required int statusCode,
  }) : super(message, statusCode);
}

class ClientFailure extends Failure {
  ClientFailure({
    required String message,
  }) : super(message, 500);
}
