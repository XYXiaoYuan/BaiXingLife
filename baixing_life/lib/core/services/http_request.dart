import 'package:dio/dio.dart';
import 'config.dart';
import 'dart:convert';

class HttpRequest {

  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseURL, 
      connectTimeout: HttpConfig.timeout
  );
  static final Dio dio = Dio(baseOptions);

  static Future<T> request<T>(String url, {
                      String method = "get",
                      Map<String, dynamic> params,
                      Interceptor inter}) async {
    // 1.创建单独配置
    final options = Options(method: method);

    // 2.全局拦截器 
    addInterceptor(inter, dio);

    // 3.发送网络请求
    try {
      Response response = await dio.request(
        url, 
        queryParameters: params, 
        options: options
      );
      print(response.data);
      final jsons = json.decode(response.data.toString());
      if (jsons['code'] == '0') {
        return jsons['data'];
      } else {
        return Future.error('请求失败');
      }
    } on DioError catch(e) {
      return Future.error(e);
    }
  }

  // 全局拦截器
  static addInterceptor(Interceptor inter, Dio dio) {
    // 创建默认的全局拦截器
    Interceptor dInter = InterceptorsWrapper(
      onRequest: (options) {
        print("请求拦截");
        return options;
      },
      onResponse: (response) {
        print("响应拦截");
        return response;
      },
      onError: (err) {
        print("错误拦截");
        return err;
      }
    );
    List<Interceptor> inters = [dInter];

    // 请求单独拦截器
    if (inter != null) {
      inters.add(inter);
    }

    // 统一添加到拦截器中
    dio.interceptors.addAll(inters);
  }
}