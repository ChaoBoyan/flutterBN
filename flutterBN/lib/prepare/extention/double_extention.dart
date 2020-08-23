import 'package:flutterBN/prepare/share/YYScreenKit.dart';

extension doubleRpx on double {
  double get rpx {
    return YYScreenKit.setRpx(this);
  }

  double get px {
    return YYScreenKit.setPx(this);
  }
}