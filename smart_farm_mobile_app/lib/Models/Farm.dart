// ignore_for_file: file_names
class Farm {
  final String farmName;
  final DateTime creationDate; // Sử dụng DateTime để thay thế DateOnly
  final String account;
  final String location;
  final double area;
  final int number;
  final String livestockType;
  final String livestockName;
  int livestockCount;

  Farm({
    required this.farmName,
    required this.creationDate,
    required this.account,
    required this.location,
    required this.area,
    required this.number,
    required this.livestockType,
    required this.livestockName,
    this.livestockCount = 0
  });

  get name => null;

  /*// Chuyển đổi từ JSON sang đối tượng Dart
  factory Farm.fromJson(Map<String, dynamic> json) {
    return Farm(
      id: json['id'],
      farmName: json['farmName'],
      farmCreated: DateTime.parse(json['farmCreated']),
      location: json['location'],
      area: json['area'].toDouble(),
      number: json['number'],
      accountId: json['accountId'],
      account: json['account'] != null ? Account.fromJson(json['account']) : null,
      livestockId: json['livestockId'],
      livestock: json['livestock'] != null ? Livestock.fromJson(json['livestock']) : null,
      reportId: json['reportId'],
      report: json['report'] != null ? Report.fromJson(json['report']) : null,
    );
  }

  // Chuyển đổi từ đối tượng Dart sang JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'farmName': farmName,
      'farmCreated': farmCreated.toIso8601String(),
      'location': location,
      'area': area,
      'number': number,
      'accountId': accountId,
      'account': account?.toJson(),
      'livestockId': livestockId,
      'livestock': livestock?.toJson(),
      'reportId': reportId,
      'report': report?.toJson(),
    };
  }*/
}