class Farm {
  int? id;
  String? farmName;
  String? location;
  int? area;
  int? number;
  String? livestockType;
  String? livestock;

  Farm({
    required this.id,
    required this.farmName,
    required this.location,
    required this.area,
    required this.number,
    required this.livestockType,
    required this.livestock
  });

  Farm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    farmName = json['farm_name'];
    location = json['location'];
    area = json['area'];
    number = json['number'];
    livestockType = json['livestock_type'];
    livestock = json['livestock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['farm_name'] = farmName;
    data['location'] = location;
    data['area'] = area;
    data['number'] = number;
    data['livestock_type'] = livestockType;
    data['livestock'] = livestock;
    return data;
  }
}