import '../../../models/event/eventModel.dart';

abstract class iEventRepositorye {
  Future<List<EventModel>> findAll();
  Future<List<EventModel>> findByActiveId(int? id);
  Future<List<EventModel>> findByDeactiveId(int? id);
  Future<EventModel> findByRelationId(String? title);
  Future<List<EventModel>> create(EventModel eventModel);
  Future<List<EventModel>> updateAll(EventModel eventModel);
  Future<EventModel> updateById(EventModel eventModel, int? id);
  Future<List<EventModel>> deleteAll();
  Future<EventModel> deleteById(int? id);
}
