import 'package:yboxv2/models/general/genre_res.dart';

class UtilsDetails {
  static String gabungGenre({
    required GenreRes? genre1,
    required GenreRes? genre2,
  }) {
    return '${genre1?.name}, ${genre2?.name}';
  }
}
