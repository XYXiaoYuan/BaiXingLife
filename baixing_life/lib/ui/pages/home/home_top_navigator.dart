import 'package:flutter/material.dart';
import 'package:baixing_life/core/sizefit/flutter_sizefit.dart';
import 'package:baixing_life/core/model/home_model.dart';

class XYHomeTopNavigator extends StatelessWidget {
  XYHomeTopNavigator(this._navigatorList);
  
  final List<Category> _navigatorList;

  @override
  Widget build(BuildContext context) {
    // 一行显示的最大个数
    int maxCount = 4;
    if (_navigatorList.length > maxCount) {
      _navigatorList.removeRange(maxCount, _navigatorList.length);
    }
    var tempIndex = -1;

    return Container(
      color: Colors.white,
      height: 170.rpx,
      margin: EdgeInsets.only(top: 10.0.rpx),
      padding: EdgeInsets.all(6.0.rpx),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: maxCount,
        padding: EdgeInsets.all(8.0.rpx),
        children: _navigatorList.map((item) {
          tempIndex += 1;
          return _gridViewItem(context, tempIndex, item);
        }).toList(),
      ),
    );
  }

  Widget _gridViewItem(BuildContext context, int index, Category item) {
    return InkWell(
      child: Column(
        children: <Widget>[
          Image.network(
            item.image,
            width: 96.rpx
          ),
          SizedBox(height: 10.0.rpx),
          Text(
            item.mallCategoryName, 
            style: TextStyle(fontSize: 24.ssp)
          )
        ],
      ),
      onTap: (){
        // _goCategory(context,index,item['mallCategoryId']);
      },
    );
  }
}