// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'favorti_list_cubit.dart';

enum FavorListStatus { intial, loaded }

class FavortiListState extends Equatable {
  final FavorListStatus status;
  final List<Sports> favorSports;
  const FavortiListState({
    required this.favorSports,
    this.status = FavorListStatus.intial,
  });

  @override
  List<Object> get props => [];

  FavortiListState copyWith({
    FavorListStatus? status,
    List<Sports>? favorSports,
  }) {
    return FavortiListState(
      status: status ?? this.status,
      favorSports: favorSports ?? this.favorSports,
    );
  }
}
