import '../models/user/userModel.dart';
import '../repositoryes/interfaces/user/iUserRepositorye.dart';

class UserRepositorye extends iUserRepositorye{

  @override
  List<UserModel> create(List<UserModel> userModel) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  UserModel deleteAll(UserModel userModel) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  UserModel deleteById(UserModel userModel, int? id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  List<UserModel> findAll(List<UserModel> userModel) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  List<UserModel> findByActiveId(List<UserModel> userModel, String? email) {
    // TODO: implement findByActiveId
    throw UnimplementedError();
  }

  @override
  List<UserModel> findByDeativeId(List<UserModel> userModel, String? email) {
    // TODO: implement findByDeativeId
    throw UnimplementedError();
  }

  @override
  UserModel findByRelationId(UserModel userModel, String? email) {
    // TODO: implement findByRelationId
    throw UnimplementedError();
  }

  @override
  List<UserModel> updateAll(List<UserModel> userModel) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }

  @override
  List<UserModel> updateById(List<UserModel> userModel, int? id) {
    // TODO: implement updateById
    throw UnimplementedError();
  }
  
}