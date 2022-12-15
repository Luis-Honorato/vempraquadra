import 'dart:convert';
import 'dart:io';
import '../models/like/likeModel.dart';
import '../repositoryes/interfaces/like/iLikeRepositorye.dart';
import '../http/connecting/connectionRest.dart' as connectionRest;
import 'package:http/http.dart' as http;

class LikeRepositorye extends iLikeRepositorye {
  @override
  Future<List<LikeModel>> findAll() async {
    var conn = connectionRest.ConnectionRest("get/like/all");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<LikeModel>((resp) => LikeModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<LikeModel>> findByActiveId(int? id) async {
    var conn = connectionRest.ConnectionRest("get/like/by/active/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<LikeModel>((resp) => LikeModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<LikeModel>> findByDeactiveId(int? id) async {
    var conn = connectionRest.ConnectionRest("get/like/by/deactive/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<LikeModel>((resp) => LikeModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<LikeModel>> create(LikeModel likeModel) async {
    var conn = connectionRest.ConnectionRest("post/like");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "eventId": likeModel.eventId,
    };

    final response =
        await http.post(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<LikeModel>((resp) => LikeModel.fromMap(resp))
        .toList();
  }

  @override
  Future<LikeModel> updateByActiveId(LikeModel likeModel, int? id) async {
    var conn = connectionRest.ConnectionRest("put/like/by/active/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "eventId": likeModel.eventId,
    };

    final response =
        await http.post(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<LikeModel>((resp) => LikeModel.fromMap(resp))
        .firstWhere((like) => like.id == id);
  }

  @override
  Future<LikeModel> updateByDeActiveId(LikeModel likeModel, int? id) async {
    var conn = connectionRest.ConnectionRest("put/like/by/deactive/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response =
        await http.post(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<LikeModel>((resp) => LikeModel.fromMap(resp))
        .firstWhere((like) => like.id == id);
  }
}
