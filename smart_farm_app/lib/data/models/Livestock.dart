class Livestock {
  int? id;
  String? livestockName;
  String? livestockType;
  String? description;
  String? raisingProcess;
  String? care;
  int? number;
  String? imageUrl;

  Livestock({
    required this.id,
    required this.livestockName,
    required this.livestockType,
    required this.description,
    required this.raisingProcess,
    required this.care,
    required this.number,
    required this.imageUrl
  });

  Livestock.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    livestockName = json['livestock_name'];
    livestockType = json['livestock_type'];
    description = json['description'];
    raisingProcess = json['raising_process'];
    care = json['care'];
    number = json['number'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['livestock_name'] = livestockName;
    data['livestock_type'] = livestockType;
    data['description'] = description;
    data['raising_process'] = raisingProcess;
    data['care'] = care;
    data['number'] = number;
    data['image_url'] = imageUrl;
    return data;
  }
}
