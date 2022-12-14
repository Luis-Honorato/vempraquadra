import '../../models/comment/commentModel.dart';
import '../../repositoryes/commentRepositorye.dart';

class CommentService extends CommentRepositorye {
  List<CommentModel> create(List<CommentModel> commentModel) {
    for (var item in commentModel) {
      var commentModel = new CommentModel(
          item.id, item.description, item.active, item.eventId);
    }

    var comment = CommentRepositorye().create(commentModel);

    return comment;
  }

  List<CommentModel> findAll(List<CommentModel> commentModel) {
    var comment = CommentRepositorye().findAll(commentModel);

    return comment;
  }

  List<CommentModel> findByActiveId(List<CommentModel> commentModel, int? id) {
    var comment = CommentRepositorye().findByActiveId(commentModel, id);

    return comment;
  }

  List<CommentModel> findByDeativeId(List<CommentModel> commentModel, int? id) {
    var comment = CommentRepositorye().findByActiveId(commentModel, id);

    return comment;
  }
}
