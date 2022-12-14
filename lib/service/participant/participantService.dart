import '../../models/participant/participantModel.dart';
import '../../repositoryes/participantRepositorye.dart';

class ParticipantService {
  List<ParticipantModel> findAll(List<ParticipantModel> participantModel) {
    var participant = ParticipantRepositorye().findAll(participantModel);
    return participant;
  }

  List<ParticipantModel> findByActiveId(
      List<ParticipantModel> participantModel, int? userId, int? eventId) {
    var participant = ParticipantRepositorye()
        .findByActiveId(participantModel, userId, eventId);
    return participant;
  }

  List<ParticipantModel> findByDeativeId(
      List<ParticipantModel> participantModel, int? userId, int? eventId) {
    var participant = ParticipantRepositorye()
        .findByActiveId(participantModel, userId, eventId);
    return participant;
  }

  List<ParticipantModel> create(List<ParticipantModel> participantModel) {
    for (var item in participantModel) {
      var participantModel =
          new ParticipantModel(item.active, item.userId, item.eventId);
    }

    var participant = ParticipantRepositorye().create(participantModel);
    return participant;
  }

  List<ParticipantModel> updateAll(List<ParticipantModel> participantModel) {
    for (var item in participantModel) {
      var participantModel =
          new ParticipantModel(item.active, item.userId, item.eventId);
    }

    var participant = ParticipantRepositorye().updateAll(participantModel);
    return participant;
  }

  List<ParticipantModel> updateById(
      List<ParticipantModel> participantModel, int? userId, int? eventId) {
    for (var item in participantModel) {
      var participantModel =
          new ParticipantModel(item.active, item.userId, item.eventId);
    }

    var participant =
        ParticipantRepositorye().updateById(participantModel, userId, eventId);
    return participant;
  }
}
