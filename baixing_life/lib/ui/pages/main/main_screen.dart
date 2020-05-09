import 'package:flutter/material.dart';
import 'initialize_items.dart';
// import 'package:provider/provider.dart';
// import 'package:baixing_life/core/viewmodel/main_view_model.dart';

class XYMainScreen extends StatefulWidget {
  static const String routeName = '/';
  
  @override
  _XYMainScreenState createState() => _XYMainScreenState();
}

class _XYMainScreenState extends State<XYMainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        fixedColor: Colors.pink,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// class XYMainScreen extends StatelessWidget {
//   static const String routeName = '/';

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<XYMainViewModel>(
//       builder: (context, mainVM, child) {
//         final int currentIndex = mainVM.currentIndex;
//         return Scaffold(
//           backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
//           body: IndexedStack(
//             index: currentIndex,
//             children: pages,
//           ),
//           bottomNavigationBar: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             currentIndex: currentIndex,
//             fixedColor: Colors.pink,
//             unselectedFontSize: 14,
//             selectedFontSize: 14,
//             items: items,
//             onTap: (index) {
//               mainVM.changeIndex(index);
//             },
//           ),
//         );
//       }
//     );
//   }
// }
