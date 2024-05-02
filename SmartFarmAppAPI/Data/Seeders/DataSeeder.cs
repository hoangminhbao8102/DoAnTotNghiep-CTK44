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
            throw new NotImplementedException();
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
    }
}
