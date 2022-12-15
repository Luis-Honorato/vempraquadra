import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/user/userModel.dart';
import '../repositoryes/interfaces/user/iUserRepositorye.dart';
import '../http/connecting/connectionRest.dart' as connectionRest;

class UserRepositorye extends iUserRepositorye {
  @override
  Future<List<UserModel>> findAll() async {
    var conn = connectionRest.ConnectionRest("get/user/all");

    final response = await http.get(Uri.parse(conn.getUrl()));

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<UserModel>> findByActiveId(String? email) async {
    var conn = connectionRest.ConnectionRest("get/user/by/active/id/$email");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<UserModel>> findByDeactiveId(String? email) async {
    var conn = connectionRest.ConnectionRest("get/user/by/deactive/id/$email");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }

  @override
  Future<UserModel> findByRelationId(String? email) async {
    var conn = connectionRest.ConnectionRest("get/user/by/relationId/$email");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .firstWhere((user) => user.email == email);
  }

  @override
  Future<List<UserModel>> create(UserModel userModel) async {
    var conn = connectionRest.ConnectionRest("post/user/");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "image": userModel.id,
      "name": userModel.name,
      "email": userModel.email,
      "nick_name": userModel.nick_name,
      "tel": userModel.tel,
      "cpf": userModel.cpf,
      "type_permission": userModel.type_permission
    };

    final response =
        await http.post(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<UserModel>> updateAll(UserModel userModel) async {
    var conn = connectionRest.ConnectionRest("put/user/all");

    var body = {
      "image": userModel.id,
      "name": userModel.name,
      "email": userModel.email,
      "nick_name": userModel.nick_name,
      "tel": userModel.tel,
      "cpf": userModel.cpf,
      "type_permission": userModel.type_permission
    };

    final response = await http.put(Uri.parse(conn.getUrl()), body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }

  @override
  Future<UserModel> updateById(UserModel userModel, int? id) async {
    var conn = connectionRest.ConnectionRest("put/user/by/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "image": userModel.id,
      "name": userModel.name,
      "email": userModel.email,
      "nick_name": userModel.nick_name,
      "tel": userModel.tel,
      "cpf": userModel.cpf,
      "type_permission": userModel.type_permission
    };

    final response =
        await http.put(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .firstWhere((user) => user.id == id);
    ;
  }

  @override
  Future<List<UserModel>> deleteAll() async {
    var conn = connectionRest.ConnectionRest("delete/user/all");

    final response = await http.delete(Uri.parse(conn.getUrl()));

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }

  @override
  Future<UserModel> deleteById(int? id) async {
    var conn = connectionRest.ConnectionRest("delete/user/by/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.put(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .firstWhere((user) => user.id == id);
  }
}
