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
            var livestock = AddLivestock();
            var products = AddProducts();
            var reports = AddReports();
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
                    Number = 50,
                    Account = new Account(),
                    Livestocks = new List<Livestock>()
                },
                new()
                {
                    FarmName = "Dog&Cat",
                    Location = "162 Hoàng Văn Thụ",
                    Area = 75,
                    Number = 30,
                    Account = new Account(),
                    Livestocks = new List<Livestock>()
                }
            };

            _dbContext.Farms.AddRange(farms);
            _dbContext.SaveChanges();

            return farms;
        }

        private IList<Livestock> AddLivestock()
        {
            var livestocks = new List<Livestock>()
            {
                new()
                {
                    Type = "Cattle",
                    Name = "Angus",
                    ImageUrl = "https://example.com/angus.jpg",
                    Description = "The Angus, commonly known as Aberdeen Angus in most parts of the world, is a Scottish breed of small beef cattle. It derives from cattle native to the counties of Aberdeenshire and Angus in north-eastern Scotland.",
                    Breed = "Angus",
                    DateOfBirth = new DateTime(2019, 5, 15),
                    Care = "Regular checkups with the vet"
                },
                new()
                {
                    Type = "Poultry",
                    Name = "Chicken",
                    ImageUrl = "",
                    Description = "Chicken is the most common type of poultry in the world.",
                    Breed = "Broiler",
                    DateOfBirth = new DateTime(2020, 8, 25),
                    Care = "Provide balanced feed according to age."
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
                new()
                {
                    ProductName = "Organic Apples",
                    ImageUrl = "",
                    Description = "Fresh organic apples from our farm.",
                    Category = "Fruits",
                    Amount = 100,
                    Price = 2000000
                },
                new()
                {
                    ProductName = "Free-Range Eggs",
                    ImageUrl = "",
                    Description = "Farm-fresh free-range eggs.",
                    Category = "Eggs",
                    Amount = 50,
                    Price = 500000
                }
            };

            _dbContext.Products.AddRange(products);
            _dbContext.SaveChanges();

            return products;
        }

        private IList<Report> AddReports()
        {
            var reports = new List<Report>()
            {
                new()
                {
                    RegisteredAccounts = 100, // Số tài khoản đã đăng ký
                    TotalFarms = _dbContext.Farms.Count(), // Tổng số trang trại trong cơ sở dữ liệu
                    TotalLivestocks = _dbContext.Livestocks.Count(), // Tổng số động vật trong cơ sở dữ liệu
                    SoldProducts = _dbContext.Products.Count(), // Số lượng sản phẩm đã bán trong cơ sở dữ liệu
                    Farms = _dbContext.Farms.ToList(), // Danh sách các trang trại trong cơ sở dữ liệu
                    Livestocks = _dbContext.Livestocks.ToList(), // Danh sách các động vật trong cơ sở dữ liệu
                    Products = _dbContext.Products.ToList() // Danh sách các sản phẩm trong cơ sở dữ liệu
                }
            };

            _dbContext.Reports.AddRange(reports);
            _dbContext.SaveChanges();

            return reports;
        }
    }
}
