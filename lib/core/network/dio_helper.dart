import 'package:dio/dio.dart';

import 'api_constants.dart';


class DioHelper{
  static late  Dio dio;
  static void init(){
  dio=Dio(BaseOptions(
    baseUrl:ApiConstants.baseURL,
    receiveDataWhenStatusError: true


  )
  );
}
static Future<Response> getData({required String path,required Map<String,dynamic>query })async{

  return await dio.get(path,queryParameters: query,);
}


}