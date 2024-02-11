import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspath;

import '../logger.dart';

class FileUtils {
  static Future<String?> getFilePath(String folder, String fileName) async {
    try {
      final Directory appDocDir =
          await syspath.getApplicationDocumentsDirectory();
      final String filePath = path.join(appDocDir.path, folder, fileName);
      final File file = File(filePath);
      if (file.existsSync() && (await file.length()) > 0) {
        return file.path;
      }
    } on Exception catch (e, st) {
      $logger.error(e.toString(), e, st);
    }

    return null;
  }
}
