
import 'dart:ui';

class YYScreenKit {

  static  int standardSize = 750;
//  物理分辨率
  static double physicalWith = window.physicalSize.width;
  static double physicalHeight = window.physicalSize.height;

//  dpr
  static double dpr = window.devicePixelRatio;

//  宽 高
  static double screenWith = physicalWith / dpr;
  static double screenHeight = physicalHeight / dpr;

//  状态栏的高度
  static double statusHeight = window.padding.top / dpr;

//  rpx ,px
  static double rpx = screenWith / standardSize;
  static double px = screenWith / standardSize * 2;

  static double setRpx(double size) {
    return rpx * size;
  }

  static double setPx(double size) {
    return px * size;
  }

}

