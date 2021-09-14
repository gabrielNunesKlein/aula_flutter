import 'package:http/http.dart' as http;

var baseURL = "https://jsonplaceholder.typicode.com";

class API {
  static Future getUsers() async {
    var url = baseURL + "/users";
    return await http.get(url);
  }
}