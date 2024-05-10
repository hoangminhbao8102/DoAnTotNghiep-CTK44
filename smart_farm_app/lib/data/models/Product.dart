import '../models/Farm.dart';

class Product {
  int id;
  String productName;
  String imageUrl;
  String description;
  String category;
  int amount;
  double price;
  bool isSold;
  int farmId;
  Farm farm;

  Product({
    required this.id,
    required this.productName,
    required this.imageUrl,
    required this.description,
    required this.category,
    required this.amount,
    required this.price,
    required this.isSold,
    required this.farmId,
    required this.farm,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      productName: json['productName'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      category: json['category'],
      amount: json['amount'],
      price: json['price'].toDouble(),
      isSold: json['isSold'],
      farmId: json['farmId'],
      farm: Farm.fromJson(json['farm']),
    );
  }

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
      'farmId': farmId,
      'farm': farm.toJson(),
    };
  }
}