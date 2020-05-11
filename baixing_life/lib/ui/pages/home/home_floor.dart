import 'package:flutter/material.dart';
import 'package:baixing_life/core/sizefit/flutter_sizefit.dart';
import 'package:baixing_life/core/model/home_model.dart';

class XYHomeFloor extends StatelessWidget {
  XYHomeFloor(this._homeData);

  final HomeModel _homeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _SingleFloor(_homeData.floor1Pic, _homeData.floor1),
        _SingleFloor(_homeData.floor2Pic, _homeData.floor2),
        _SingleFloor(_homeData.floor3Pic, _homeData.floor3),
      ],
    );
  }
}

class _SingleFloor extends StatelessWidget {
  _SingleFloor(
    this._picture,
    this._floorGoodsList
  );

  final AdvertesPicture _picture;
  final List<Floor> _floorGoodsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _FloorTitle(_picture),
        _FloorContent(_floorGoodsList),
      ],
    );
  }
}

class _FloorTitle extends StatelessWidget {
  _FloorTitle(this._picture);

  final AdvertesPicture _picture;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0.rpx),
      child: Image.network(_picture.pictureAddress),
    );
  }
}

class _FloorContent extends StatelessWidget {
  _FloorContent(this._floorGoodsList);

  final List<Floor> _floorGoodsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _firstRow(context),
          _otherGoods(context)
        ],
      ),
    );
  }

  Widget _firstRow(BuildContext context) {
    return Row(
      children: <Widget>[
        _goodsItem(context, _floorGoodsList[0]),
        Column(
          children: <Widget>[
           _goodsItem(context, _floorGoodsList[1]),
           _goodsItem(context, _floorGoodsList[2]),
          ],
        )
      ],
    );
  }

  Widget _otherGoods(BuildContext context) {
    return Row(
      children: <Widget>[
       _goodsItem(context, _floorGoodsList[3]),
       _goodsItem(context, _floorGoodsList[4]),
      ],
    );
  }

  Widget _goodsItem(BuildContext context, Floor goods) {
    return Container(
      width: 375.rpx,
      child: InkWell(
        onTap:() {
          // Application.router.navigateTo(context, "/detail?id=${goods['goodsId']}");
        },
        child: Image.network(goods.image),
      ),
    );
  }
}