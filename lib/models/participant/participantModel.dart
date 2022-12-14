import 'dart:ffi';

class ParticipantModel {
  int? id;

  Bool? active;

  int? userId;

  int? eventId;
  
  get getId => this.id;

 set setId( id) => this.id = id;

  get getActive => this.active;

 set setActive( active) => this.active = active;

  get getUserId => this.userId;

 set setUserId( userId) => this.userId = userId;

  get getEventId => this.eventId;

 set setEventId( eventId) => this.eventId = eventId;

  ParticipantModel(Bool? _active, int? _userId, int? _eventId){
    _active = this.active;
    _userId = this.userId;
    _eventId = this.eventId;
  }
}
