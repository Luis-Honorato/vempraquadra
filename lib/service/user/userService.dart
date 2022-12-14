import '../../models/user/userModel.dart';
import '../../repositoryes/userRepositorye.dart';

class userService extends UserRepositorye {
  List<UserModel> findAll(List<UserModel> userModel) {
    var user = UserRepositorye().findAll(userModel);
    return user;
  }

  List<UserModel> findByActiveId(List<UserModel> userModel, String? email) {
    var user = UserRepositorye().findByActiveId(userModel, email);
    return user;
  }

  List<UserModel> findByDeativeId(List<UserModel> userModel, String? email) {
    var user = UserRepositorye().findByDeativeId(userModel, email);
    return user;
  }

  List<UserModel> create(List<UserModel> userModel) {
    for (var item in userModel) {
      var userModel = new UserModel(item.image, item.name, item.nick_name,
          item.email, item.tel, item.cpf, item.type_permission, item.active);
    }
    var user = UserRepositorye().create(userModel);
    return user;
  }

  List<UserModel> updateAll(List<UserModel> userModel) {
    for (var item in userModel) {
      var userModel = new UserModel(
          item.image,
          item.name,
          item.email,
          item.nick_name,
          item.tel,
          item.cpf,
          item.type_permission,
          item.active);
    }
    var user = UserRepositorye().updateAll(userModel);
    return user;
  }

  List<UserModel> updateById(List<UserModel> userModel, int? id) {
     for (var item in userModel) {
      var userModel = new UserModel(
          item.image,
          item.name,
          item.email,
          item.nick_name,
          item.tel,
          item.cpf,
          item.type_permission,
          item.active);
    }
    var user = UserRepositorye().updateById(userModel,id);
    return user;
  }

  UserModel deleteAll(UserModel userModel){
    var user = UserRepositorye().deleteAll(userModel);
    return user;
  }
  
  UserModel deleteById(UserModel userModel, int? id){
    var user = UserRepositorye().deleteById(userModel,id);
    return user;
  }
}
