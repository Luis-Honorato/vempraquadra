import '../../../models/participant/participantModel.dart';

abstract class iParticipantRepositorye{

  List<ParticipantModel> findAll(List<ParticipantModel> participantModel);

  List<ParticipantModel> findByActiveId(List<ParticipantModel> participantModel, int? userId, int? eventId);

  List<ParticipantModel> findByDeativeId(List<ParticipantModel> participantModel, int? userId, int? eventId);

  List<ParticipantModel> create(List<ParticipantModel> participantModel);

  List<ParticipantModel> updateAll(List<ParticipantModel> participantModel);

  List<ParticipantModel> updateById(List<ParticipantModel> participantModel, int? userId, int? eventId);
}

