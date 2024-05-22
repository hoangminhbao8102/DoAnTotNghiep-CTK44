// ignore_for_file: file_names

import '../Models/Account.dart';
import '../Models/Farm.dart';
import '../Models/Livestock.dart';
import '../Models/Product.dart';

String imageUrlLivestock = 'assets/uploads/livestocks';
String imageUrlProduct = 'assets/uploads/products';

List<Account> initializeAccounts() {
  return [
    Account(
      fullName: "Minh Bảo",
      address: "26 Hoàng Văn Thụ",
      phoneNumber: "0948123456",
      email: "minhbao@example.com",
      username: "minhbao",
      password: "minhbao123",
      farms: [],
    ),
    Account(
      fullName: "Nhật Huy",
      address: "73 Kim Đồng",
      phoneNumber: "0795875333",
      email: "huypham@example.com",
      username: "huypham",
      password: "phnh333",
      farms: [],
    ),
  ];
}

List<Farm> initializeFarms() {
  return [
    Farm(
      farmName: "Trang trại xanh",
      creationDate: DateTime(2023, 1, 1),
      account: "Minh Bảo",
      location: "123 Đường Trần Hưng Đạo, Huyện Củ Chi, TP.HCM",
      area: 50.5,
      number: 10,
      livestockCount: 200,
      livestockName: "Bò Hà Lan",
      livestockType: "Bò"
    ),
    Farm(
      farmName: "Trang trại sạch",
      creationDate: DateTime(2022, 5, 1),
      account: "Nhật Huy",
      location: "456 Đường Nguyễn Huệ, Huyện Bình Chánh, TP.HCM",
      area: 75.0,
      number: 20,
      livestockCount: 200,
      livestockName: "Bò Hà Lan, Cừu",
      livestockType: "Bò"
    ),
  ];
}

List<Livestock> initializeLivestock() {
  return [
    Livestock(
      livestockType: "Bò",
      livestockName: "Bò Hà Lan",
      imageUrl: "$imageUrlLivestock/bo_ha_lan.jpg",
      description: "Bò Hà Lan chủ yếu có màu lông trắng đen, nhưng vẫn có con lang trắng đỏ. Bò cái có thân hình chắc chắn gần như hình thang, tầm vóc lớn, vú to, bầu vú phát triển, mắn đẻ, hiền lành, và có khả năng sản xuất sữa rất cao...",
      breed: "Bò Hà Lan",
      care: "- Cho bò ăn thức ăn thô xanh (cỏ, rơm rạ),\n- Vệ sinh máng ăn và máng uống, cung cấp nước sạch cho bò.\n- Kiểm tra sức khỏe của bò...",
      dateOfBirth: DateTime(2020, 1, 1),
      farmId: 1,
    ),
    // Thêm các đối tượng Livestock khác tương tự
  ];
}

List<Product> initializeProducts() {
  return [
    Product(
      productName: "Ngô",
      imageUrl: "$imageUrlProduct/ngo.jpg",
      description: "Ngô là một loại ngũ cốc được sử dụng trong thức ăn chăn nuôi cho gia súc, gia cầm và cá...",
      category: "Thức ăn",
      amount: 1000,
      price: 500000,
      isSold: false,
      reportId: 1,
    ),
    // Thêm các sản phẩm khác theo mẫu trên
    Product(
      productName: "Gạo",
      imageUrl: "$imageUrlProduct/gao.jpg",
      description: "Gạo là một loại ngũ cốc được sử dụng trong thức ăn chăn nuôi cho gia súc, gia cầm và cá...",
      category: "Thức ăn",
      amount: 500,
      price: 300000,
      isSold: false,
      reportId: 1,
    ),
    // Các sản phẩm khác...
  ];
}