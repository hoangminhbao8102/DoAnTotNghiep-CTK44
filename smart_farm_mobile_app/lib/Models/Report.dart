// ignore_for_file: file_names

import 'Farm.dart';
import 'Livestock.dart';
import 'Product.dart';

class Report {
  final int id;
  final String reportName;
  final DateTime createdDate;
  final List<Farm> farms;
  final List<Livestock> livestocks;
  final List<Product> products;

  Report({
    required this.id,
    required this.reportName,
    required this.createdDate,
    required this.farms,
    required this.livestocks,
    required this.products,
  });

  /*// Chuyển đổi từ JSON sang đối tượng Dart
  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(
      id: json['id'],
      reportName: json['reportName'],
      createdDate: DateTime.parse(json['createdDate']),
      farms: (json['farms'] as List<dynamic>).map((e) => Farm.fromJson(e)).toList(),
      livestocks: (json['livestocks'] as List<dynamic>).map((e) => Livestock.fromJson(e)).toList(),
      products: (json['products'] as List<dynamic>).map((e) => Product.fromJson(e)).toList(),
    );
  }

  // Chuyển đổi từ đối tượng Dart sang JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'reportName': reportName,
      'createdDate': createdDate.toIso8601String(),
      'farms': farms.map((e) => e.toJson()).toList(),
      'livestocks': livestocks.map((e) => e.toJson()).toList(),
      'products': products.map((e) => e.toJson()).toList(),
    };
  }*/
}