import 'package:http/http.dart' as http;

class HttpClient {
  Future<http.Response> get(String url) async {
    return await http.get(Uri.parse(url));
  }
}