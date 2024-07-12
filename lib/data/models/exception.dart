import 'package:equatable/equatable.dart';

class Exception extends Equatable {
  @override
  List<Object?> get props => [];
}

class ServerException extends Exception {
  String? message = "Terjadi Kesalahan Server";
  final int statusCode;
  ServerException(this.message, this.statusCode);
}

class ClientException extends Exception {
  final String message;
  ClientException(this.message);
}
