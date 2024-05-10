import '../models/Account.dart';
import '../models/Livestock.dart';
import '../models/Product.dart';
import '../models/Report.dart';

class Farm {
  int id;
  String farmName;
  String location;
  int area;
  int ownerId;
  Account owner;
  List<Livestock> livestocks;
  List<Product> products;
  List<Report> reports;

  Farm({
    required this.id,
    required this.farmName,
    required this.location,
    required this.area,
    required this.ownerId,
    required this.owner,
    required this.livestocks,
    required this.products,
    required this.reports,
  });

  factory Farm.fromJson(Map<String, dynamic> json) {
    return Farm(
      id: json['id'],
      farmName: json['farmName'],
      location: json['location'],
      area: json['area'],
      ownerId: json['ownerId'],
      owner: Account.fromJson(json['owner']),
      livestocks: (json['livestocks'] as List<dynamic>)
          .map((livestockJson) => Livestock.fromJson(livestockJson))
          .toList(),
      products: (json['products'] as List<dynamic>)
          .map((productJson) => Product.fromJson(productJson))
          .toList(),
      reports: (json['reports'] as List<dynamic>)
          .map((reportJson) => Report.fromJson(reportJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'farmName': farmName,
      'location': location,
      'area': area,
      'ownerId': ownerId,
      'owner': owner.toJson(),
      'livestocks': livestocks.map((livestock) => livestock.toJson()).toList(),
      'products': products.map((product) => product.toJson()).toList(),
      'reports': reports.map((report) => report.toJson()).toList(),
    };
  }
}