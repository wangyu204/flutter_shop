import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

import '../config/service_url.dart';

//获取首页主题内容

Future getHomePageContent() async {
  try {
    print('开始获取首页数据.....');
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");
    var formData = {
      'lon': '115.02932',
      'lat': '35.76189',
    };
    response = await dio.post(servicePath['homePageContent'], data: formData);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常。');
    }
  } catch (e) {
    return print('ERROR: ===========>$e');
  }
}

//首页 火爆专区接口

Future getHotGoods() async {
  try {
    print('开始获取火爆专区数据.....');
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");
    int page = 1;
    response = await dio.post(servicePath['hotGoods'], data: page);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常。');
    }
  } catch (e) {
    return print('ERROR: ===========>$e');
  }
}

//可选参数
Future request(url, {formData}) async {
  try {
//    print('开始获取数据.....url=' + url + 'formData=' + formData);
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");

    if (formData == null) {
      response = await dio.post(servicePath[url]);
    } else {
      print('开始获取数据.....url=' + url + 'formData=$formData');
      response = await dio.post(servicePath[url], data: formData);
    }

    if (response.statusCode == 200) {
//      print('wy1_url=' + url + '=data' + response.data);
      return response.data;
    } else {
      throw Exception('后端接口出现异常。');
    }
  } catch (e) {
    return print('ERROR: ===========>$e');
  }
}
