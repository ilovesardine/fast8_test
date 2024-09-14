import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure({
    required this.message,
    required this.statusCode,
  }) : assert(
          statusCode is int || statusCode is String,
          'Status code cannot be a ${statusCode.runtimeType}',
        );

  final String message;
  final dynamic statusCode;

  String get errorMessage =>
      '$statusCode${statusCode is String ? '' : ' Error'}: $message';

  @override
  List<Object?> get props => [message, statusCode];
}

class JSONFailure extends Failure {
  JSONFailure({required super.message, required super.statusCode});
}
