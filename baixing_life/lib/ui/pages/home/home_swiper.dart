import 'package:flutter/material.dart';
import 'package:baixing_life/core/sizefit/flutter_sizefit.dart';
import 'package:baixing_life/core/model/home_model.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class XYHomeSwiper extends StatelessWidget {
  XYHomeSwiper(this._swiperDataList);
  
  final List<Slide> _swiperDataList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      height: 166.px,
      child: Swiper(
        itemCount: _swiperDataList.length,
        autoplay: true,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(bottom: 5.px),
          builder: DotSwiperPaginationBuilder(
            size: 8,
            activeSize: 8,
            space: 4,
            color: Colors.grey[300],
            activeColor: Colors.black
          )
        ),
        itemBuilder: (BuildContext context,int index){
          return InkWell(
            child: Image.network(
              "${_swiperDataList[index].image}",
              fit:BoxFit.fill
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