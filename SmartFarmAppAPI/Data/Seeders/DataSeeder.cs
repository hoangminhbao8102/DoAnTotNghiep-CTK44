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

        public void Initialze()
        {
            _dbContext.Database.EnsureCreated();

            if (_dbContext.Accounts.Any())
            {
                return;
            }

            var accounts = AddAccounts();
            var farms = AddFarms(accounts);
            var livestock = AddLivestock(farms);
            var products = AddProducts(farms);
            var reports = AddReports(farms);
        }

        private IList<Account> AddAccounts()
        {
            var accounts = new List<Account>()
            {
                new()
                {
                    FullName = "Minh Bảo",
                    Address = "26 Hoàng Văn Thụ",
                    PhoneNumber = "0948123456",
                    Username = "minhbao",
                    Password = "minhbao123",
                },
                new()
                {
                    FullName = "Nhật Huy",
                    Address = "73 Kim Đồng",
                    PhoneNumber = "0795875333",
                    Username = "huypham",
                    Password = "phnh333",
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
                    FarmName = "Hồng Phát",
                    Location = "16 Vạn Thành",
                    Area = 150,
                    OwnerId = accounts.First().Id,
                    Livestocks = new List<Livestock>(),
                    Products = new List<Product>(),
                    Reports = new List<Report>()
                },
                new()
                {
                    FarmName = "Dog&Cat",
                    Location = "162 Hoàng Văn Thụ",
                    Area = 75,
                    OwnerId = accounts.Skip(1).First().Id,
                    Livestocks = new List<Livestock>(),
                    Products = new List<Product>(),
                    Reports = new List<Report>()
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
                new()
                {
                    LivestockType = "Cattle",
                    LivestockName = "Angus",
                    ImageUrl = "https://example.com/angus.jpg",
                    Description = "The Angus, commonly known as Aberdeen Angus in most parts of the world, is a Scottish breed of small beef cattle. It derives from cattle native to the counties of Aberdeenshire and Angus in north-eastern Scotland.",
                    Breed = "Angus",
                    DateOfBirth = new DateTime(2019, 5, 15),
                    FarmId = farms.First().Id, // Assuming there's at least one farm in the farms list
                    Farm = farms.First(),
                    Care = "Regular checkups with the vet"
                },
                new()
                {
                    LivestockType = "Poultry",
                    LivestockName = "Chicken",
                    ImageUrl = "",
                    Description = "Chicken is the most common type of poultry in the world.",
                    Breed = "Broiler",
                    DateOfBirth = new DateTime(2020, 8, 25),
                    Farm = new Farm(),
                    Care = "Provide balanced feed according to age."
                }
            };

            _dbContext.Livestocks.AddRange(livestocks);
            _dbContext.SaveChanges();

            return livestocks;
        }


        private IList<Product> AddProducts(IList<Farm> farms) 
        {
            var products = new List<Product>()
            {
                new()
                {
                    ProductName = "Organic Apples",
                    ImageUrl = "",
                    Description = "Fresh organic apples from our farm.",
                    Category = "Fruits",
                    Amount = 100, // Assume 100 units available
                    Price = 2.5m, // Assume price per unit is $2.50
                    FarmId = farms.First().Id, // Assuming farms collection is not empty and using the first farm id
                    Farm = farms.First() // Assuming farms collection is not empty and using the first farm object
                },
                new()
                {
                    ProductName = "Free-Range Eggs",
                    ImageUrl = "",
                    Description = "Farm-fresh free-range eggs.",
                    Category = "Eggs",
                    Amount = 50, // Assume 50 eggs available
                    Price = 1.75m, // Assume price per egg is $1.75
                    FarmId = farms.Last().Id, // Assuming farms collection is not empty and using the last farm id
                    Farm = farms.Last() // Assuming farms collection is not empty and using the last farm object
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
                    Date = DateTime.Now, // Ngày của báo cáo
                    Content = "Sample report content", // Nội dung báo cáo
                    RegisteredAccounts = 100, // Số tài khoản đã đăng ký
                    TotalFarms = farms.Count, // Tổng số trang trại
                    TotalLivestocks = farms.Sum(f => f.Livestocks.Count), // Tổng số gia súc trong tất cả trang trại
                    SoldProducts = farms.Sum(f => f.Products.Where(p => p.IsSold).Count()), // Tổng số sản phẩm đã bán
                    FarmId = farms[0].Id, // ID của trang trại đầu tiên (đây là giả định)
                    Farm = farms[0] // Trang trại đầu tiên (đây là giả định)
                }
            };

            _dbContext.Reports.AddRange(reports);
            _dbContext.SaveChanges();

            return reports;
        }
    }
}
