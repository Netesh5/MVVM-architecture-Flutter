import 'package:mvvmapp/data/response/status.dart';

class APIResponse<T> {
  Status? status;
  String? message;
  T? data;
  APIResponse(this.status, this.message, this.data);
  APIResponse.loading() : status = Status.Loading;
  APIResponse.completed() : status = Status.Completed;
  APIResponse.error() : status = Status.Error;
  @override
  String toString() {
    return "status:$status \n message:$message \n data:$data";
  }
}
