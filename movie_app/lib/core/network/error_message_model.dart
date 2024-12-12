import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final String statusMessage;
  final bool status;
  final int statusuCode;

  const ErrorModel({
    required this.statusMessage,
    required this.status,
    required this.statusuCode,
  });
  factory ErrorModel.fromMJson(Map<String, dynamic> json) {
    return ErrorModel(
      status: json['success'],
      statusMessage: json['status_message'],
      statusuCode: json['status_code'],
    );
  }
  
  @override
  List<Object?> get props => [status,statusMessage,statusuCode];
}
