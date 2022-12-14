import '../../models/event/eventModel.dart';
import '../../repositoryes/eventRepositorye.dart';

class EventService extends EventRepositorye {
  List<EventModel> create(List<EventModel> eventModel) {
    for (var item in eventModel) {
      var eventModel = new EventModel(
          item.imagem,
          item.start_date,
          item.end_date,
          item.start_hour,
          item.end_hour,
          item.title,
          item.description,
          item.cep,
          item.district,
          item.typeCategory,
          item.active
          );
    }
    var event = EventRepositorye().create(eventModel);
    return event;
  }

  List<EventModel> findAll(List<EventModel> eventModel) {
    var event = EventRepositorye().findAll(eventModel);
    return event;
  }

  List<EventModel> findByActiveId(List<EventModel> eventModel, int? id) {
    var event = EventRepositorye().findByActiveId(eventModel, id);
    return event;
  }

  List<EventModel> findByDeativeId(List<EventModel> eventModel, int? id) {
    var event = EventRepositorye().findByActiveId(eventModel, id);

    return event;
  }

  EventModel findByRelationId(EventModel eventModel, int? id) {
    var event = EventRepositorye().findByRelationId(eventModel, id);
    return event;
  }

  List<EventModel> updateAll(List<EventModel> eventModel) {
    for (var item in eventModel) {
      var eventModel = new EventModel(
          item.imagem,
          item.start_date,
          item.end_date,
          item.start_hour,
          item.end_hour,
          item.title,
          item.description,
          item.cep,
          item.district,
          item.typeCategory,
          item.active
          );
    }
    var event = EventRepositorye().updateAll(eventModel);
    return event;
  }

  List<EventModel> updateById(List<EventModel> eventModel, int? id) {
    for (var item in eventModel) {
      var eventModel = new EventModel(
          item.imagem,
          item.start_date,
          item.end_date,
          item.start_hour,
          item.end_hour,
          item.title,
          item.description,
          item.cep,
          item.district,
          item.typeCategory,
           item.active
          );
    }

    var event = EventRepositorye().updateById(eventModel, id);
    return event;
  }

  EventModel deleteAll(EventModel eventModel) {
    var event = EventRepositorye().deleteAll(eventModel);
    return event;
  }

  EventModel deleteById(EventModel eventModel, int? id) {
    var event = EventRepositorye().deleteById(eventModel, id);
    return event;
  }
}
