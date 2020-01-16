import 'package:flutter/material.dart';
import 'package:your_vocabulary/app.config.dart';
import 'package:your_vocabulary/styles/app.theme.dart';
import 'package:your_vocabulary/screens/login/login_screen.dart';
import 'package:your_vocabulary/screens/sandbox/sandbox.dart';
import 'package:your_vocabulary/utilities/snack_message.dart';

class YourVocabulary extends StatefulWidget {
  static BuildContext mainContext;

  @override
  YourVocabularyState createState() {
    return new YourVocabularyState();
  }
}

class YourVocabularyState extends State<YourVocabulary> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget widgetToRender = LoginScreen();

    ThemeData theme = Theme.of(context);

    return MaterialApp(
      theme: YVThemeData.getTheme(),
      title: 'YourVocabulary',
      home: AppConfig.production
          ? widgetToRender
          : Stack(
              children: <Widget>[
                AppConfig.sandboxMode ? Sandbox() : widgetToRender,
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "App",
                        style: theme.textTheme.caption,
                      ),
                      Text(
                        AppConfig.version,
                        style: theme.textTheme.caption,
                      ),
                      Text(
                        "Without backend data",
                        style: theme.textTheme.caption,
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          AppConfig.localBackend = !AppConfig.localBackend;
                          Toast().success(
                              "Now you are connected to the ${AppConfig.localBackend ? 'local system (${AppConfig.baseUrl})' : 'remote system (${AppConfig.baseUrl})'}");
                        }),
                        child: Icon(AppConfig.localBackend
                            ? Icons.signal_cellular_connected_no_internet_4_bar
                            : Icons.network_cell),
                      )
                    ],
                  ),
                  bottom: 10,
                  left: 5,
                ),
              ],
            ),
    );
  }
}
