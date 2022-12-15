import 'dart:ffi';
import 'dart:convert';

class ParticipantModel {
  int? id;

  Bool? active;

  int? userId;

  int? eventId;

  get getId => this.id;

  set setId(id) => this.id = id;

  get getActive => this.active;

  set setActive(active) => this.active = active;

  get getUserId => this.userId;

  set setUserId(userId) => this.userId = userId;

  get getEventId => this.eventId;

  set setEventId(eventId) => this.eventId = eventId;

  ParticipantModel({this.id, this.active, this.userId, this.eventId});

  Map<String, dynamic> toMap() {
    return {'id': id, 'active': active, 'userId': userId, 'eventId': eventId};
  }

  factory ParticipantModel.fromMap(Map<String, dynamic> map) {
    return ParticipantModel(
        id: map['id'] ?? '',
        active: map['active'] ?? '',
        userId: map['userId'] ?? '',
        eventId: map['eventId'] ?? '');
  }

  String toJson() => json.encode(toMap());

  factory ParticipantModel.fromJson(String source) =>
      ParticipantModel.fromMap(json.decode(source));
}
