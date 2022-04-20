import 'package:http/http.dart' as http;
import 'dart:convert';

class PrayerAPI {
  static var client = http.Client();

  // Todo: change the static parameters lan and lang of the current location
  static const String _url =
      'http://api.aladhan.com/v1/timings/1398332113?latitude=51.508515&longitude=-0.1254872&method=2';

  static Future<Map> fetchPrayerTimes() async {
    var response = await client.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var times = jsonResponse['data']['timings'];
      return times;
    } else {
      return Future.error('Error: ${response.statusCode}');
    }
  }
}
