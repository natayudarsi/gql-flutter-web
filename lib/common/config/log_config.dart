import 'package:logging/logging.dart';
import 'package:reverse_test/common/utils/log.dart';

void setupLogger() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  Log.init(Logger.root);
}
