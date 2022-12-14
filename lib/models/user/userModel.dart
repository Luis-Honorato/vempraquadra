import 'dart:ffi';

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

  get getId => this.id;

  set setId(id) => this.id = id;

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
      String? _image,
      String? _name,
      String? _email,
      String? _nick_name,
      String? _tel,
      String? _cpf,
      TypePermission? _type_permission,
      Bool? _active) {
    _image = this.image;
    _name = this.name;
    _email = this.email;
    _nick_name = this.nick_name;
    _tel = this.tel;
    _cpf = this.cpf;
    _type_permission = this.type_permission;
    _active = this.active;
  }
}
