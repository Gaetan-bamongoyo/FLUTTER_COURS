import 'dart:convert';

import '../API MODEL/model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<User>> allData() async {
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final json = response.body;
    final result = jsonDecode(json);
    final _user = result['results'] as List<dynamic>;
    final data = _user.map((e) {
      final name = Username(title: e['name']['title']);
      return User(email: e['email'], gender: e['gender'], name: name);
    }).toList();
    return data;
  }
}
