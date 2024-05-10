import '../models/Farm.dart';

class Report {
  int id;
  DateTime date;
  String content;
  int registeredAccounts;
  int totalFarms;
  int totalLivestocks;
  int soldProducts;
  int farmId;
  Farm farm;

  Report({
    required this.id,
    required this.date,
    required this.content,
    required this.registeredAccounts,
    required this.totalFarms,
    required this.totalLivestocks,
    required this.soldProducts,
    required this.farmId,
    required this.farm,
  });

  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(
      id: json['id'],
      date: DateTime.parse(json['date']),
      content: json['content'],
      registeredAccounts: json['registeredAccounts'],
      totalFarms: json['totalFarms'],
      totalLivestocks: json['totalLivestocks'],
      soldProducts: json['soldProducts'],
      farmId: json['farmId'],
      farm: Farm.fromJson(json['farm']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date.toIso8601String(),
      'content': content,
      'registeredAccounts': registeredAccounts,
      'totalFarms': totalFarms,
      'totalLivestocks': totalLivestocks,
      'soldProducts': soldProducts,
      'farmId': farmId,
      'farm': farm.toJson(),
    };
  }
}