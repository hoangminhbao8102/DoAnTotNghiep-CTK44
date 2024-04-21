class Product {
  int? id;
  String? productName;
  String? description;
  DateTime? productDate;
  int? quantity;
  double? unitPrice;
  String? imageUrl;

  Product({
    required this.id,
    required this.productName,
    required this.description,
    required this.productDate,
    required this.quantity,
    required this.unitPrice,
    required this.imageUrl
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['product_name'];
    description = json['description'];
    productDate = json['product_date'];
    quantity = json['quantity'];
    unitPrice = json['unit_price'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product_name'] = productName;
    data['description'] = description;
    data['product_date'] = productDate;
    data['quantityr'] = quantity;
    data['unit_price'] = unitPrice;
    data['image_url'] = imageUrl;
    return data;
  }
}