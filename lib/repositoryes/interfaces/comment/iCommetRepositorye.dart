import '../../../models/comment/commentModel.dart';

abstract class ICommentRepositorye {
  Future<List<CommentModel>> findAll();

  Future<List<CommentModel>> findByActiveId(int? id);

  Future<List<CommentModel>> findByDeactiveId(int? id);

  Future<List<CommentModel>> create(CommentModel commentModel);
}
