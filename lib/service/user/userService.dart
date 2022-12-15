import '../../models/user/userModel.dart';
import '../../repositoryes/userRepositorye.dart';


class UserService {

  Future<List<UserModel>> findAll() {
    var user = UserRepositorye().findAll();
    return user;
  }

  Future<List<UserModel>> findByActiveId(String? email) {
   var user = UserRepositorye().findByActiveId(email);
    return user;
  }

 Future<List<UserModel>> findByDeativeId(String? email) {
    var user = UserRepositorye().findByDeactiveId(email);
    return user;
  }

   Future<List<UserModel>> create(UserModel userModel) {
    var user = UserRepositorye().create(userModel);
    return user;
  }

  Future<List<UserModel>> updateAll(UserModel userModel) {
    var user = UserRepositorye().updateAll(userModel);
    return user;
  }

  Future<UserModel>  updateById(UserModel userModel, int? id) {
    var user = UserRepositorye().updateById(userModel,id);
    return user;
  }

  Future<List<UserModel>> deleteAll() {
    var user = UserRepositorye().deleteAll();
    return user;
  }
  
  Future<UserModel> deleteById(int? id){
    var user = UserRepositorye().deleteById(id);
    return user;
  }
}
