import 'dart:ffi';

class LikeModel {
  
  int? id;

  Bool? active;

  int? eventId;

  get getId => this.id;

 set setId( id) => this.id = id;

  get getActive => this.active;

 set setActive( active) => this.active = active;

  get getEventId => this.eventId;

 set setEventId( eventId) => this.eventId = eventId;

LikeModel(Bool? _active, int? _eventId){
  _active = this.active;
  _eventId = this.eventId;
}

}