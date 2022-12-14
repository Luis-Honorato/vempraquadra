import 'dart:ffi';
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

  TypeCategory? typeCategory;

  Bool? active;
  
  get getId => this.id;

 set setId( id) => this.id = id;

  get getImagem => this.imagem;

 set setImagem( imagem) => this.imagem = imagem;

  get startdate => this.start_date;

 set startdate( value) => this.start_date = value;

  get enddate => this.end_date;

 set enddate( value) => this.end_date = value;

  get starthour => this.start_hour;

 set starthour( value) => this.start_hour = value;

  get endhour => this.end_hour;

 set endhour( value) => this.end_hour = value;

  get getTitle => this.title;

 set setTitle( title) => this.title = title;

  get getDescription => this.description;

 set setDescription( description) => this.description = description;

  get getCep => this.cep;

 set setCep( cep) => this.cep = cep;

  get getDistrict => this.district;

 set setDistrict( district) => this.district = district;

  get getTypeCategory => this.typeCategory;

 set setTypeCategory( typeCategory) => this.typeCategory = typeCategory;

  get getActive => this.active;

 set setActive( active) => this.active = active;


EventModel(String? _imagem, String? _start_date, String? _end_date, String? _start_hour, String? _end_hour, String? _title, String? _description, String? _cep, String? _district, TypeCategory? _typeCategory, Bool? _active){
  _imagem = this.imagem;
  _start_date = this.start_date;
  _end_date = this.end_date;
  _start_hour = this.start_hour;
  _title = this.title;
  _description = this.description;
  _cep = this.cep;
  _district = this.district;
  _typeCategory = this.typeCategory;
  _active = this.active;
}
}