import '../../../models/participant/participantModel.dart';

abstract class iParticipantRepositorye {
  Future<List<ParticipantModel>> findAll();

  Future<List<ParticipantModel>> findByActiveId(int? userId, int? eventId);

  Future<List<ParticipantModel>> findByDeactiveId(int? userId, int? eventId);

  Future<List<ParticipantModel>> create(ParticipantModel participantModel);

  Future<List<ParticipantModel>> updateAll(ParticipantModel participantModel);

  Future<List<ParticipantModel>> updateById(
      ParticipantModel participantModel, int? userId, int? eventId);
}
