import '../../models/like/likeModel.dart';
import '../../repositoryes/likeRepositorye.dart';

class LikeService {
  List<LikeModel> findAll(List<LikeModel> likeModel) {
    var event = LikeRepositorye().findAll(likeModel);
    return event;
  }

  List<LikeModel> findByActiveId(List<LikeModel> likeModel, int? id) {
    var event = LikeRepositorye().findByActiveId(likeModel, id);
    return event;
  }

  List<LikeModel> findByDeativeId(List<LikeModel> likeModel, int? id) {
      var event = LikeRepositorye().findByActiveId(likeModel, id);
    return event;
  }

  List<LikeModel> create(List<LikeModel> likeModel) {
        for (var item in likeModel) {
      var eventModel = new LikeModel(
          item.active,
          item.eventId
          );
    }
    var event = LikeRepositorye().create(likeModel);
    return event;
  }

  List<LikeModel> updateAll(List<LikeModel> likeModel) {
     for (var item in likeModel) {
      var eventModel = new LikeModel(
          item.active,
          item.eventId
          );
    }
    var event = LikeRepositorye().updateAll(likeModel);
    return event;
  }

  List<LikeModel> updateById(List<LikeModel> likeModel, int? id) {
     for (var item in likeModel) {
      var eventModel = new LikeModel(
          item.active,
          item.eventId
          );
    }
    var event = LikeRepositorye().updateById(likeModel,id);
    return event;
  }
}
