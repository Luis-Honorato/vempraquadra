import 'dart:ffi';

class CommentModel {
  
 int? id;

 String? description;

 Bool? active;

 int? eventId;
 
  get getId => this.id;

 set setId( id) => this.id = id;

  get getDescription => this.description;

 set setDescription( description) => this.description = description;

  get getActive => this.active;

 set setActive( active) => this.active = active;

  get getEventId => this.eventId;

 set setEventId( eventId) => this.eventId = eventId;
 
  CommentModel(String? _description, Bool? _active, int? _eventId){
      _description = this.description;
      _active = this.active;
      _eventId = this.eventId;
  }


}