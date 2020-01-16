import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:your_vocabulary/app.dart';

enum BuildMode { release, profile, debug }

BuildMode buildMode = (() {
  if (const bool.fromEnvironment('dart.vm.product')) {
    return BuildMode.release;
  }
  var result = BuildMode.profile;
  assert(() {
    result = BuildMode.debug;
    return true;
  }());
  return result;
}());

void main() {
  debugPaintSizeEnabled = false;
  runApp(YourVocabulary());
}
