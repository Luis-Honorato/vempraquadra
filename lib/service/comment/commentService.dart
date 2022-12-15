import '../../models/comment/commentModel.dart';
import '../../repositoryes/commentRepositorye.dart';

class CommentService extends CommentRepositorye {

  Future<List<CommentModel>> findAll() {
    var comment = CommentRepositorye().findAll();

    return comment;
  }

  Future<List<CommentModel>> findByActiveId(int? id) {
    var comment = CommentRepositorye().findByActiveId(id);

    return comment;
  }

 Future<List<CommentModel>> findByDeativeId(int? id) {
    var comment = CommentRepositorye().findByActiveId(id);

    return comment;
  }

   Future<List<CommentModel>> create(CommentModel commentModel) {
    var comment = CommentRepositorye().create(commentModel);
    return comment;
  }
}
