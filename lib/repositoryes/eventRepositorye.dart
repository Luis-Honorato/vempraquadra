import 'dart:convert';
import 'dart:io';
import '../models/event/eventModel.dart';
import '../repositoryes/interfaces/event/IeventRepositorye.dart';
import '../http/connecting/connectionRest.dart' as connectionRest;
import 'package:http/http.dart' as http;

class EventRepositorye extends iEventRepositorye {
  @override
  Future<List<EventModel>> findAll() async {
    var conn = connectionRest.ConnectionRest("get/event/all");

    final response = await http.get(Uri.parse(conn.getUrl()));

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<EventModel>((resp) => EventModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<EventModel>> findByActiveId(int? id) async {
    var conn = connectionRest.ConnectionRest("get/event/by/active/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<EventModel>((resp) => EventModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<EventModel>> findByDeactiveId(int? id) async {
    var conn = connectionRest.ConnectionRest("get/event/by/deactive/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<EventModel>((resp) => EventModel.fromMap(resp))
        .toList();
  }

  @override
  Future<EventModel> findByRelationId(String? title) async {
    var conn = connectionRest.ConnectionRest("get/user/by/relationId/$title");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.get(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<EventModel>((resp) => EventModel.fromMap(resp))
        .firstWhere((event) => event.title == title);
  }

  @override
  Future<List<EventModel>> create(EventModel eventModel) async {
    var conn = connectionRest.ConnectionRest("post/user/");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "image": eventModel.imagem,
      "start_date": eventModel.start_date,
      "end_date": eventModel.end_date,
      "start_hour": eventModel.start_hour,
      "end_hour": eventModel.end_hour,
      "title": eventModel.title,
      "description": eventModel.description,
      "cep": eventModel.cep,
      "district": eventModel.district,
      "type_category": eventModel.type_category,
    };

    final response =
        await http.post(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<EventModel>((resp) => EventModel.fromMap(resp))
        .toList();
  }

  @override
  Future<List<EventModel>> updateAll(EventModel eventModel) async {
    var conn = connectionRest.ConnectionRest("put/event/all");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "image": eventModel.imagem,
      "start_date": eventModel.start_date,
      "end_date": eventModel.end_date,
      "start_hour": eventModel.start_hour,
      "end_hour": eventModel.end_hour,
      "title": eventModel.title,
      "description": eventModel.description,
      "cep": eventModel.cep,
      "district": eventModel.district,
      "type_category": eventModel.type_category,
    };

    final response =
        await http.put(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<EventModel>((resp) => EventModel.fromMap(resp))
        .toList();
  }

  @override
  Future<EventModel> updateById(EventModel eventModel, int? id) async {
    var conn = connectionRest.ConnectionRest("put/event/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var body = {
      "image": eventModel.imagem,
      "start_date": eventModel.start_date,
      "end_date": eventModel.end_date,
      "start_hour": eventModel.start_hour,
      "end_hour": eventModel.end_hour,
      "title": eventModel.title,
      "description": eventModel.description,
      "cep": eventModel.cep,
      "district": eventModel.district,
      "type_category": eventModel.type_category,
    };

    final response =
        await http.put(Uri.parse(conn.getUrl()), headers: headers, body: body);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<EventModel>((resp) => EventModel.fromMap(resp))
        .firstWhere((event) => event.id == id);
  }

  @override
  Future<List<EventModel>> deleteAll() async {
    var conn = connectionRest.ConnectionRest("delete/event/all");

    final response = await http.delete(Uri.parse(conn.getUrl()));

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<EventModel>((resp) => EventModel.fromMap(resp))
        .toList();
  }

  @override
  Future<EventModel> deleteById(int? id) async {
    var conn = connectionRest.ConnectionRest("delete/user/by/id/$id");

    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await http.put(Uri.parse(conn.getUrl()), headers: headers);

    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);

    return responseMap
        .map<EventModel>((resp) => EventModel.fromMap(resp))
        .firstWhere((user) => user.id == id);
  }
}
