import 'dart:ffi';
import 'dart:convert';
import '../../enum/user/userEnum.dart';

class UserModel {
  int? id;
  String? image;
  String? name;
  String? email;
  String? nick_name;
  String? tel;
  String? cpf;
  TypePermission? type_permission;
  Bool? active;
  int? get getId => this.id;

  set setId(int? id) => this.id = id;

  get getImage => this.image;

  set setImage(image) => this.image = image;

  get getName => this.name;

  set setName(name) => this.name = name;

  get getEmail => this.email;

  set setEmail(email) => this.email = email;

  get nickname => this.nick_name;

  set nickname(value) => this.nick_name = value;

  get getTel => this.tel;

  set setTel(tel) => this.tel = tel;

  get getCpf => this.cpf;

  set setCpf(cpf) => this.cpf = cpf;

  get typepermission => this.type_permission;

  set typepermission(value) => this.type_permission = value;

  get getActive => this.active;

  set setActive(active) => this.active = active;

  UserModel(
      {this.id,
      this.image,
      this.name,
      this.email,
      this.nick_name,
      this.tel,
      this.cpf,
      this.type_permission,
      this.active});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'email': email,
      'nick_name': nick_name,
      'cpf': cpf,
      'type_permission': type_permission,
      'active': active
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      image: map['image'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      nick_name: map['nick_name'] ?? '',
      tel: map['tel'] ?? '',
      cpf: map['cpf'] ?? '',
      type_permission: map['type_permission'] ?? '',
      active: map['active'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
