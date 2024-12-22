import 'dart:convert';

import 'package:bloc_get_api/model/userModel.dart';
import 'package:http/http.dart' as http;

class Apiservice {
  Future<List<UserModel>> getData() async {
    String url = ('https://jsonplaceholder.typicode.com/users');
    try {
      Uri uri = Uri.parse(url);
      http.Response response = await http.get(uri);

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        return data.map((e) => UserModel.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      throw e;
    }
  }
}
