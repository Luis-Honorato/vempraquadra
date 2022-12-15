import '../../models/like/likeModel.dart';
import '../../repositoryes/likeRepositorye.dart';

class LikeService {
  Future<List<LikeModel>> findAll() {
    var event = LikeRepositorye().findAll();
    return event;
  }

  Future<List<LikeModel>> findByActiveId(int? id) {
    var event = LikeRepositorye().findByActiveId(id);
    return event;
  }

  Future<List<LikeModel>> findByDeativeId(int? id) {
      var event = LikeRepositorye().findByActiveId(id);
    return event;
  }

  Future<List<LikeModel>> create(LikeModel likeModel) {
    var event = LikeRepositorye().create(likeModel);
    return event;
  }

  Future<LikeModel> updateByActiveId(LikeModel likeModel,int? id) {
    var event = LikeRepositorye().updateByActiveId(likeModel, id);
    return event;
  }

  Future<LikeModel> updateByDeActiveId(LikeModel likeModel, int? id) {
    var event = LikeRepositorye().updateByDeActiveId(likeModel,id);
    return event;
  }
}
