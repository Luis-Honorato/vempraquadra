import '../models/participant/participantModel.dart';
import '../repositoryes/interfaces/participant/iParticipantRepositorye.dart';

class ParticipantRepositorye extends iParticipantRepositorye {
  @override
  List<ParticipantModel> create(List<ParticipantModel> participantModel) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  List<ParticipantModel> findAll(List<ParticipantModel> participantModel) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  List<ParticipantModel> findByActiveId(List<ParticipantModel> participantModel,int? userId, int? eventId) {
    // TODO: implement findByActiveId
    throw UnimplementedError();
  }

  @override
  List<ParticipantModel> findByDeativeId(List<ParticipantModel> participantModel, int? userId, int? eventId) {
    // TODO: implement findByDeativeId
    throw UnimplementedError();
  }

  @override
  List<ParticipantModel> updateAll(List<ParticipantModel> participantModel) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }

  @override
  List<ParticipantModel> updateById(List<ParticipantModel> participantModel, int? userId, int? eventId) {
    // TODO: implement updateById
    throw UnimplementedError();
  }

}