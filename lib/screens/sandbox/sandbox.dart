import 'package:flutter/material.dart';
import 'package:your_vocabulary/atomic/atoms/yv_text.dart';

class Sandbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SandboxContent(),
      ),
    );
  }
}

class SandboxContent extends StatefulWidget {
  const SandboxContent({
    Key key,
  }) : super(key: key);

  @override
  SandboxContentState createState() {
    return new SandboxContentState();
  }
}

class SandboxContentState extends State<SandboxContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            YVText(
              'Title with custom font size',
              type: TextType.Title,
              style: TextStyle(fontSize: 25),
            ),
            YVText(
              'Subtitle with custom font size',
              type: TextType.Subtitle,
              style: TextStyle(fontSize: 23),
            ),
            YVText(
              'Title',
              type: TextType.Title,
            ),
            YVText(
              'Subtitle',
              type: TextType.Subtitle,
            ),
            YVText(
              'Label',
              type: TextType.Label,
            ),
            YVText(
              'Paragraph',
            ),
          ],
        ),
      ),
    );
  }
}
