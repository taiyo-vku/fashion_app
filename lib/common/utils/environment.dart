import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get fileName {
    if (kReleaseMode) {
      return '.env.production';
    }
    return '.env.development';
  }

  static String get apiKey {
    return dotenv.env['API_KEY'] ?? 'API_KEY Not Found!!!';
  }

  static String get apPBaseUrl {
    return dotenv.env['API_BASE_URL'] ?? 'API_URL Not Found!!';
  }

  static String get googleApiKey {
    return dotenv.env['MAPS_API_KEY'] ?? 'MAPS_API_KEY Not Found!!';
  }
}
