import 'dart:ffi';
import 'dart:convert';
import '../../enum/event/eventEnum.dart';

class EventModel {
  int? id;

  String? imagem;

  String? start_date;

  String? end_date;

  String? start_hour;

  String? end_hour;

  String? title;

  String? description;

  String? cep;

  String? district;

  TypeCategory? type_category;

  Bool? active;

  get getId => this.id;

  set setId(id) => this.id = id;

  get getImagem => this.imagem;

  set setImagem(imagem) => this.imagem = imagem;

  get startdate => this.start_date;

  set startdate(value) => this.start_date = value;

  get enddate => this.end_date;

  set enddate(value) => this.end_date = value;

  get starthour => this.start_hour;

  set starthour(value) => this.start_hour = value;

  get endhour => this.end_hour;

  set endhour(value) => this.end_hour = value;

  get getTitle => this.title;

  set setTitle(title) => this.title = title;

  get getDescription => this.description;

  set setDescription(description) => this.description = description;

  get getCep => this.cep;

  set setCep(cep) => this.cep = cep;

  get getDistrict => this.district;

  set setDistrict(district) => this.district = district;

  get typecategory => this.type_category;

  set typecategory(value) => this.type_category = value;

  get getActive => this.active;

  set setActive(active) => this.active = active;

  EventModel(
      {this.id,
      this.imagem,
      this.start_date,
      this.end_date,
      this.start_hour,
      this.end_hour,
      this.title,
      this.description,
      this.cep,
      this.district,
      this.type_category,
      this.active});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'start_date': start_date,
      'end_date': end_date,
      'start_hour': start_hour,
      'end_hour': end_hour,
      'title': title,
      'description': description,
      'cep': cep,
      'type_category': type_category
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      id: map['id'] ?? '',
      start_date: map['start_date'] ?? '',
      end_date: map['end_date'] ?? '',
      start_hour: map['start_hour'] ?? '',
      end_hour: map['end_hour'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      cep: map['cep'] ?? '',
      type_category: map['type_category'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory EventModel.fromJson(String source) =>
      EventModel.fromMap(json.decode(source));
}
