import 'model.dart';
import 'package:http/http.dart' as http;

class UserViewModel {
  Future getUsers() async {
    try {
      http.Response hasil = await http.get(
          Uri.parse(
              "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts"),
          headers: {"Accept": "application/json"});
      if (hasil.statusCode == 200) {
        print("data category success");
        final data = welcomeFromJson(hasil.body);
        return data;
      } else {
        print("error status " + hasil.statusCode.toString());
        return null;
      }
    } catch (e) {
      print("error catch $e");
      return null;
    }
  }
}
