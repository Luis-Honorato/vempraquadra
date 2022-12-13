import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class SelectSportsCubit extends Cubit<bool> {
  SelectSportsCubit() : super(false);

  void selectSport() => emit(!state);
}
