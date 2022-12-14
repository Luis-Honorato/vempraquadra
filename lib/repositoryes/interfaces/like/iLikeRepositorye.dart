import '../../../models/like/likeModel.dart';

abstract class iLikeRepositorye{

  List<LikeModel> findAll(List<LikeModel> likeModel);

  List<LikeModel> findByActiveId(List<LikeModel> likeModel, int? id);

  List<LikeModel> findByDeativeId(List<LikeModel> likeModel, int? id);

  List<LikeModel> create(List<LikeModel> likeModel);

  List<LikeModel> updateAll(List<LikeModel> likeModel);

  List<LikeModel> updateById(List<LikeModel> likeModel, int? id);

}