import 'package:flutterBN/prepare/share/YYScreenKit.dart';

extension intRpx on int {
  double get rpx {
    return YYScreenKit.setRpx(this.toDouble());
  }

  double get px {
    return YYScreenKit.setPx(this.toDouble());
  }
}