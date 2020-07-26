
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutterBN/douban/home/home_config.dart';
import 'package:flutterBN/douban/home/model/home_list_entity.dart';
import 'package:flutterBN/generated/json/base/json_convert_content.dart';
import 'package:flutterBN/generated/json/home_list_entity_helper.dart';

class YYHomeRequest{
  static Future<HomeListEntity> requestMovielist(int start) async {
      final movieURL = "https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=北京&start=0&count=${HomeConfig.listCount}";
     var result = await getHttp(movieURL);
//     解析数据 JsonConvert.fromJsonAsT(result.data)
      HomeListEntity planListObj = JsonConvert.fromJsonAsT(result.data);
//      planListObj.subjects.forEach((element) {
//      print(element.title);
//    });
      return planListObj;
  }
}

  Future<Response> getHttp(String url) async {
  try {
    Response response = await Dio().get(url);
    return response;
  } catch (e) {
    print(e);
  }
}