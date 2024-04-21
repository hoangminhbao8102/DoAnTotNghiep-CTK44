using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;
using SmartFarmAppAPI.Data.Mappings;

namespace SmartFarmAppAPI.Data.Contexts
{
    public class FarmDbContext : DbContext
    {
        public DbSet<Account> Accounts { get; set; }
        public DbSet<Farm> Farms { get; set; }
        public DbSet<Livestock> Livestocks { get; set; }
        public DbSet<LivestockCare> LivestockCares { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Report> Reports { get; set; }

        public FarmDbContext(DbContextOptions<FarmDbContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Ánh xạ các lớp thực thể vào các bảng tương ứng
            modelBuilder.ApplyConfiguration(new AccountMap());
            modelBuilder.ApplyConfiguration(new FarmMap());
            modelBuilder.ApplyConfiguration(new LivestockMap());
            modelBuilder.ApplyConfiguration(new LivestockCareMap());
            modelBuilder.ApplyConfiguration(new ProductMap());
            modelBuilder.ApplyConfiguration(new ReportMap());
        }
    }
}
