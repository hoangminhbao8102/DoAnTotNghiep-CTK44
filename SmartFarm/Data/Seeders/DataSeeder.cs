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
                    Address = "123 Main Street",
                    PhoneNumber = "555-1234",
                    Email = "john@example.com",
                    Username = "john_doe",
                    Password = "password123",
                    Farms = new List<Farm>()
                },
            // Add more accounts as needed
            };

            _dbContext.Accounts.AddRange(accounts);
            _dbContext.SaveChanges();

            return accounts;
        }

        private IList<Farm> AddFarms(IList<Account> accounts)
        {
            var farms = new List<Farm>();

            foreach (var account in accounts)
            {
                var farm = new Farm
                {
                    FarmName = "Farm of " + account.FullName,
                    Location = "456 Elm Street",
                    Area = 100,
                    OwnerId = account.Id,
                    Owner = account, // Thiết lập Owner
                    Livestocks = new List<Livestock>(),
                    Products = new List<Product>(),
                    Reports = new List<Report>()
                };

                farms.Add(farm);
            }

            _dbContext.Farms.AddRange(farms);
            _dbContext.SaveChanges();

            return farms;
        }

        private IList<Livestock> AddLivestock(IList<Farm> farms)
        {
            var livestock = new List<Livestock>();

            foreach (var farm in farms)
            {
                var newLivestock = new Livestock
                {
                    LivestockType = "Cow",
                    LivestockName = "Bessie",
                    Breed = "Angus",
                    DateOfBirth = new DateTime(2020, 1, 1),
                    FarmId = farm.Id,
                    Farm = farm, // Thiết lập Farm
                    LivestockCares = new List<LivestockCare>()
                };

                livestock.Add(newLivestock);
            }

            _dbContext.Livestocks.AddRange(livestock);
            _dbContext.SaveChanges();

            return livestock;
        }

        private IList<LivestockCare> AddLivestockCares(IList<Livestock> livestock)
        {
            var livestockCares = new List<LivestockCare>();

            foreach (var item in livestock)
            {
                var livestockCare = new LivestockCare
                {
                    LivestockId = item.Id,
                    Livestock = item, // Thiết lập Livestock
                    CareDate = DateTime.Now.Date,
                    CareDescription = "Fed hay and water, checked health"
                };

                livestockCares.Add(livestockCare);
            }

            _dbContext.LivestockCares.AddRange(livestockCares);
            _dbContext.SaveChanges();

            return livestockCares;
        }

        private IList<Product> AddProducts(IList<Farm> farms)
        {
            var products = new List<Product>();

            foreach (var farm in farms)
            {
                var product = new Product
                {
                    ProductName = "Product of " + farm.FarmName,
                    Description = "Description of Product",
                    Category = "Category",
                    Amount = 10,
                    Price = 20.5m,
                    FarmId = farm.Id,
                    Farm = farm // Thiết lập Farm
                };

                products.Add(product);
            }

            _dbContext.Products.AddRange(products);
            _dbContext.SaveChanges();

            return products;
        }

        private IList<Report> AddReports(IList<Farm> farms)
        {
            var reports = new List<Report>();

            foreach (var farm in farms)
            {
                var report = new Report
                {
                    ReportDate = DateTime.Now.Date,
                    ReportContent = "Report content",
                    FarmId = farm.Id,
                    Farm = farm // Thiết lập Farm
                };

                reports.Add(report);
            }

            _dbContext.Reports.AddRange(reports);
            _dbContext.SaveChanges();

            return reports;
        }
    }
}
