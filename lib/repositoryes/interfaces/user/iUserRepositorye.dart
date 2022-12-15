import '../../../models/user/userModel.dart';

abstract class iUserRepositorye {
  Future<List<UserModel>> findAll();

  Future<List<UserModel>> findByActiveId(String? email);

  Future<List<UserModel>> findByDeactiveId(String? email);

  Future<UserModel> findByRelationId(String? email);

  Future<List<UserModel>> create(UserModel userModel);

  Future<List<UserModel>> updateAll(UserModel userModel);

  Future<UserModel> updateById(UserModel userModel, int? id);

  Future<List<UserModel>> deleteAll();

  Future<UserModel> deleteById(int? id);
}
