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
      fullName: 'Minh Bảo',
      address: '26 Hoàng Văn Thụ',
      phoneNumber: '0948123456',
      email: 'minhbao@example.com',
      username: 'minhbao',
      password: 'minhbao123'
    ),
    Account(
      fullName: 'Nhật Huy',
      address: '73 Kim Đồng',
      phoneNumber: '0795875333',
      email: 'huypham@example.com',
      username: 'huypham',
      password: 'phnh333'
    ),
  ];
}

List<Farm> initializeFarms() {
  return [
    Farm(
      farmName: 'Trang trại xanh',
      creationDate: DateTime(2023, 1, 1),
      account: 'Minh Bảo',
      location: '123 Đường Trần Hưng Đạo, Huyện Củ Chi, TP.HCM',
      area: 50.5,
      number: 10,
      livestockCount: 200,
      livestockName: 'Bò Hà Lan',
      livestockType: 'Bò'
    ),
    Farm(
      farmName: 'Trang trại sạch',
      creationDate: DateTime(2022, 5, 1),
      account: 'Nhật Huy',
      location: '456 Đường Nguyễn Huệ, Huyện Bình Chánh, TP.HCM',
      area: 75.0,
      number: 20,
      livestockCount: 200,
      livestockName: 'Bò Hà Lan, Cừu',
      livestockType: 'Bò'
    ),
  ];
}

List<Livestock> initializeLivestock() {
  return [
    Livestock(
      livestockType: 'Bò',
      livestockName: 'Bò Hà Lan',
      imageUrl: '$imageUrlLivestock/bo_ha_lan.jpg',
      description: 'Bò Hà Lan chủ yếu có màu lông trắng đen, nhưng vẫn có con lang trắng đỏ. Bò cái có thân hình chắc chắn gần như hình thang, tầm vóc lớn, vú to, bầu vú phát triển, mắn đẻ, hiền lành, và có khả năng sản xuất sữa rất cao. Bò sữa thuần Hà Lan có tiềm năng cho sữa cao hơn các giống bò sữa khác. Bò Hà Lan cho trung bình 50 lít/ngày, cho 10.000 - 15.000 lít/chu kì 300 ngày, khi nhập vào những nước nhiệt đới như Việt Nam, cho mỗi ngày trung bình 15 lít, chu kỳ 300 ngày cho 3.600 - 4.000 lít sữa tươi. ',
      breed: 'Bò Hà Lan',
      care: '- Cho bò ăn thức ăn thô xanh (cỏ, rơm rạ),\n- Vệ sinh máng ăn và máng uống, cung cấp nước sạch cho bò.\n- Kiểm tra sức khỏe của bò, phát hiện sớm các dấu hiệu bệnh tật. \n - Vắt sữa bò (nếu bò đang trong giai đoạn cho sữa). \n -Cho bò đi chăn thả. \n Vệ sinh chuồng trại, loại bỏ phân và rác thải.',
      dateOfBirth: DateTime(2020, 1, 1)
    ),
    Livestock(
      livestockType: 'Bò',
      livestockName: 'Bò Hereford',
      imageUrl: '$imageUrlLivestock/bo_hereford.jpg',
      description: 'Giống bò này có mẫu hình to lớn, vạm vỡ, đầu ngắn, cổ dày, u vai rộng, lưng thẳng, mông dài, nở.Trọng lượng bò cái trưởng thành 600-700kg, bò đực 800-1.100 kg. Nuôi thịt, lúc 18 tháng tuổi bê đực đạt 450 - 500 kg, bê cái 350 - 420 kg. Tỷ lệ thịt xẻ bình quân 58-62%. Bò thích hợp với khí hậu ôn đới và chăn thả.',
      breed: 'Bò Hereford',
      care: '- Cho bò ăn thức ăn thô xanh (cỏ, rơm rạ),\n- Vệ sinh máng ăn và máng uống, cung cấp nước sạch cho bò.\n- Kiểm tra sức khỏe của bò, phát hiện sớm các dấu hiệu bệnh tật. \n - Vắt sữa bò (nếu bò đang trong giai đoạn cho sữa). \n -Cho bò đi chăn thả. \n Vệ sinh chuồng trại, loại bỏ phân và rác thải.',
      dateOfBirth: DateTime(2020, 5, 1)
    ),
    Livestock(
      livestockType: 'Cừu',
      livestockName: 'Cừu Texel',
      imageUrl: '$imageUrlLivestock/cuu_texel.jpg',
      description: 'Các giống cừu Texel là một giống mặt trắng bệch không có lông trên đầu hoặc chân. Giống này được đặc trưng bởi một khuôn mặt ngắn đặc biệt, rộng với một cái mũi màu đen, tai ngắn. Chúng có móng guốc màu đen. Len là loại trung bình (46s-56) với không có sợi màu đen. Động vật trưởng thành cho lông cừu là 3,5 kg (7,7 lbs) đến 5,5 kg (12.1 lbs). Đặc điểm nổi bật nhất của Texel là cơ bắp phát triển vượt trội của mình và chất lượng nạc. Cừu cho thấy một lợi thế của một số chân đầy đủ trong các so sánh giống và ít chất béo trong tổng số thịt.',
      breed: '',
      care: '- Cho cừu ra ngoài đồng cỏ chăn thả. \n- Chuẩn bị thức ăn và nước uống cho cừu. \n- Đảm bảo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n- Kiểm tra sức khỏe cho cừu, cắt móng và tỉa lông nếu cần thiết. \n- Vệ sinh chuồng trại, loại bỏ phân và rác thải.',
      dateOfBirth: DateTime(2020, 2, 8),
    ),
    Livestock(
      livestockType: 'Cừu',
      livestockName: 'Cừu Dorper',
      imageUrl: '$imageUrlLivestock/cuu_dorper.jpg',
      description: 'Cừu Dorper là một giống cừu nhà Nam Phi được phát triển bằng cách lai chéo giữa cừu sừng Dorset và cừu đầu đen Ba Tư. Giống cừu này được tạo ra thông qua những nỗ lực của Bộ Nông nghiệp Nam Phi để cho ra một giống cừu nuôi, một con cừu thịt phù hợp với các vùng đất khô cằn của đất nước này. Nó bây giờ được nuôi ở các khu vực khác, và là giống cừu phổ biến thứ hai ở Nam PhiĐây là giống cừu được đặc trưng bởi sự cơ bắp, nhiều thịt, ít lông',
      breed: 'Cừu Dorper',
      care: '- Cho cừu ra ngoài đồng cỏ chăn thả. \n- Chuẩn bị thức ăn và nước uống cho cừu. \n- Đảm bảo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n- Kiểm tra sức khỏe cho cừu, cắt móng và tỉa lông nếu cần thiết. \n- Vệ sinh chuồng trại, loại bỏ phân và rác thải.',
      dateOfBirth: DateTime(2020, 1, 10)
    ),
    Livestock(
      livestockType: 'Gà',
      livestockName: 'Gà Ri',
      imageUrl: '$imageUrlLivestock/ga_ri.jpg',
      description: 'Gà có màu lông đa dạng. Thân hình nhỏ bé, chân ngắn. Phần lớn gà mái có lông màu vàng rơm, vàng đất hoặc nâu nhạt, có đốm đen ở cổ, đuôi và đầu cánh. Gà trống có màu lông đỏ thẫm, đầu lông cánh và lông đuôi có màu đen ánh xanh; lông bụng có màu đỏ nhạt, vàng đất. Màu da vàng hoặc trắng, da chân vàng. Mào cờ có răng cưa, màu đỏ và phát triển ở con trống. Tích và dái tai màu đỏ, có khi xen lẫn ánh bạc. Chân có hai hàng vẩy màu vàng, đôi khi xen lẫn màu vàng đỏ tươi. Gà mái một năm tuổi nặng 1,2 - 1,5kg, 4 - 5 tháng tuổi bắt đầu đẻ. Sức đẻ năm đầu 100 - 120 trứng, trứng nặng 40 - 45g, vỏ màu trắng. Gà đẻ theo từng đợt 15 - 20 trứng, nghỉ đẻ và đòi ấp. Nuôi con khéo. Gà trống ba tháng đã biết gáy. Một năm tuổi gà trống nặng 1,5 - 2kg',
      breed: 'Gà Ri',
      care: '- Chuẩn bị thức ăn và nước uống cho gà. Đảm bảo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n - Thu hoạch trứng gà\n - Kiểm tra sức khỏe cho gà, cắt móng và tỉa lông nếu cần thiết.\n - Vệ sinh chuồng trại, loại bỏ phân và rác thải.',
      dateOfBirth: DateTime(2020, 1, 10)
    ),
    Livestock(
      livestockType: 'Gà',
      livestockName: 'Gà Đông Tảo',
      imageUrl: '$imageUrlLivestock/ga_dong_tao.jpg',
      description: 'Gà thuộc giống gà to con, dáng hình bệ vệ, với thân hình to, da đỏ, đầu oai vệ, cặp chân vững chãi. Gà Đông Tảo trống có hai mãn lông cơ bản gồm mãn mận (màu tím pha đen) và màu của trái mận. Gà cũng có cặp chân sù sì, cặp chân gà trống to và bao quanh chân ở phía trước là một lớp vảy da sắp xếp không theo hàng, phần còn lại (3/4 diện tích) da sùi giống bề mặt trái dâu tằm ăn, bốn ngón chân xòe ra, chia ngón rõ nét, bàn chân dày, cân đối nên gà bước đi vững chắc. Mào gà trống là mào sun (ngắn và thun lại) màu đỏ tía, tích và rái tai màu đỏ, kém phát triển, nhìn gọn và khỏe',
      breed: 'Gà Đông Tảo',
      care: '- Chuẩn bị thức ăn và nước uống cho gà. Đảm bảo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n - Thu hoạch trứng gà\n - Kiểm tra sức khỏe cho gà, cắt móng và tỉa lông nếu cần thiết.\n - Vệ sinh chuồng trại, loại bỏ phân và rác thải.',
      dateOfBirth: DateTime(2020, 1, 10)
    ),
    Livestock(
      livestockType: 'Mèo',
      livestockName: 'Mèo Mướp',
      imageUrl: '$imageUrlLivestock/meo_muop.jpg',
      description: 'Mèo mướp thường sống khá lâu, trung bình một con mèo có thể sống từ 20-25 năm nhưng tuổi thọ của chúng cũng phụ thuộc vào chế độ chăm sóc, cho ăn, khẩu phần ăn, dinh dưỡng thích hợp với độ tuổi. Những con mèo mướp rất thích ngủ và chúng thường dành nhiều thời gian trong ngày để ngủ. Chúng cũng thích liếm lông và tắm nắng. Lông mèo có khả năng giúp tổng hợp vitamin D và mèo thường liếm lông dưới ánh nắng để lấy vitamin chứ không hẳn là chỉ để làm sạch. Mèo mướp cũng như các giống mèo khác rất thích leo trèo, chạy nhảy và có khả năng nhảy cao, khi nuôi chúng mà trong nhà có nhiều đồ dễ vỡ thì nên để ý đến chúng',
      breed: 'Mèo Mướp',
      care: 'Vệ sinh khay vệ sinh cho mèo. Loại bỏ phân và thay cát mới\n - Dành thời gian để vuốt ve, âu yếm và chơi đùa với mèo.\n - Cung cấp cho mèo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n - Vệ sinh tai cho mèo (nếu cần thiết).\n - Cắt móng cho mèo (nếu cần thiết).',
      dateOfBirth: DateTime(2020, 1, 10)
    ),
    Livestock(
      livestockType: 'Mèo',
      livestockName: 'Mèo Xiêm',
      imageUrl: '$imageUrlLivestock/meo_xiem.jpg',
      description: 'Mèo Xiêm rất hiếu động, rất hay tò mò với mọi thứ xung quanh. Mèo Xiêm Thái rất thân thiện, gần gũi và thung thành với chủ nhân của mình. Lúc nào cũng muốn quấn quýt bên bạn, thích được vuốt ve cưng nựng, thích được bạn quan tâm và chú ý tới chúng. Một điểm cộng cho Siamese là có tài bắt chuột rất giỏi.',
      breed: 'Mèo Xiêm',
      care: 'Vệ sinh khay vệ sinh cho mèo. Loại bỏ phân và thay cát mới\n - Dành thời gian để vuốt ve, âu yếm và chơi đùa với mèo.\n - Cung cấp cho mèo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n - Vệ sinh tai cho mèo (nếu cần thiết).\n - Cắt móng cho mèo (nếu cần thiết).',
      dateOfBirth: DateTime(2020, 1, 10)
    ),
    Livestock(
      livestockType: 'Chó',
      livestockName: 'Chó Chihuahua',
      imageUrl: '$imageUrlLivestock/cho_chihuahua.jpg',
      description: 'Chihuahua là giống chó nhỏ con có đầu tròn và mõm ngắn. Nó có đôi mắt to tròn, màu sẫm gần như đen, đôi khi là màu đỏ ruby sẫm. Đôi tai đặc hiệu to đùng luôn giữ vểnh. Cún con của Chihuahua ở phần thóp trên đỉnh đầu có một hõm mềm. Lỗ thủng này khi cún lớn lên sẽ được xương sọ che phủ hết. Thân hình chắc chắn, dài hơn so với chiều cao, đuôi uốn cong trên lưng hoặc vắt sang một bên.',
      breed: 'Chó Chihuahua',
      care: 'Cung cấp cho chó thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n - Dành thời gian để vuốt ve, âu yếm và chơi đùa với chó.\n - Huấn luyện chó (nếu cần thiết). \n - Dạy chó những mệnh lệnh cơ bản\n - Vệ sinh tai cho chó (nếu cần thiết). \n - Cắt móng cho chó (nếu cần thiết).\n - Dắt chó đi dạo',
      dateOfBirth: DateTime(2020, 1, 10)
    ),
    Livestock(
      livestockType: 'Chó',
      livestockName: 'Chó Pug',
      imageUrl: '$imageUrlLivestock/cho_pug.jpg',
      description: 'Chó Pug có thân hình chắc lẳn, gọn gàng, Cơ thể của loài chó này được coi là cân đối nếu chiều cao tính đến vai gần tương đương với chiều dài từ vai đến hết mông. Chó chuẩn có hình dáng giống quả lê, phần vai rông hơn phần hông. Bộ lông ngắn, mềm mại, dễ chải có màu nâu, trắng, vện và trộn lẫn giữa chúng. Da chúng mềm mại, tạo cảm giác dễ chịu khi vuốt ve. Chúng có đôi mắt tròn lồi màu sẫm và hàm dưới hơi trề ra rất ngộ. Đuôi thẳng hoặc xoắn. Chăm sóc thích hợp của các nếp nhăn là quan trọng nhất.',
      breed: 'Chó Pug',
      care: 'Cung cấp cho chó thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n - Dành thời gian để vuốt ve, âu yếm và chơi đùa với chó.\n - Huấn luyện chó (nếu cần thiết). \n - Dạy chó những mệnh lệnh cơ bản\n - Vệ sinh tai cho chó (nếu cần thiết). \n - Cắt móng cho chó (nếu cần thiết).\n - Dắt chó đi dạo',
      dateOfBirth: DateTime(2020, 1, 10)
    ),
    // Thêm các đối tượng Livestock khác tương tự
  ];
}

List<Product> initializeProducts() {
  return [
    Product(
      productName: 'Ngô',
      imageUrl: '$imageUrlProduct/ngo.jpg',
      description: 'Ngô là một loại ngũ cốc được sử dụng trong thức ăn chăn nuôi cho gia súc, gia cầm và cá. Nó là một nguồn cung cấp calo và protein dồi dào. Ngô cũng là nguồn cung cấp vitamin và khoáng chất tốt, bao gồm vitamin A, E và B12.',
      category: 'Thức ăn',
      amount: 1000,
      price: 500000,
      isSold: false,
    ),
    // Thêm các sản phẩm khác theo mẫu trên
    Product(
      productName: 'Gạo',
      imageUrl: '$imageUrlProduct/gao.jpg',
      description: 'Gạo là một loại ngũ cốc được sử dụng trong thức ăn chăn nuôi cho gia súc, gia cầm và cá. Nó là một nguồn cung cấp calo và protein dồi dào. Gạo cũng là nguồn cung cấp vitamin và khoáng chất tốt, bao gồm vitamin B, sắt và magiê.',
      category: 'Thức ăn',
      amount: 500,
      price: 300000,
      isSold: false,
    ),
    Product(
      productName: 'Cỏ Khô',
      imageUrl: '$imageUrlProduct/co_kho.jpg',
      description: 'Cỏ khô là nguồn thức ăn chính cho bò, cừu và ngựa. Nó được làm bằng cách sấy khô cỏ và các loại cây khác. Cỏ khô cung cấp cho động vật chất xơ cần thiết để tiêu hóa thức ăn và duy trì sức khỏe đường ruột.',
      category: 'Thức ăn',
      amount: 500,
      price: 300000,
      isSold: false,
    ),
    Product(
      productName: 'Royal Canin',
      imageUrl: '$imageUrlProduct/royal_canin.jpg',
      description: 'Cung cấp các giải pháp dinh dưỡng cụ thể và được thiết kế riêng cho nhu cầu sức khỏe của chó và mèo.',
      category: 'Thức ăn',
      amount: 500,
      price: 300000,
      isSold: false,
      
    ),
    Product(
      productName: 'Hạt ANF',
      imageUrl: '$imageUrlProduct/hat_anf.jpg',
      description: 'là dòng hạt hữu cơ, đảm bảo chất lượng sản phẩm không bao gồm thuốc biến đổi gen GMO, thuốc kháng sinh, thuốc trừ sâu, thuốc thay đổi hormon, màu nhân tạo, chất bảo quản.',
      category: 'Thức ăn',
      amount: 500,
      price: 300000,
      isSold: false,
      
    ),
    Product(
      productName: 'Biosubtyl',
      imageUrl: '$imageUrlProduct/biosubtyl.jpg',
      description: 'Là men sống công nghệ bao vi nang, chịu kháng sinh và kháng acid bổ sung dạng thức ăn cho gia súc, gia cầm. BIOSUBTYL được bào chế dưới dạng cốm vi nang hòa tan, bổ sung các loại vi khuẩn sống, có lợi, nhằm tái lập cần bằng hệ vi sinh vật đường ruột, hạn chế các bệnh đường ruột như phân xanh, phân trắng, phân sống, viêm ruột hoại tử, do E. coli, Salmonella, Clostridium pp ở gia cầm, bệnh phân trắng heo con, phù đầu do E.coli, tiêu chảy hàng loạt ở heo sau cai sữa và bê nghé, dê, cừu non, ngoài ra giúp tăng tính thèm ăn, kích thích tiêu hóa, tăng trọng nhanh và giảm FCR, giảm mùi hôi trong chuồng nuôi. Biosubtyl giúp phòng ngừa đầy hơi, tiêu chảy, chướng diều, phân sống, loạn khuẩn đường ruột do dùng kháng sinh, sulphamide dài ngày.',
      category: 'Thuốc',
      amount: 500,
      price: 300000,
      isSold: false,
      
    ),
    Product(
      productName: 'AZ.KTMD(Beta Glucan C)',
      imageUrl: '$imageUrlProduct/beta_glucan_c.jpg',
      description: 'là loại thức ăn bổ sung dạng bột hòa tan dùng cho gia súc, gia cầm. Cung cấp các vitamin, khoáng, acid amin và đặc biệt là Beta-Glucan cho vật nuôi, giúp vật nuôi có sức đề kháng tốt để chống đỡ bệnh. Beta-Glucan là chất có tác dụng kích thích hệ thống miễn dịch tự nhiêncủa cơ thể sinh kháng thể để phòng ngừa các bệnh: do virus dịch tả heo Chu Phi, LMLM, Newcatle, Gumboro… đặc biệt khi chủng vắc xin, khi đang mắc bệnh, thay đổi thời tiết, chuyển chuồng, thay đổi thức ăn, giúp phục hồi nhanh sau khi bệnh. AZ.KTMD giúp vật nuôi ăn nhiều, tăng khả năng tiêu hóa, hấp thu các chất dinh dưỡng, thúc đẩy quá trình sinh trưởng, phát triển và hoàn thiện cơ thể.',
      category: 'Thuốc',
      amount: 500,
      price: 300000,
      isSold: false,
      
    ),
    Product(
      productName: 'B-COMPLEX + K3 + C',
      imageUrl: '$imageUrlProduct/b_complex_k3_c.jpg',
      description: 'Phòng và trị các bệnh do thiếu vitamin nhóm B, rối loạn trao đổi chất, trợ lực, giải độc. Kích thích thèm ăn và tăng trọng nhanh, nâng cao sức đề kháng, chống stress do thay đổi thời tiết, tiêm phòng vắc xin, giúp gia súc, gia cầm mau hồi phục sau khi khỏi bệnh, chống còi cọc, vỗ béo, vàng da, vàng chân, đỏ tích, kích mào. Dùng kết hợp trong điều trị một số bệnh truyền nhiễm. Pha nước hay trộn thức ăn, liệu trình 3-5 ngày liên tục hoặc cho uống thường xuyên trong quá trình nuôi dưỡng.',
      category: 'Thuốc',
      amount: 500,
      price: 300000,
      isSold: false,
      
    ),
    Product(
      productName: 'DPS - Protein',
      imageUrl: '$imageUrlProduct/dps_protein.jpg',
      description: 'Là nguyên liệu được ưa chuộng nhằm giúp vật nuôi sinh trưởng nhanh và năng suất cao hơn. Chúng bổ sung protein động vật vào thức ăn chăn nuôi, cung cấp đạm kích thích tôm, cá mau lớn, mau tăng trọng',
      category: 'Thức ăn',
      amount: 500,
      price: 300000,
      isSold: false,
      
    ),
    Product(
      productName: 'hạt Natural Core',
      imageUrl: '$imageUrlProduct/hat_natural_core.jpg',
      description: 'thương hiệu thức ăn cho chó mèo tới từ xứ sở Kim Chi - Hàn Quốc, nổi tiếng với các sản phẩm được chế biến từ những nguyên liệu hữu cơ, hoàn toàn tươi và sạch. Trong đó, chất lượng thức ăn Natural Core đạt chuẩn chứng nhận hữu cơ quốc tế nghiêm ngặt của Bộ Nông nghiệp Hoa Kỳ - USDA và ECOCERT, nên rất an toàn cho cún',
      category: 'Thức ăn',
      amount: 500,
      price: 300000,
      isSold: false,
      
    ),
    // Các sản phẩm khác...
  ];
}