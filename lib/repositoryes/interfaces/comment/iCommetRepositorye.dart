import '../../../models/comment/commentModel.dart';

abstract class ICommentRepositorye{

  List<CommentModel> findAll(List<CommentModel> commentModel);

  List<CommentModel> findByActiveId(List<CommentModel> commentModel, int? id);

  List<CommentModel> findByDeativeId(List<CommentModel> commentModel, int? id);

  List<CommentModel> create(List<CommentModel> commentModel);

}