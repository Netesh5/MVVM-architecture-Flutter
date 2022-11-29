import 'package:mvvmapp/data/response/status.dart';

class APIResponse {
  Status? status;
  String? message;

  APIResponse(this.status, this.message);
  APIResponse.loading() : status = Status.Loading;
  APIResponse.completed() : status = Status.Completed;
  APIResponse.error() : status = Status.Error;
}
