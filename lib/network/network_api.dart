import 'package:getx_demo/network/base_api_call.dart';
import 'package:dio/dio.dart';

final dio = Dio();

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
  Future<dynamic> postApi(String url, data) {
    throw UnimplementedError();
  }

}