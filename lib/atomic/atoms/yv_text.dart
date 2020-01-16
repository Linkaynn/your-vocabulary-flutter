import 'package:flutter/material.dart';
import 'package:your_vocabulary/styles/app.theme.dart';

enum TextType { Title, Subtitle, Label, Paragraph }

class YVText extends StatelessWidget {
  final String text;
  final TextType type;
  final TextStyle style;

  YVText(this.text, {this.type, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
              fontSize: this._getFontSizeFromType(),
              fontWeight: this._getFontWeightFromType(),
              fontFamily: YVTheme.font.fontFamily)
          .merge(this.style ?? TextStyle()),
    );
  }

  double _getFontSizeFromType() {
    switch (this.type) {
      case TextType.Title:
        return YVTheme.font.sizes.title;
      case TextType.Subtitle:
        return YVTheme.font.sizes.subtitle;
      case TextType.Label:
        return YVTheme.font.sizes.label;
      default:
        return YVTheme.font.sizes.paragraph;
    }
  }

  FontWeight _getFontWeightFromType() {
    switch (this.type) {
      case TextType.Title:
        return YVTheme.font.weights.title;
      case TextType.Subtitle:
        return YVTheme.font.weights.subtitle;
      case TextType.Label:
        return YVTheme.font.weights.label;
      default:
        return YVTheme.font.weights.paragraph;
    }
  }
}
