import 'package:flutter/material.dart';
import 'package:yboxv2/models/general/language_res.dart';

class MainState extends ChangeNotifier {
  List<String> rulesOfImage = [
    'File format: PNG, GIF, BMP, TIF, JPG or JPEG.',
    'Color space: RGB.',
    'Minimum dimensions: 1400x1400 pixels, but recommend 3000x3000 pixels',
    'Square image: width and height must be the same.',
    'Images may not contain more than 50 megapixels or be larger than 10 Mb.',
    'Your image cannot be stretched, upscaled, or appear to be low-resolution.',
    'The information on your cover art must match your album title and artist name.',
    'Website addresses, social media links and contact information are not permitted on album artwork.',
    'Your cover art may not include sexually explicit imagery.',
    'Your cover art cannot be misleading by figuring another artists name more prominently than yours.',
    'You may not use a third-party logo or trademark without the express written permission from the trademark holder.',
  ];

  LanguageRes? languageResMain;
}
