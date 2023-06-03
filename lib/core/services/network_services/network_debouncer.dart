import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';

class NetWorkDebouncer {
  NetWorkDebouncer();
  void run(VoidCallback function) {
    EasyThrottle.throttle("my-throttler", const Duration(seconds: 5), function);
  }
}
