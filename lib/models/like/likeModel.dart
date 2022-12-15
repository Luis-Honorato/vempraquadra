import 'dart:ffi';
import 'dart:convert';

class LikeModel {
  int? id;

  Bool? active;

  int? eventId;

  get getId => this.id;

  set setId(id) => this.id = id;

  get getActive => this.active;

  set setActive(active) => this.active = active;

  get getEventId => this.eventId;

  set setEventId(eventId) => this.eventId = eventId;

  LikeModel({this.id, this.active, this.eventId});

  Map<String, dynamic> toMap() {
    return {'id': id, 'active': active, 'eventId': eventId};
  }

  factory LikeModel.fromMap(Map<String, dynamic> map) {
    return LikeModel(
        id: map['id'] ?? '',
        active: map['active'] ?? '',
        eventId: map['eventId'] ?? '');
  }

  String toJson() => json.encode(toMap());

  factory LikeModel.fromJson(String source) =>
      LikeModel.fromMap(json.decode(source));
}
