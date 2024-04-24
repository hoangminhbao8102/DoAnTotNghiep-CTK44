using Core.Entities;
using Data.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.Seeders
{
    public class DataSeeder : IDataSeeder
    {
        private readonly FarmDbContext _dbContext;
        public DataSeeder(FarmDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public void Initialze()
        {
            _dbContext.Database.EnsureCreated();

            if (_dbContext.Accounts.Any()) return;

            var accounts = AddAccounts();
            var farms = AddFarms(accounts);
            var livestock = AddLivestock(farms);
            var livestockCares = AddLivestockCares(livestock);
            var products = AddProducts(farms);
            var reports = AddReports(farms);
        }

        private IList<Account> AddAccounts()
        {
            var accounts = new List<Account>() 
            {
                new()
                {
                    FullName = "John Doe",
                    Address = "123 Đường Chính",
                    PhoneNumber = "555-1234",
                    Email = "john@example.com",
                    Username = "john_doe",
                    Password = "password123",
                    Farms = new List<Farm>()
                },
                new()
                {
                    FullName = "Jane Smith",
                    Address = "456 Đường Phố Elm",
                    PhoneNumber = "555-5678",
                    Email = "jane@example.com",
                    Username = "jane_smith",
                    Password = "password456",
                    Farms = new List<Farm>()
                },
                new()
                {
                    FullName = "Michael Johnson",
                    Address = "789 Đường Sồi",
                    PhoneNumber = "555-9012",
                    Email = "michael@example.com",
                    Username = "michael_johnson",
                    Password = "password789",
                    Farms = new List<Farm>()
                },
                new()
                {
                    FullName = "Emily Brown",
                    Address = "321 Đường Thông",
                    PhoneNumber = "555-3456",
                    Email = "emily@example.com",
                    Username = "emily_brown",
                    Password = "password012",
                    Farms = new List<Farm>()
                },
                new()
                {
                    FullName = "David Wilson",
                    Address = "654 Đường Thích",
                    PhoneNumber = "555-7890",
                    Email = "david@example.com",
                    Username = "david_wilson",
                    Password = "password345",
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
                new()
                {
                    FarmName = "Trang trại 1",
                    Location = "456 Đường Phố Elm",
                    Area = 100,
                    OwnerId = accounts.First().Id,
                    Livestocks = new List<Livestock>(),
                    Products = new List<Product>(),
                    Reports = new List<Report>()
                },
                new()
                {
                    FarmName = "Trang trại 2",
                    Location = "789 Đường Sồi",
                    Area = 150,
                    OwnerId = accounts.Skip(1).First().Id,
                    Livestocks = new List<Livestock>(),
                    Products = new List<Product>(),
                    Reports = new List<Report>()
                }
                // Add more farms as needed
            };

            _dbContext.Farms.AddRange(farms);
            _dbContext.SaveChanges();

            return farms;
        }

        private IList<Livestock> AddLivestock(IList<Farm> farms)
        {
            var livestock = new List<Livestock>() 
            {
                new() 
                {
                    LivestockType = "Cow",
                    LivestockName = "Bessie",
                    Breed = "Angus",
                    DateOfBirth = new DateTime(2020, 1, 1),
                    FarmId = farms.First().Id,
                    LivestockCares = new List<LivestockCare>()
                },
                new()
                {
                    LivestockType = "Gà",
                    LivestockName = "Chicko",
                    Breed = "Leghorn",
                    DateOfBirth = new DateTime(2019, 5, 12),
                    FarmId = farms.Skip(1).First().Id,
                    LivestockCares = new List<LivestockCare>()
                },
                new()
                {
                    LivestockType = "Lợn",
                    LivestockName = "Porky",
                    Breed = "Yorkshire",
                    DateOfBirth = new DateTime(2021, 3, 20),
                    FarmId = farms.Skip(2).First().Id,
                    LivestockCares = new List<LivestockCare>()
                },
                new()
                {
                    LivestockType = "Dê",
                    LivestockName = "Billy",
                    Breed = "Boer",
                    DateOfBirth = new DateTime(2018, 9, 8),
                    FarmId = farms.Skip(3).First().Id,
                    LivestockCares = new List<LivestockCare>()
                },
                new()
                {
                    LivestockType = "Ngựa",
                    LivestockName = "Shadow",
                    Breed = "Thoroughbred",
                    DateOfBirth = new DateTime(2017, 11, 25),
                    FarmId = farms.Skip(4).First().Id,
                    LivestockCares = new List<LivestockCare>()
                },
                new()
                {
                    LivestockType = "Dê",
                    LivestockName = "Betsy",
                    Breed = "Nubian",
                    DateOfBirth = new DateTime(2019, 7, 14),
                    FarmId = farms.Skip(5).First().Id,
                    LivestockCares = new List<LivestockCare>()
                },
                new()
                {
                    LivestockType = "Gà",
                    LivestockName = "Nugget",
                    Breed = "Plymouth Rock",
                    DateOfBirth = new DateTime(2020, 2, 28),
                    FarmId = farms.Skip(6).First().Id,
                    LivestockCares = new List<LivestockCare>()
                },
                new()
                {
                    LivestockType = "Ngựa",
                    LivestockName = "Spirit",
                    Breed = "Arabian",
                    DateOfBirth = new DateTime(2019, 1, 10),
                    FarmId = farms.Skip(7).First().Id,
                    LivestockCares = new List<LivestockCare>()
                },
                new()
                {
                    LivestockType = "Bò",
                    LivestockName = "Moo",
                    Breed = "Hereford",
                    DateOfBirth = new DateTime(2021, 6, 5),
                    FarmId = farms.Skip(8).First().Id,
                    LivestockCares = new List<LivestockCare>()
                },
                new()
                {
                    LivestockType = "Lợn",
                    LivestockName = "Wilbur",
                    Breed = "Hampshire",
                    DateOfBirth = new DateTime(2020, 8, 17),
                    FarmId = farms.Skip(9).First().Id,
                    LivestockCares = new List<LivestockCare>()
                }
            };

            _dbContext.Livestocks.AddRange(livestock);
            _dbContext.SaveChanges();

            return livestock;
        }

        private IList<LivestockCare> AddLivestockCares(IList<Livestock> livestock)
        {
            var livestockCares = new List<LivestockCare>() 
            {
                new() 
                {
                    LivestockId = livestock.First().Id,
                    CareDate = DateTime.Now.Date,
                    CareDescription = "Cho ăn cỏ và nước, kiểm tra sức khỏe"
                },
                new()
                {
                    LivestockId = livestock.Skip(1).First().Id,
                    CareDate = DateTime.Now.AddDays(-1).Date,
                    CareDescription = "Kiểm tra trạng thái sức khỏe hàng ngày"
                },
                new()
                {
                    LivestockId = livestock.Skip(2).First().Id,
                    CareDate = DateTime.Now.AddDays(-2).Date,
                    CareDescription = "Tắm rửa và làm sạch chuồng trại"
                },
                new()
                {
                    LivestockId = livestock.Skip(3).First().Id,
                    CareDate = DateTime.Now.AddDays(-3).Date,
                    CareDescription = "Kiểm tra hơi thở và mắt vật nuôi"
                },
                new()
                {
                    LivestockId = livestock.Skip(4).First().Id,
                    CareDate = DateTime.Now.AddDays(-4).Date,
                    CareDescription = "Kiểm tra tình trạng lông và da của vật nuôi"
                },
                new()
                {
                    LivestockId = livestock.Skip(5).First().Id,
                    CareDate = DateTime.Now.AddDays(-5).Date,
                    CareDescription = "Đo lường lượng thức ăn và nước uống hàng ngày"
                },
                new()
                {
                    LivestockId = livestock.Skip(6).First().Id,
                    CareDate = DateTime.Now.AddDays(-6).Date,
                    CareDescription = "Kiểm tra trạng thái sức khỏe và lập kế hoạch dinh dưỡng"
                },
                new()
                {
                    LivestockId = livestock.Skip(7).First().Id,
                    CareDate = DateTime.Now.AddDays(-7).Date,
                    CareDescription = "Chăm sóc vết thương và cấp phát thuốc"
                },
                new()
                {
                    LivestockId = livestock.Skip(8).First().Id,
                    CareDate = DateTime.Now.AddDays(-8).Date,
                    CareDescription = "Kiểm tra môi trường sống và điều chỉnh nhiệt độ"
                },
                new()
                {
                    LivestockId = livestock.Skip(9).First().Id,
                    CareDate = DateTime.Now.AddDays(-9).Date,
                    CareDescription = "Làm sạch bát và nơi ăn uống"
                }
            };

            _dbContext.LivestockCares.AddRange(livestockCares);
            _dbContext.SaveChanges();

            return livestockCares;
        }

        private IList<Product> AddProducts(IList<Farm> farms)
        {
            var products = new List<Product>() 
            {
                new()
                {
                    ProductName = "Thức ăn cho bò",
                    Description = "Thức ăn giàu dinh dưỡng dành cho bò sữa",
                    Category = "Thức ăn chăn nuôi",
                    Amount = 100,
                    Price = 50.0m,
                    FarmId = farms.First().Id
                },
                new()
                {
                    ProductName = "Vitamin cho gia súc",
                    Description = "Vitamin bổ sung cho gia súc, tăng cường sức khỏe",
                    Category = "Dinh dưỡng",
                    Amount = 50,
                    Price = 30.0m,
                    FarmId = farms.First().Id
                },
                new()
                {
                    ProductName = "Thuốc trị bệnh",
                    Description = "Thuốc chăm sóc và trị bệnh cho gia súc",
                    Category = "Y tế thú y",
                    Amount = 30,
                    Price = 70.0m,
                    FarmId = farms.First().Id
                },
                new()
                {
                    ProductName = "Phân hữu cơ",
                    Description = "Phân bón hữu cơ dùng trong chăn nuôi",
                    Category = "Bón phân",
                    Amount = 200,
                    Price = 20.0m,
                    FarmId = farms.First().Id
                },
                new()
                {
                    ProductName = "Thức ăn cho gà",
                    Description = "Thức ăn hỗn hợp cho gà đẻ và gà thịt",
                    Category = "Thức ăn gia cầm",
                    Amount = 150,
                    Price = 40.0m,
                    FarmId = farms.First().Id
                },
                new()
                {
                    ProductName = "Vật dụng chăn nuôi",
                    Description = "Các vật dụng cần thiết cho việc chăm sóc và quản lý chăn nuôi",
                    Category = "Vật dụng",
                    Amount = 80,
                    Price = 25.0m,
                    FarmId = farms.First().Id
                },
                new()
                {
                    ProductName = "Thuốc trừ sâu",
                    Description = "Thuốc trừ sâu an toàn cho chăn nuôi",
                    Category = "Y tế thú y",
                    Amount = 100,
                    Price = 60.0m,
                    FarmId = farms.First().Id
                },
                new()
                {
                    ProductName = "Nguyên liệu chế biến thức ăn",
                    Description = "Nguyên liệu cần thiết cho việc chế biến thức ăn cho gia súc",
                    Category = "Nguyên liệu",
                    Amount = 120,
                    Price = 35.0m,
                    FarmId = farms.First().Id
                },
                new()
                {
                    ProductName = "Thuốc trị bệnh cho gà",
                    Description = "Thuốc trị các bệnh phổ biến của gà",
                    Category = "Y tế gia cầm",
                    Amount = 70,
                    Price = 45.0m,
                    FarmId = farms.First().Id
                },
                new()
                {
                    ProductName = "Máng cho lợn",
                    Description = "Máng chứa thức ăn cho lợn, chất liệu chịu lực",
                    Category = "Vật dụng",
                    Amount = 90,
                    Price = 15.0m,
                    FarmId = farms.First().Id
                }
            };

            _dbContext.Products.AddRange(products);
            _dbContext.SaveChanges();

            return products;
        }

        private IList<Report> AddReports(IList<Farm> farms)
        {
            var reports = new List<Report>()
            {
                new()
                {
                    ReportDate = DateTime.Now.Date,
                    ReportContent = "Báo cáo về tình hình chăm sóc và sản xuất tại trại nuôi gia súc.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-1),
                    ReportContent = "Báo cáo hàng ngày về tình trạng sức khỏe của gia súc.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-2),
                    ReportContent = "Báo cáo về tiến độ thu hoạch và sản xuất thức ăn.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-3),
                    ReportContent = "Báo cáo hàng tuần về tình hình chăm sóc vật nuôi.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-4),
                    ReportContent = "Báo cáo về tiến độ cải tạo đất đai tại trang trại.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-5),
                    ReportContent = "Báo cáo hàng tuần về tiến độ chăn nuôi.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-6),
                    ReportContent = "Báo cáo về việc thực hiện biện pháp phòng trừ sâu bệnh.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-7),
                    ReportContent = "Báo cáo hàng tháng về doanh thu và chi phí tại trang trại.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-8),
                    ReportContent = "Báo cáo về tình hình cung cấp thức ăn cho gia súc.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-9),
                    ReportContent = "Báo cáo hàng tuần về tình hình sản xuất sữa.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-10),
                    ReportContent = "Báo cáo hàng tháng về tình hình tiêu thụ sản phẩm.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-11),
                    ReportContent = "Báo cáo về tình hình cung ứng vật liệu xây dựng.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-12),
                    ReportContent = "Báo cáo hàng tuần về tình trạng sản xuất lúa.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-13),
                    ReportContent = "Báo cáo hàng tuần về tình hình thu hoạch hoa quả.",
                    FarmId = farms.First().Id
                },
                new()
                {
                    ReportDate = DateTime.Now.Date.AddDays(-14),
                    ReportContent = "Báo cáo hàng tháng về tình hình xuất khẩu sản phẩm.",
                    FarmId = farms.First().Id
                }
            };

            _dbContext.Reports.AddRange(reports);
            _dbContext.SaveChanges();

            return reports;
        }
    }
}
