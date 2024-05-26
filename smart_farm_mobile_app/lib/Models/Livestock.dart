// ignore_for_file: file_names


class Livestock {
  final String livestockType;
  final String livestockName;
  final String imageUrl;
  final String description;
  final String breed;
  final String care;
  final DateTime dateOfBirth;

  Livestock({
    required this.livestockType,
    required this.livestockName,
    required this.imageUrl,
    required this.description,
    required this.breed,
    required this.care,
    required this.dateOfBirth,
  });

  /*// Chuyển đổi từ JSON sang đối tượng Dart
  factory Livestock.fromJson(Map<String, dynamic> json) {
    return Livestock(
      id: json['id'],
      livestockType: json['livestockType'],
      livestockName: json['livestockName'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      breed: json['breed'],
      care: json['care'],
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      farmId: json['farmId'],
      farm: json['farm'] != null ? Farm.fromJson(json['farm']) : null,
      reportId: json['reportId'],
      report: json['report'] != null ? Report.fromJson(json['report']) : null,
    );
  }

  // Chuyển đổi từ đối tượng Dart sang JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'livestockType': livestockType,
      'livestockName': livestockName,
      'imageUrl': imageUrl,
      'description': description,
      'breed': breed,
      'care': care,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'farmId': farmId,
      'farm': farm?.toJson(),
      'reportId': reportId,
      'report': report?.toJson(),
    };
  }*/
}