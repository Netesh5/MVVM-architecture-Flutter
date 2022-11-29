abstract class BaseAPIService {
  Future<dynamic> getGetApiResponse(String Url);
  Future<dynamic> getPostApiResponse(String Url, dynamic data);
}
