import 'package:flutter/material.dart';

class MCLargeTitle extends StatefulWidget {
  static const String routeName = '/large_title';

  @override
  _MCLargeTitle createState() => _MCLargeTitle();
}

class _MCLargeTitle extends State<MCLargeTitle> {
  var _showNarrow = false;
  var _oldShowState = false;
  var _scrollController = ScrollController();

  bool _onNotification(ScrollNotification notification) {

    bool show = _scrollController.offset > 100;
    if (show != _oldShowState) {
      _oldShowState = show;
      setState(() {
        _showNarrow = show;
      });
    }
    return true;
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        NotificationListener(
          onNotification: _onNotification,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, 
                  childAspectRatio: 1.8
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return _ExpandWidget(show: !_showNarrow);
                  },
                  childCount: 1,
                ),
              ),
              SliverFixedExtentList(
                itemExtent: 50.0,
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                    title: Text("List item $index"),
                    subtitle: Text("this is subtitle"),
                  )
                ),
              )
            ],
            controller: _scrollController,
          )),
        _NarrowWidget(
          show: _showNarrow,
        ),
      ],
    ));
  }
}

// ignore: must_be_immutable
class _ExpandWidget extends StatefulWidget {
  var show = true;

  _ExpandWidget({this.show});

  State<StatefulWidget> createState() => _ExpandWidgetState();
}

class _ExpandWidgetState extends State<_ExpandWidget> {
  
  Widget build(BuildContext context) {
    if (widget.show) {
      return Stack(
        children: <Widget>[
          Image.asset('assets/images/juren.jpeg',
              fit: BoxFit.fill, height: 100),
          Positioned(
            bottom: 15.0,
            left: 20,
            right: 20,
            child: Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  Text("请输入关键字查询"),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular((5.0)),
              ),
              padding: EdgeInsets.all(8.0),
            ),
          ),
        ],
        fit: StackFit.expand,
        alignment: Alignment.bottomCenter,
      );
    } else {
      return Container();
    }
  }
}

class _NarrowWidget extends StatefulWidget {
  var show = false;

  _NarrowWidget({this.show});

  State<StatefulWidget> createState() => _NarrowWidgetState();
}

class _NarrowWidgetState extends State<_NarrowWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.show) {
      return Stack(
        children: <Widget>[
          Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 48, 20, 15),
                color: Color(0xFF52707A),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.search),
                      Text("请输入关键字查询"),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular((5.0)),
                  ),
                  padding: EdgeInsets.all(8.0),
                ),
              )),
        ],
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
      );
    } else {
      return Container();
    }
  }
}
