import 'http_request.dart';
import 'package:baixing_life/core/model/home_model.dart';

class XYHomeRequest {
  static Future<HomeModel> getHomeData() async {
    // 1.发送网络请求
    final url = '/homePageContent';
    final params = {'lon':'115.02932','lat':'35.76189'};
    final json = await HttpRequest.request(url, method: 'post', params: params);
    
    // 2.json转modal
    final homeModel = HomeModel.fromJson(json);
    return homeModel;
  }
}