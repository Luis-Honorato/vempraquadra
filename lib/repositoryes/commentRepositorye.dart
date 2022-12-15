import 'dart:convert';
import 'dart:io';
import '../models/comment/commentModel.dart';
import 'interfaces/comment/iCommetRepositorye.dart';
import '../http/connecting/connectionRest.dart' as connectionRest;
import 'package:http/http.dart' as http;

class CommentRepositorye extends ICommentRepositorye {
  @override
  Future<List<CommentModel>> findAll() async {
    var conn = connectionRest.ConnectionRest("get/comment/all");

    final response = await http.get(Uri.parse(conn.getUrl()));

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<CommentModel>((resp) => CommentModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<CommentModel>> findByActiveId(
      int? id) async {
    var conn = connectionRest.ConnectionRest("get/comment/by/active/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<CommentModel>((resp) => CommentModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<CommentModel>> findByDeactiveId(
     int? id) async {
    var conn = connectionRest.ConnectionRest("get/comment/by/deactive/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<CommentModel>((resp) => CommentModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<CommentModel>> create(CommentModel commentModel) async {
    var conn = connectionRest.ConnectionRest("post/comment/");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "description": commentModel.description,
      "eventId": commentModel.eventId
    };

    final response =
        await http.post(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<CommentModel>((resp) => CommentModel.fromMap(resp))
        .toList();
  }
}
