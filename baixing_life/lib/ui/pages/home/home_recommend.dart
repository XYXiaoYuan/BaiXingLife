import 'package:flutter/material.dart';
import 'package:baixing_life/core/sizefit/flutter_sizefit.dart';
import 'package:baixing_life/core/model/home_model.dart';

class XYHomeRecommend extends StatelessWidget {
  XYHomeRecommend(this._recommendList);

  final List<Recommend> _recommendList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0.px),
      child: Column(
        children: <Widget>[
          _titleWidget(),
          _recommedList(context)
        ],
      ),
    );
  }

  //推荐商品标题
  Widget _titleWidget() {
     return Container(
       height: 32.px,
       alignment: Alignment.centerLeft,
       padding: EdgeInsets.fromLTRB(5.0, 2.0, 0, 5.0),
       decoration: BoxDecoration(
         color: Colors.white,
         border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.black12
          )
         )
       ),
       child:Text(
        '商品推荐',
        style: TextStyle(color: Colors.pink, fontSize: 12)
      )
     );
  }

  Widget _recommedList(BuildContext context) {
    return  Container(
      height: 165.px,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _recommendList.length,
        itemBuilder: (context, index){
          return _item(index, context);
        },
      ),
    );
  }

  Widget _item(index,context) {
    return InkWell(
      onTap: (){
        //  Application.router.navigateTo(context,"/detail?id=${_recommendList[index]['goodsId']}");
      },
      child: Container(
        width: 120.px,
        // padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(
              width: 0.5,
              color: Colors.black12
            )
          )
        ),
        child: Column(
          children: <Widget>[
            Image.network(_recommendList[index].image),
            Text(
              '￥${_recommendList[index].mallPrice}', 
              style: TextStyle(fontSize: 12),
            ),
            Text(
              '￥${_recommendList[index].price}',
              style: TextStyle(
                fontSize: 12,
                decoration: TextDecoration.lineThrough,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}