import '../../models/participant/participantModel.dart';
import '../../repositoryes/participantRepositorye.dart';

class ParticipantService {
   Future<List<ParticipantModel>> findAll() {
    var participant = ParticipantRepositorye().findAll();
    return participant;
  }

   Future<List<ParticipantModel>> findByActiveId(
      ParticipantModel participantModel, int? userId, int? eventId) {
    var participant = ParticipantRepositorye()
        .findByActiveId(userId, eventId);
    return participant;
  }

  Future<List<ParticipantModel>> findByDeativeId(
      List<ParticipantModel> participantModel, int? userId, int? eventId) {
    var participant = ParticipantRepositorye()
        .findByActiveId(userId, eventId);
    return participant;
  }

   Future<List<ParticipantModel>> create(ParticipantModel participantModel) {
    var participant = ParticipantRepositorye().create(participantModel);
    return participant;
  }

   Future<List<ParticipantModel>> updateAll(ParticipantModel participantModel) {
    var participant = ParticipantRepositorye().updateAll(participantModel);
    return participant;
  }

  Future<List<ParticipantModel>> updateById(
    ParticipantModel participantModel, int? userId, int? eventId) {
    var participant =
        ParticipantRepositorye().updateById(participantModel, userId, eventId);
    return participant;
  }
}
