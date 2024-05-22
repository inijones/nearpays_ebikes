import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart' as log;
class AppLogger {
  static void logException(Exception? exception) {
    try {
      if (exception == null) return;
      var exceptionMessage = exception.toString();
      log.Logger logger = log.Logger();
      logger.e(exceptionMessage);
    } on Exception catch (_) {
      rethrow;
    }
  }

  static void logDebug(Object? object) {
    try {
      if (object == null) return;
      if (kDebugMode) {
        log.Logger logger = log.Logger();
        logger.d(object);
      }
    } on Exception catch (_) {
      rethrow;
    }
  }
}