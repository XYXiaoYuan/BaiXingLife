import 'size_fit.dart';

extension SizeFitExtension on num {
  double get px => SizeFit.setPx(this);

  double get rpx => SizeFit.setRpx(this);
}
