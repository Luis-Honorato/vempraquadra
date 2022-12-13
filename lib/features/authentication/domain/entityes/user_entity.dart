// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String? email;
  final String? name;
  final String? photo;

  const User({
    required this.id,
    this.email,
    this.name,
    this.photo,
  });

  static const epmty = User(id: '');

  bool get isEmpty => this == User.epmty;
  bool get isNotEmpty => this != User.epmty;

  @override
  List<Object?> get props => [id, email, name, photo];
}
