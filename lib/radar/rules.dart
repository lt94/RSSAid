// @dart=2.9

import 'package:rssaid/models/radar.dart';
import 'package:rssaid/radar/strategies/weiboStragy.dart';

/// 对一些特殊网页进行适配
/// weibo 手机端：
///   1. 微博博主:
///               https://weibo.com/u/7526777370/home (PC 端原版)
///               https://weibo.com/u/7526777370 (PC 端新版本)
///               https://m.weibo.cn/profile/5984163100 (手机端 H5)
///               https://weibo.com/u/7282705552 （手机 App）

class Rules {
  static List<Radar> detectUrl(String url) {
    // ignore: avoid_init_to_null
    var ruleStragy = null;
    if (url.contains("weibo")) {
      ruleStragy = Weibo();
    }
    if (ruleStragy != null) {
      return ruleStragy.detect(url);
    }
    return null;
  }
}