import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';

import 'app/gs3_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setWindowSize(const Size(392.73 * 1.25, 850.91 * 1.25));
  runApp(const Gs3App());
}
