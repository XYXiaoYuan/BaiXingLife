import 'package:flutter/material.dart';
import 'package:baixing_life/core/sizefit/flutter_sizefit.dart';
import 'package:baixing_life/core/model/home_model.dart';

class XYHomeMiddleAd extends StatelessWidget {
  XYHomeMiddleAd(this._ads);

  final List<AdvertesPicture> _ads;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340.rpx,
      padding: EdgeInsets.only(top: 10.0.rpx),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _ads.length,
        itemBuilder: (context, index){
          return _item(context, index);
        },
      ),
    );
  }

  Widget _item(BuildContext context, int index) {
    return InkWell(
      onTap: (){
        //  Application.router.navigateTo(context,"/detail?id=${_recommendList[index]['goodsId']}");
      },
      child: Image.network(_ads[index].pictureAddress),
    );
  }
}