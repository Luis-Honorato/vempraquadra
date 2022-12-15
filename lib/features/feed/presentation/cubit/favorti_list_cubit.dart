import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vempraquadra/features/feed/domain/entityes/sports_entity.dart';

part 'favorti_list_state.dart';

class FavortiListCubit extends Cubit<FavortiListState> {
  FavortiListCubit()
      : super(
            FavortiListState(status: FavorListStatus.intial, favorSports: []));

  void addFavoriteSport(Sports sport) {
    List<Sports>? list = [];
    list.add(sport);

    emit(state.copyWith(
        favorSports: state.favorSports..addAll(list),
        status: FavorListStatus.loaded));
  }

  void removeFavoriteSport(Sports sport, int index) {
    var list = state.favorSports;
    list.removeWhere((element) => element.name == list[index].name);
    emit(state.copyWith(favorSports: list, status: FavorListStatus.loaded));
  }
}
