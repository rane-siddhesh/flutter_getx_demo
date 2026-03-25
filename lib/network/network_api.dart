import 'package:getx_demo/network/base_api_call.dart';
import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(headers: {'Content-Type': 'application/json'}));

class NetworkApi extends BaseApiCall{
  @override
  Future<dynamic> getApi(String url) async{
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }

  @override
  Future<dynamic> postApi(String url, data) async{
    final response = await dio.post(url,data: data);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }

  @override
  Future<dynamic> deleteApi(String url) async{
    final response = await dio.delete(url);
    if(response.statusCode == 200) {
      return response.data;
    }
  }

}