import 'package:flutter/material.dart';
import 'package:baixing_life/core/model/home_model.dart';
import 'package:baixing_life/core/services/home_request.dart';
import './home_swiper.dart';
import './home_top_navigator.dart';
import './home_middle_shop.dart';
import './home_middle_ad.dart';
import './home_recommend.dart';
import './home_floor.dart';

class XYHomeContent extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<HomeModel>(
      future: XYHomeRequest.getHomeData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.error != null) {
          return Center(child: Text("请求失败"),);
        }

        final homeData = snapshot.data;
        return ListView(
          children: <Widget>[
            XYHomeSwiper(swiperDataList: homeData.slides),
            XYHomeTopNavigator(navigatorList: homeData.category),
            XYHomeMiddleShop(homeData: homeData),
            XYHomeMiddleAd(ads: [
              homeData.saoma,
              homeData.integralMallPic,
              homeData.newUser
            ]),
            XYHomeRecommend(recommendList: homeData.recommend),
            XYHomeFloor(homeData: homeData),
            
          ]
        );
      });
  }
}