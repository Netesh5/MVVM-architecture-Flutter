import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mvvmapp/data/app_exception.dart';
import 'package:mvvmapp/data/network/baseAPIService.dart';

class NetworkAPIRespone extends BaseAPIService {
  @override
  Future getGetApiResponse(String Url) async {
    try {
      var url = Uri.parse(Url);
      final response = await http.get(url).timeout(const Duration(seconds: 10));
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data;
      } else {
        return BadRequestException("Failed to fetch data");
      }
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
  }

  @override
  Future getPostApiResponse(String Url, dynamic data) async {
    try {
      var url = Uri.parse(Url);
      final response =
          await http.post(url, body: data).timeout(const Duration(seconds: 10));
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data;
      } else {
        return BadRequestException("Faild to send Data");
      }
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
  }
}
