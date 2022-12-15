import '../../models/event/eventModel.dart';
import '../../repositoryes/eventRepositorye.dart';

class EventService extends EventRepositorye {

  Future<List<EventModel>> findAll() {
    var event = EventRepositorye().findAll();
    return event;
  }

 Future<List<EventModel>> findByActiveId(int? id) {
    var event = EventRepositorye().findByActiveId(id);
    return event;
  }

  Future<List<EventModel>> findByDeactiveId(int? id) {
    var event = EventRepositorye().findByActiveId(id);
    return event;
  }

  Future<EventModel> findByRelationId(String? title) {
    var event = EventRepositorye().findByRelationId(title);
    return event;
  }

  Future<List<EventModel>> create(EventModel eventModel) {
    var event = EventRepositorye().create(eventModel);
    return event;
  }


  Future<List<EventModel>> updateAll(EventModel eventModel) {
    var event = EventRepositorye().updateAll(eventModel);
    return event;
  }

  Future<EventModel> updateById(EventModel eventModel, int? id) {
    var event = EventRepositorye().updateById(eventModel, id);
    return event;
  }

  Future<List<EventModel>> deleteAll() {
    var event = EventRepositorye().deleteAll();
    return event;
  }

  Future<EventModel> deleteById(int? id) {
    var event = EventRepositorye().deleteById(id);
    return event;
  }
}
