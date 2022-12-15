
import 'dart:js_util';

import '../../models/user/userModel.dart';
import '../connecting//connectionRest.dart' as connectionRest;
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class UserRest {
  
  Future<List<UserModel>> findAllUser() async {
   
    var conn = await connectionRest.ConnectionRest("get/user/all");

    final response = await http.get(Uri.parse(conn.getUrl()));

   final List<Map<String,dynamic>> responseMap = convert.jsonDecode(response.body);

   return responseMap.map<UserModel>((resp) => UserModel.fromMap(resp)).toList();
  }
}