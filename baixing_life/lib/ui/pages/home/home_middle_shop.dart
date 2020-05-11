import 'package:flutter/material.dart';
import 'package:baixing_life/core/sizefit/flutter_sizefit.dart';
import 'package:baixing_life/core/model/home_model.dart';
import 'package:url_launcher/url_launcher.dart';

class XYHomeMiddleShop extends StatelessWidget {
  XYHomeMiddleShop(
    this._homeData, 
  );

  final HomeModel _homeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(top: 10.0.rpx),
              color: Colors.white,
              child: Image.network(_homeData.advertesPicture.pictureAddress),
            ),
            onTap: _launchURL,
          ),
          Container(
            child: InkWell(
              child: Image.network(_homeData.shopInfo.leaderImage),
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL() async {
    String url = 'tel:' + _homeData.shopInfo.leaderPhone;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}