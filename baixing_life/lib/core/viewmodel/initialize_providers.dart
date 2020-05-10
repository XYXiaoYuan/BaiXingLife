import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
// 自己定义的provider
import './main_view_model.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (ctx) => XYMainViewModel()),

];