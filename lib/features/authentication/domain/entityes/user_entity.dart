// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:vempraquadra/features/feed/domain/entityes/sports_entity.dart';

class User extends Equatable {
  final String id;
  final String? email;
  final String? name;
  final String? photo;
  final List<Sports>? favoriteSports;

  const User({
    required this.id,
    this.email,
    this.name,
    this.photo,
    this.favoriteSports,
  });

  static const epmty = User(id: '', name: 'Convidado');

  bool get isEmpty => this == User.epmty;
  bool get isNotEmpty => this != User.epmty;

  @override
  List<Object?> get props => [id, email, name, photo, favoriteSports];

  User copyWith({
    String? id,
    String? email,
    String? name,
    String? photo,
    List<Sports>? favoriteSports,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      photo: photo ?? this.photo,
      favoriteSports: favoriteSports ?? this.favoriteSports,
    );
  }
}
