import 'package:http/http.dart' as http;
import './urls.dart';

class UserRequest{
  static Future<String> createUser(String email, String googleId, String name) async {
    final Uri url = Uri.parse(Urls.signup);
    final response = await http.post(url, body: {
      "email": email,
      "googleId": googleId,
      "name": name,
    });
    print(response.toString());
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
