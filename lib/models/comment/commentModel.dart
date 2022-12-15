import 'dart:ffi';
import 'dart:convert';

class CommentModel {
  int? id;

  String? description;

  Bool? active;

  int? eventId;

  get getId => this.id;

  set setId(id) => this.id = id;

  get getDescription => this.description;

  set setDescription(description) => this.description = description;

  get getActive => this.active;

  set setActive(active) => this.active = active;

  get getEventId => this.eventId;

  set setEventId(eventId) => this.eventId = eventId;

  CommentModel({this.id, this.description, this.active, this.eventId});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'active': active,
      'eventId': eventId
    };
  }

  factory CommentModel.fromMap(Map<String, dynamic> map) {
    return CommentModel(
        id: map['id'] ?? '',
        description: map['description'] ?? '',
        active: map['active'] ?? '',
        eventId: map['eventId'] ?? '');
  }

  String toJson() => json.encode(toMap());

  factory CommentModel.fromJson(String source) =>
      CommentModel.fromMap(json.decode(source));
}
