import '../../../models/like/likeModel.dart';

abstract class iLikeRepositorye {
  Future<List<LikeModel>> findAll();

  Future<List<LikeModel>> findByActiveId(int? id);

  Future<List<LikeModel>> findByDeactiveId(int? id);

  Future<List<LikeModel>> create(LikeModel likeModel);

  Future<LikeModel> updateByActiveId(LikeModel likeModel, int? id);

  Future<LikeModel> updateByDeActiveId(LikeModel likeModel, int? id);
}
