import 'package:your_vocabulary/main.dart';

class AppConfig {
  static final String localURL = 'http://192.168.1.56:8080';
  static final String remoteURL = 'http://35.246.105.247:8080';

  /// Runs the app as sandbox mode if is in debug mode
  static final bool sandboxMode = true;

  // DO NOT CHANGE THIS VARS EVER
  static final bool production = buildMode == BuildMode.release;
  static bool localBackend = buildMode == BuildMode.debug;
  static final String version = "0.0.1v"; // Run new_version.sh to change this

  static get baseUrl => localBackend && !production ? localURL : remoteURL;
}
