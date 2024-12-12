import 'package:movie_app/core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorModel errorModel;

  const ServerException({required this.errorModel});
}

class LocalDatabaseException implements Exception {
  final ErrorModel errorModel;

  LocalDatabaseException({required this.errorModel});
}
