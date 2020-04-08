import 'package:flutter/material.dart';
import 'package:reverse_test/common/config/injector.dart';
import 'package:reverse_test/common/config/log_config.dart';

import 'app.dart' as app;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Setup injections & Logger here
  await setupInjections();
  setupLogger();
  app.main();
}
