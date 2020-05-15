import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:baixing_life/core/sizefit/flutter_sizefit.dart';
import 'package:baixing_life/core/model/home_model.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class XYHomeSwiper extends StatelessWidget {
  XYHomeSwiper({
    Key key,
    this.swiperDataList
  });
  
  final List<Slide> swiperDataList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 333.rpx,
      child: Swiper(
        itemCount: swiperDataList.length,
        autoplay: true,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(bottom: 10.0.rpx),
          builder: DotSwiperPaginationBuilder(
            size: 16.rpx,
            activeSize: 16.rpx,
            space: 8.rpx,
            color: Colors.grey[300],
            activeColor: Colors.black
          )
        ),
        itemBuilder: (BuildContext context,int index) {
          return InkWell(
            child: Image(
              image: CachedNetworkImageProvider(swiperDataList[index].image),
              fit: BoxFit.fill
            ),
            onTap: () {
              print("点击了广告");
            },
          );
        },
      )
    );
  }
}