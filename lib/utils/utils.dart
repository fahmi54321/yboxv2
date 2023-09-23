import 'package:intl/intl.dart';
import 'package:yboxv2/resource/strings.dart';

class Utils {
  static String displayDateFormat = "dd MMMM yyyy";
  static String displayHourFormat = "hh:mm:ss";
  static String displayDateFormat2 = "dd MMM yyyy";
  static String sendDateFormat = "dd-MM-yyyy";
  static String sendDateFormat2 = "yyyy-MM-dd";

  // static String dateToString(DateTime time, String format) {
  //   if (time == null) return "";
  //   var formatter = DateFormat(format);
  //   String formatted = formatter.format(time);
  //   return formatted;
  // }

  static String formatNumberToRupiah(int value) {
    final formatCurrency = NumberFormat("#,##0", "id_ID");
    String result = formatCurrency.format(value);
    var rupiah = "Rp. $result,-";
    return rupiah;
  }

  static String displayImage(String url) {
    String urlValid = url.replaceAll('public', 'storage');
    return '$appUrl$urlValid';
  }

  // static Future<bool> checkAndRequestCameraPermissions() async {
  //   var status = await Permission.camera.status;
  //   if (!status.isGranted) {
  //     var stts = await Permission.camera.request();
  //     return stts.isGranted;
  //   } else {
  //     return true;
  //   }
  // }

  // static Future<String?> pickMedia({bool isCamera = true}) async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? image = isCamera
  //       ? await _picker.pickImage(source: ImageSource.camera)
  //       : await _picker.pickImage(source: ImageSource.gallery);
  //   return image?.path;
  // }

  // //random string
  // static const _chars =
  //     'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  // static Random _rnd = Random();

  // static String getRandomString(int length) =>
  //     String.fromCharCodes(Iterable.generate(
  //         length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  // static String dummyDetailPekerjaan =
  //     "The UX designer creates satisfying or compelling experiences for users of a product, often drawing on results from user research and workflow analysis. Generally, UX designers need to possess strong creative, technical and problem-solving skills. The UX design role may involve psychology, storytelling and computer science as well. Areas of focus may include content, controls, visual design and development, information architecture, user research, branding and customer/technical support.\n\nWhat does a UX designer do? Responsibilities often include: \n- Consulting with clients to understand their goals and explaining research results\n - Conducting usability testing\n - Creating wireframes, storyboards, sitemaps and screen flows\n - Creating product prototypes\n - Developing personas and usage scenarios\n - Analyzing user feedback and activity, and iterating to enhance the user experience\n - Assisting with content development\n - Conducting competitor and customer analysis\n";

  // static Future<dynamic> getRequest(String url) async {
  //   http.Response response = await http.get(Uri.parse(url));

  //   try {
  //     if (response.statusCode == 200) {
  //       String data = response.body;
  //       var decodeData = jsonDecode(data);
  //       return decodeData;
  //     } else {
  //       return 'failed';
  //     }
  //   } catch (e) {
  //     return 'failed';
  //   }
  // }
}
