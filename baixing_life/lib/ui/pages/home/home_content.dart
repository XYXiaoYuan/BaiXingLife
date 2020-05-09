import 'package:flutter/material.dart';
import 'package:baixing_life/core/model/home_model.dart';
import 'package:baixing_life/core/services/home_request.dart';
import 'package:baixing_life/ui/pages/home/home_swiper.dart';
import 'package:baixing_life/ui/pages/home/home_top_navigator.dart';
import 'package:baixing_life/ui/pages/home/home_middle_shop.dart';
import 'package:baixing_life/ui/pages/home/home_recommend.dart';
import 'package:baixing_life/ui/pages/home/home_floor.dart';
import 'package:baixing_life/ui/pages/home/home_middle_ad.dart';

class XYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<HomeModel>(
      future: XYHomeRequest.getHomeData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
        if (snapshot.error != null) return Center(child: Text("请求失败"),);

        final homeData = snapshot.data;
        return ListView(
          children: <Widget>[
            XYHomeSwiper(homeData.slides),
            XYHomeTopNavigator(homeData.category),
            XYHomeMiddleShop(homeData),
            XYHomeMiddleAd([
              homeData.saoma,
              homeData.integralMallPic,
              homeData.newUser
            ]),
            XYHomeRecommend(homeData.recommend),
            XYHomeFloor(homeData),
            
          ]
        );
      });
  }
}