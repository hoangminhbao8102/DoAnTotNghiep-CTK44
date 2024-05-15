using Microsoft.EntityFrameworkCore;
using SmartFarm.Core.Entities;
using SmartFarm.Data.Mappings;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartFarm.Data.Contexts
{
    public class FarmDbContext : DbContext
    {
        public DbSet<Account> Accounts { get; set; }

        public DbSet<Farm> Farms { get; set; }

        public DbSet<Livestock> Livestocks { get; set; }

        public DbSet<Product> Products { get; set; }

        public DbSet<Report> Reports { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=LAPTOP-01O105KM\\SQLEXPRESS; Database=FarmManagement; User ID=sa; Password=minhbao8102; TrustServerCertificate=true; Trusted_Connection=false; MultipleActiveResultSets=true");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Account>()
                .HasMany(a => a.Reports)
                .WithOne(r => r.Account)
                .HasForeignKey(r => r.AccountId);

            // Ánh xạ các lớp thực thể vào các bảng tương ứng
            modelBuilder.ApplyConfiguration(new AccountMap());
            modelBuilder.ApplyConfiguration(new FarmMap());
            modelBuilder.ApplyConfiguration(new LivestockMap());
            modelBuilder.ApplyConfiguration(new ProductMap());
            modelBuilder.ApplyConfiguration(new ReportMap());
        }
    }
}
