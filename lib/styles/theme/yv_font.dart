import 'package:flutter/material.dart';

class YVFont {
  String fontFamily = 'Nunito';

  YVSizes sizes = YVSizes();

  YVWeights weights = YVWeights();
}

class YVSizes {
  double title = 22;
  double subtitle = 18;
  double label = 15;
  double paragraph = 14;
}

class YVWeights {
  FontWeight title = FontWeight.bold;
  FontWeight subtitle = FontWeight.normal;
  FontWeight label = FontWeight.bold;
  FontWeight paragraph = FontWeight.normal;
}
