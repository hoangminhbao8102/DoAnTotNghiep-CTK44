import '../models/Farm.dart';

class Livestock {
  int id;
  String livestockType;
  String livestockName;
  String imageUrl;
  String description;
  String breed;
  DateTime dateOfBirth;
  int farmId;
  Farm farm;
  String care;

  Livestock({
    required this.id,
    required this.livestockType,
    required this.livestockName,
    required this.imageUrl,
    required this.description,
    required this.breed,
    required this.dateOfBirth,
    required this.farmId,
    required this.farm,
    required this.care,
  });

  factory Livestock.fromJson(Map<String, dynamic> json) {
    return Livestock(
      id: json['id'],
      livestockType: json['livestockType'],
      livestockName: json['livestockName'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      breed: json['breed'],
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      farmId: json['farmId'],
      farm: Farm.fromJson(json['farm']),
      care: json['livestockCares'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'livestockType': livestockType,
      'livestockName': livestockName,
      'imageUrl': imageUrl,
      'description': description,
      'breed': breed,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'farmId': farmId,
      'farm': farm.toJson(),
      'livestockCares': care,
    };
  }
}
