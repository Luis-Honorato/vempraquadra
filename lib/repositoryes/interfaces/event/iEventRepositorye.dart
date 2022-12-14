import '../../../models/event/eventModel.dart';

abstract class iEventRepositorye{

  List<EventModel> findAll(List<EventModel> eventModel);

  List<EventModel> findByActiveId(List<EventModel> eventModel, int? id);

  List<EventModel> findByDeativeId(List<EventModel> eventModel, int? id);

  EventModel findByRelationId(EventModel eventModel, int? id);

  List<EventModel> create(List<EventModel> eventModel);

  List<EventModel> updateAll(List<EventModel> eventModel);

  List<EventModel> updateById(List<EventModel> eventModel, int? id);

  EventModel deleteAll(EventModel eventModel);

  EventModel deleteById(EventModel eventModel, int? id);

}