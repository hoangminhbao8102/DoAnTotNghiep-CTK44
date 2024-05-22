using SmartFarmAppAPI.Core.Entities;
using SmartFarmAppAPI.Data.Contexts;

namespace SmartFarmAppAPI.Data.Seeders
{
    public class DataSeeder : IDataSeeder
    {
        private readonly FarmDbContext _dbContext;

        public DataSeeder(FarmDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public void Initialize()
        {
            _dbContext.Database.EnsureCreated();

            if (_dbContext.Accounts.Any())
            {
                return;
            }

            var accounts = AddAccounts();
            var farms = AddFarms(accounts);
            var livestock = AddLivestock(farms);
            var products = AddProducts();
            var reports = AddReports(farms, livestock, products);
        }

        private IList<Account> AddAccounts()
        {
            var accounts = new List<Account>()
            {
                new Account
                {
                    FullName = "Minh Bảo",
                    Address = "26 Hoàng Văn Thụ",
                    PhoneNumber = "0948123456",
                    Email = "minhbao@example.com",
                    Username = "minhbao",
                    Password = "minhbao123",
                    Farms = new List<Farm>()
                },
                new Account
                {
                    FullName = "Nhật Huy",
                    Address = "73 Kim Đồng",
                    PhoneNumber = "0795875333",
                    Email = "huypham@example.com",
                    Username = "huypham",
                    Password = "phnh333",
                    Farms = new List<Farm>()
                }
            };

            _dbContext.Accounts.AddRange(accounts);
            _dbContext.SaveChanges();

            return accounts;
        }

        private IList<Farm> AddFarms(IList<Account> accounts)
        {
            var farms = new List<Farm>()
            {
                new Farm
                {
                    FarmName = "Trang trại xanh",
                    FarmCreated = new DateOnly(2023, 1, 1),
                    Location = "123 Đường Trần Hưng Đạo, Huyện Củ Chi, TP.HCM",
                    Area = 50.5,
                    Number = 10,
                    AccountId = accounts[0].Id,
                },
                new Farm
                {
                    FarmName = "Trang trại sạch",
                    FarmCreated = new DateOnly(2022, 5, 1),
                    Location = "456 Đường Nguyễn Huệ, Huyện Bình Chánh, TP.HCM",
                    Area = 75.0,
                    Number = 20,
                    AccountId = accounts[1].Id,
                }
            };

            _dbContext.Farms.AddRange(farms);
            _dbContext.SaveChanges();

            return farms;
        }

        private IList<Livestock> AddLivestock(IList<Farm> farms)
        {
            var livestocks = new List<Livestock>()
            {
                new Livestock
                {
                    LivestockType = "Bò",
                    LivestockName = "Bò Hà Lan",
                    ImageUrl = @"bo_halan.jpg",
                    Description = "Bò Hà Lan chủ yếu có màu lông trắng đen, nhưng vẫn có con lang trắng đỏ. Bò cái có thân hình chắc chắn gần như hình thang, tầm vóc lớn, vú to, bầu vú phát triển, mắn đẻ, hiền lành, và có khả năng sản xuất sữa rất cao. Bò sữa thuần Hà Lan có tiềm năng cho sữa cao hơn các giống bò sữa khác. Bò Hà Lan cho trung bình 50 lít/ngày, cho 10.000 – 15.000 lít/chu kì 300 ngày, khi nhập vào những nước nhiệt đới như Việt Nam, cho mỗi ngày trung bình 15 lít, chu kỳ 300 ngày cho 3.600 – 4.000 lít sữa tươi.",
                    Breed = "Bò Hà Lan",
                    Care = "- Cho bò ăn thức ăn thô xanh (cỏ, rơm rạ),\n- Vệ sinh máng ăn và máng uống, cung cấp nước sạch cho bò.\n- Kiểm tra sức khỏe của bò, phát hiện sớm các dấu hiệu bệnh tật.\n- Vắt sữa bò (nếu bò đang trong giai đoạn cho sữa).\n- Cho bò đi chăn thả\n- Vệ sinh chuồng trại, loại bỏ phân và rác thải.",
                    DateOfBirth = new DateOnly(2020, 1, 1),
                    FarmId = farms[0].Id
                },
                new Livestock
                {
                    LivestockType = "Bò",
                    LivestockName = "Bò Hereford",
                    ImageUrl = @"bo_hereford.jpg",
                    Description = "Giống bò này có mẫu hình to lớn, vạm vỡ, đầu ngắn, cổ dày, u vai rộng, lưng thẳng, mông dài, nở. Trọng lượng bò cái trưởng thành 600-700kg, bò đực 800-1.100 kg. Nuôi thịt, lúc 18 tháng tuổi bê đực đạt 450–500 kg, bê cái 350–420 kg. Tỷ lệ thịt xẻ bình quân 58-62%. Bò thích hợp với khí hậu ôn đới và chăn thả.",
                    Breed = "Bò Hereford",
                    Care = "- Cho bò ăn thức ăn thô xanh (cỏ, rơm rạ),\n- Vệ sinh máng ăn và máng uống, cung cấp nước sạch cho bò.\n- Kiểm tra sức khỏe của bò, phát hiện sớm các dấu hiệu bệnh tật.\n- Vắt sữa bò (nếu bò đang trong giai đoạn cho sữa).\n- Cho bò đi chăn thả\n- Vệ sinh chuồng trại, loại bỏ phân và rác thải.",
                    DateOfBirth = new DateOnly(2019, 6, 15),
                    FarmId = farms[0].Id
                },
                new Livestock
                {
                    LivestockType = "Cừu",
                    LivestockName = "Cừu Texel",
                    ImageUrl = @"cuu_texel.jpg",
                    Description = "Các giống cừu Texel là một giống mặt trắng bệch không có lông trên đầu hoặc chân. Giống này được đặc trưng bởi một khuôn mặt ngắn đặc biệt, rộng với một cái mũi màu đen, tai ngắn. Chúng có móng guốc màu đen. Len là loại trung bình (46's-56) với không có sợi màu đen. Động vật trưởng thành cho lông cừu là 3,5 kg (7,7 lbs) đến 5,5 kg (12.1 lbs). Đặc điểm nổi bật nhất của Texel là cơ bắp phát triển vượt trội của mình và chất lượng nạc.",
                    Breed = "Cừu Texel",
                    Care = "- Cho cừu ra ngoài đồng cỏ chăn thả.\n- Chuẩn bị thức ăn và nước uống cho cừu.\n- Đảm bảo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n- Kiểm tra sức khỏe cho cừu, cắt móng và tỉa lông nếu cần thiết.\n- Vệ sinh chuồng trại, loại bỏ phân và rác thải.",
                    DateOfBirth = new DateOnly(2021, 3, 10),
                    FarmId = farms[1].Id
                },
                new Livestock
                {
                    LivestockType = "Cừu",
                    LivestockName = "Cừu Dorper",
                    ImageUrl = @"cuu_dorper.jpg",
                    Description = "Cừu Dorper là một giống cừu nhà Nam Phi được phát triển bằng cách lai chéo giữa cừu sừng Dorset và cừu đầu đen Ba Tư. Giống cừu này được tạo ra thông qua những nỗ lực của Bộ Nông nghiệp Nam Phi để cho ra một giống cừu nuôi, một con cừu thịt phù hợp với các vùng đất khô cằn của đất nước này.",
                    Breed = "Cừu Dorper",
                    Care = "- Chuẩn bị thức ăn và nước uống cho cừu.\n- Đảm bảo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n- Kiểm tra sức khỏe cho cừu, cắt móng và tỉa lông nếu cần thiết.\n- Vệ sinh chuồng trại, loại bỏ phân và rác thải.\n- Cho cừu ra ngoài đồng cỏ chăn thả.",
                    DateOfBirth = new DateOnly(2021, 5, 5),
                    FarmId = farms[1].Id
                },
                new Livestock
                {
                    LivestockType = "Gà",
                    LivestockName = "Gà Ri",
                    ImageUrl = @"ga_ri.jpg",
                    Description = "Gà có màu lông đa dạng. Thân hình nhỏ bé, chân ngắn. Phần lớn gà mái có lông màu vàng rơm, vàng đất hoặc nâu nhạt, có đốm đen ở cổ, đuôi và đầu cánh. Gà trống có màu lông đỏ thẫm, đầu lông cánh và lông đuôi có màu đen ánh xanh.",
                    Breed = "Gà Ri",
                    Care = "- Chuẩn bị thức ăn và nước uống cho gà.\n- Đảm bảo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n- Thu hoạch trứng gà.\n- Kiểm tra sức khỏe cho gà, cắt móng và tỉa lông nếu cần thiết.\n- Vệ sinh chuồng trại, loại bỏ phân và rác thải.",
                    DateOfBirth = new DateOnly(2021, 7, 20),
                    FarmId = farms[0].Id
                },
                new Livestock
                {
                    LivestockType = "Gà",
                    LivestockName = "Gà Đông Tảo",
                    ImageUrl = @"ga_dong_tao.jpg",
                    Description = "Gà thuộc giống gà to con, dáng hình bệ vệ, với thân hình to, da đỏ, đầu oai vệ, cặp chân vững chãi. Gà Đông Tảo trống có hai mãn lông cơ bản gồm mãn mận (màu tím pha đen) và màu của trái mận.",
                    Breed = "Gà Đông Tảo",
                    Care = "- Chuẩn bị thức ăn và nước uống cho gà.\n- Đảm bảo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n- Thu hoạch trứng gà.\n- Kiểm tra sức khỏe cho gà, cắt móng và tỉa lông nếu cần thiết.\n- Vệ sinh chuồng trại, loại bỏ phân và rác thải.",
                    DateOfBirth = new DateOnly(2020, 9, 30),
                    FarmId = farms[1].Id
                },
                new Livestock
                {
                    LivestockType = "Mèo",
                    LivestockName = "Mèo Mướp",
                    ImageUrl = @"meo_mup.jpg",
                    Description = "Mèo mướp thường sống khá lâu, trung bình một con mèo có thể sống từ 20–25 năm nhưng tuổi thọ của chúng cũng phụ thuộc vào chế độ chăm sóc, cho ăn, khẩu phần ăn, dinh dưỡng thích hợp với độ tuổi.",
                    Breed = "Mèo Mướp",
                    Care = "- Vệ sinh khay vệ sinh cho mèo. Loại bỏ phân và thay cát mới.\n- Dành thời gian để vuốt ve, âu yếm và chơi đùa với mèo.\n- Cung cấp cho mèo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n- Vệ sinh tai cho mèo (nếu cần thiết).\n- Cắt móng cho mèo (nếu cần thiết).",
                    DateOfBirth = new DateOnly(2018, 4, 12),
                    FarmId = farms[0].Id
                },
                new Livestock
                {
                    LivestockType = "Mèo",
                    LivestockName = "Mèo Xiêm",
                    ImageUrl = @"meo_xiem.jpg",
                    Description = "Mèo Xiêm rất hiếu động, rất hay tò mò với mọi thứ xung quanh. Mèo Xiêm Thái rất thân thiện, gần gũi và thung thành với chủ nhân của mình.",
                    Breed = "Mèo Xiêm",
                    Care = "- Vệ sinh khay vệ sinh cho mèo. Loại bỏ phân và thay cát mới.\n- Dành thời gian để vuốt ve, âu yếm và chơi đùa với mèo.\n- Cung cấp cho mèo thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n- Vệ sinh tai cho mèo (nếu cần thiết).\n- Cắt móng cho mèo (nếu cần thiết).",
                    DateOfBirth = new DateOnly(2019, 11, 5),
                    FarmId = farms[1].Id
                },
                new Livestock
                {
                    LivestockType = "Chó",
                    LivestockName = "Chó Chihuahua",
                    ImageUrl = @"cho_chihuahua.jpg",
                    Description = "Chihuahua là giống chó nhỏ con có đầu tròn và mõm ngắn. Nó có đôi mắt to tròn, màu sẫm gần như đen, đôi khi là màu đỏ ruby sẫm. Đôi tai đặc hiệu to đùng luôn giữ vểnh.",
                    Breed = "Chó Chihuahua",
                    Care = "- Cung cấp cho chó thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n- Dành thời gian để vuốt ve, âu yếm và chơi đùa với chó.\n- Huấn luyện chó (nếu cần thiết).\n- Dạy chó những mệnh lệnh cơ bản.\n- Vệ sinh tai cho chó (nếu cần thiết).\n- Cắt móng cho chó (nếu cần thiết).\n- Dắt chó đi dạo.",
                    DateOfBirth = new DateOnly(2020, 2, 18),
                    FarmId = farms[0].Id
                },
                new Livestock
                {
                    LivestockType = "Chó",
                    LivestockName = "Chó Lạp Xưởng",
                    ImageUrl = @"cho_lap_xuong.jpg",
                    Description = "Chó Pug có thân hình chắc lẳn, gọn gàng, Cơ thể của loài chó này được coi là cân đối nếu chiều cao tính đến vai gần tương đương với chiều dài từ vai đến hết mông.",
                    Breed = "Chó Lạp Xưởng",
                    Care = "- Cung cấp cho chó thức ăn đầy đủ dinh dưỡng và nước uống sạch sẽ.\n- Dành thời gian để vuốt ve, âu yếm và chơi đùa với chó.\n- Huấn luyện chó (nếu cần thiết).\n- Dạy chó những mệnh lệnh cơ bản.\n- Vệ sinh tai cho chó (nếu cần thiết).\n- Cắt móng cho chó (nếu cần thiết).\n- Dắt chó đi dạo.",
                    DateOfBirth = new DateOnly(2019, 12, 25),
                    FarmId = farms[1].Id
                }
            };

            _dbContext.Livestocks.AddRange(livestocks);
            _dbContext.SaveChanges();

            return livestocks;
        }

        private IList<Product> AddProducts()
        {
            var products = new List<Product>()
            {
                new Product
                {
                    ProductName = "Ngô",
                    ImageUrl = "https://example.com/ngo.jpg",
                    Description = "Ngô là một loại ngũ cốc được sử dụng trong thức ăn chăn nuôi cho gia súc, gia cầm và cá. Nó là một nguồn cung cấp calo và protein dồi dào. Ngô cũng là nguồn cung cấp vitamin và khoáng chất tốt, bao gồm vitamin A, E và B12.",
                    Category = "Thức ăn",
                    Amount = 1000,
                    Price = 500000,
                    IsSold = false,
                    ReportId = 1 // Temporarily assigning 1, will update with real value later
                },
                new Product
                {
                    ProductName = "Gạo",
                    ImageUrl = "https://example.com/gao.jpg",
                    Description = "Gạo là một loại ngũ cốc được sử dụng trong thức ăn chăn nuôi cho gia súc, gia cầm và cá. Nó là một nguồn cung cấp calo và protein dồi dào. Gạo cũng là nguồn cung cấp vitamin và khoáng chất tốt, bao gồm vitamin B, sắt và magiê.",
                    Category = "Thức ăn",
                    Amount = 500,
                    Price = 300000,
                    IsSold = false,
                    ReportId = 1 // Temporarily assigning 1, will update with real value later
                },
                new Product
                {
                    ProductName = "Cỏ khô",
                    ImageUrl = "https://example.com/co_kho.jpg",
                    Description = "Cỏ khô là nguồn thức ăn chính cho bò, cừu và ngựa. Nó được làm bằng cách sấy khô cỏ và các loại cây khác. Cỏ khô cung cấp cho động vật chất xơ cần thiết để tiêu hóa thức ăn và duy trì sức khỏe đường ruột.",
                    Category = "Thức ăn",
                    Amount = 200,
                    Price = 200000,
                    IsSold = false,
                    ReportId = 1 // Temporarily assigning 1, will update with real value later
                },
                new Product
                {
                    ProductName = "Thức ăn Royal Canin",
                    ImageUrl = "https://example.com/royal_canin.jpg",
                    Description = "Cung cấp các giải pháp dinh dưỡng cụ thể và được thiết kế riêng cho nhu cầu sức khỏe của chó và mèo.",
                    Category = "Thức ăn",
                    Amount = 300,
                    Price = 600000,
                    IsSold = false,
                    ReportId = 1 // Temporarily assigning 1, will update with real value later
                },
                new Product
                {
                    ProductName = "Thức ăn hạt ANF",
                    ImageUrl = "https://example.com/anf.jpg",
                    Description = "Là dòng hạt hữu cơ, đảm bảo chất lượng sản phẩm không bao gồm thuốc biến đổi gen GMO, thuốc kháng sinh, thuốc trừ sâu, thuốc thay đổi hormon, màu nhân tạo, chất bảo quản.",
                    Category = "Thức ăn",
                    Amount = 400,
                    Price = 700000,
                    IsSold = false,
                    ReportId = 1 // Temporarily assigning 1, will update with real value later
                },
                new Product
                {
                    ProductName = "THUỐC THÚ Y – BIOSUBTYL",
                    ImageUrl = "https://example.com/biosubtyl.jpg",
                    Description = "Là men sống công nghệ bao vi nang, chịu kháng sinh và kháng acid bổ sung dạng thức ăn cho gia súc, gia cầm. BIOSUBTYL giúp phòng ngừa đầy hơi, tiêu chảy, chướng diều, phân sống, loạn khuẩn đường ruột.",
                    Category = "Thuốc",
                    Amount = 150,
                    Price = 900000,
                    IsSold = false,
                    ReportId = 1 // Temporarily assigning 1, will update with real value later
                },
                new Product
                {
                    ProductName = "AZ.KTMD (Beta Glucan C)",
                    ImageUrl = "https://example.com/beta_glucan.jpg",
                    Description = "Là loại thức ăn bổ sung dạng bột hòa tan dùng cho gia súc, gia cầm. Cung cấp các vitamin, khoáng, acid amin và đặc biệt là Beta-Glucan cho vật nuôi, giúp vật nuôi có sức đề kháng tốt để chống đỡ bệnh.",
                    Category = "Thuốc",
                    Amount = 250,
                    Price = 1200000,
                    IsSold = false,
                    ReportId = 1 // Temporarily assigning 1, will update with real value later
                },
                new Product
                {
                    ProductName = "B-COMPLEX + K3 + C",
                    ImageUrl = "https://example.com/b_complex.jpg",
                    Description = "Phòng và trị các bệnh do thiếu vitamin nhóm B, rối loạn trao đổi chất, trợ lực, giải độc. Kích thích thèm ăn và tăng trọng nhanh, nâng cao sức đề kháng, chống stress do thay đổi thời tiết.",
                    Category = "Thuốc",
                    Amount = 200,
                    Price = 800000,
                    IsSold = false,
                    ReportId = 1 // Temporarily assigning 1, will update with real value later
                },
                new Product
                {
                    ProductName = "DPS – Protein",
                    ImageUrl = "https://example.com/dps_protein.jpg",
                    Description = "Là nguyên liệu được ưa chuộng nhằm giúp vật nuôi sinh trưởng nhanh và năng suất cao hơn. Chúng bổ sung protein động vật vào thức ăn chăn nuôi, cung cấp đạm kích thích tôm, cá mau lớn, mau tăng trọng.",
                    Category = "Thức ăn",
                    Amount = 350,
                    Price = 1000000,
                    IsSold = false,
                    ReportId = 1 // Temporarily assigning 1, will update with real value later
                },
                new Product
                {
                    ProductName = "Thức ăn hạt Natural Core",
                    ImageUrl = "https://example.com/natural_core.jpg",
                    Description = "Thương hiệu thức ăn cho chó mèo tới từ xứ sở Kim Chi - Hàn Quốc, nổi tiếng với các sản phẩm được chế biến từ những nguyên liệu hữu cơ, hoàn toàn tươi và sạch.",
                    Category = "Thức ăn",
                    Amount = 500,
                    Price = 1500000,
                    IsSold = false,
                    ReportId = 1 // Temporarily assigning 1, will update with real value later
                }
            };

            _dbContext.Products.AddRange(products);
            _dbContext.SaveChanges();

            return products;
        }

        private IList<Report> AddReports(IList<Farm> farms, IList<Livestock> livestocks, IList<Product> products)
        {
            var reports = new List<Report>()
            {
                new Report
                {
                    ReportName = "Báo cáo của Minh Bảo",
                    CreatedDate = DateTime.Now,
                    Farms = farms,
                    Livestocks = livestocks,
                    Products = products
                },
                new Report
                {
                    ReportName = "Báo cáo của Nhật Huy",
                    CreatedDate = DateTime.Now,
                    Farms = farms,
                    Livestocks = livestocks,
                    Products = products
                },
                new Report
                {
                    ReportName = "Monthly Report",
                    CreatedDate = DateTime.Now,
                    Farms = farms,
                    Livestocks = livestocks,
                    Products = products
                }
            };

            _dbContext.Reports.AddRange(reports);
            _dbContext.SaveChanges();

            // Update Products with real ReportId
            foreach (var product in products)
            {
                product.ReportId = reports[0].Id;
            }
            _dbContext.Products.UpdateRange(products);
            _dbContext.SaveChanges();

            return reports;
        }
    }
}
