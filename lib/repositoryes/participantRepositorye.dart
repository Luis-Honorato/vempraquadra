import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/participant/participantModel.dart';
import '../repositoryes/interfaces/participant/iParticipantRepositorye.dart';
import '../http/connecting/connectionRest.dart' as connectionRest;

class ParticipantRepositorye extends iParticipantRepositorye {
  @override
  Future<List<ParticipantModel>> findAll() async {
    var conn = connectionRest.ConnectionRest("get/participant/all");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<ParticipantModel>((resp) => ParticipantModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<ParticipantModel>> findByActiveId(
      int? userId, int? eventId) async {
    var conn = connectionRest.ConnectionRest("get/user/by/active/id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {"userId": userId, "eventId": eventId};

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<ParticipantModel>((resp) => ParticipantModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<ParticipantModel>> findByDeactiveId(
      int? userId, int? eventId) async {
    var conn = connectionRest.ConnectionRest("get/user/by/deactive/id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {"userId": userId, "eventId": eventId};

    final response =
        await http.post(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<ParticipantModel>((resp) => ParticipantModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<ParticipantModel>> create(
      ParticipantModel participantModel) async {
    var conn = connectionRest.ConnectionRest("post/participant");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "userId": participantModel.userId,
      "eventId": participantModel.eventId,
    };

    final response =
        await http.post(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<ParticipantModel>((resp) => ParticipantModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<ParticipantModel>> updateAll(
      ParticipantModel participantModel) async {
    var conn = connectionRest.ConnectionRest("put/participant/all");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "active": participantModel.active,
    };

    final response =
        await http.put(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<ParticipantModel>((resp) => ParticipantModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<ParticipantModel>> updateById(
      ParticipantModel participantModel, int? userId, int? eventId) async {
    var conn = connectionRest.ConnectionRest("put/participant/by/id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "userId": participantModel.userId,
      "eventId": participantModel.eventId,
      "active": participantModel.active,
    };

    final response =
        await http.put(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<ParticipantModel>((resp) => ParticipantModel.fromMap(resp))
        .toList();
  }
}
