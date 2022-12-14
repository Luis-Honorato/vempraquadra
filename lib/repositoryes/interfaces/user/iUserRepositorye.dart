import '../../../models/user/userModel.dart';

abstract class iUserRepositorye{

  List<UserModel> findAll(List<UserModel> userModel);

  List<UserModel> findByActiveId(List<UserModel> userModel, String? email);

  List<UserModel> findByDeativeId(List<UserModel> userModel, String? email);

  UserModel findByRelationId(UserModel userModel, String? email);

  List<UserModel> create(List<UserModel> userModel);

  List<UserModel> updateAll(List<UserModel> userModel);

  List<UserModel> updateById(List<UserModel> userModel, int? id);

  UserModel deleteAll(UserModel userModel);
  
  UserModel deleteById(UserModel userModel, int? id);

}