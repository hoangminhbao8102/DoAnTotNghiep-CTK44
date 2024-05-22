// ignore_for_file: file_names

class Product {
  final String productName;
  final String imageUrl;
  final String description;
  final String category;
  final int amount;
  final int price;
  final bool isSold;
  final int reportId;

  Product({
    required this.productName,
    required this.imageUrl,
    required this.description,
    required this.category,
    required this.amount,
    required this.price,
    required this.isSold,
    required this.reportId
  });

  /*// Chuyển đổi từ JSON sang đối tượng Dart
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      productName: json['productName'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      category: json['category'],
      amount: json['amount'],
      price: json['price'],
      isSold: json['isSold'],
      reportId: json['reportId'],
      report: json['report'] != null ? Report.fromJson(json['report']) : null,
    );
  }

  // Chuyển đổi từ đối tượng Dart sang JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productName': productName,
      'imageUrl': imageUrl,
      'description': description,
      'category': category,
      'amount': amount,
      'price': price,
      'isSold': isSold,
      'reportId': reportId,
      'report': report?.toJson(),
    };
  }*/
}