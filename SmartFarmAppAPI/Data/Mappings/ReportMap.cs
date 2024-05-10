using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Data.Mappings
{
    public class ReportMap : IEntityTypeConfiguration<Report>
    {
        public void Configure(EntityTypeBuilder<Report> builder)
        {
            builder.ToTable("Reports");

            builder.HasKey(r => r.Id);

            builder.Property(r => r.RegisteredAccounts)
                .HasColumnType("int");

            builder.Property(r => r.TotalFarms)
                .HasColumnType("int");

            builder.Property(r => r.TotalLivestocks)
                .HasColumnType("int");

            builder.Property(r => r.SoldProducts)
                .HasColumnType("int");

            builder.HasMany(r => r.Accounts)
                .WithOne(a => a.Report)
                .HasForeignKey(a => a.Id)
                .OnDelete(DeleteBehavior.Cascade);

            builder.HasMany(r => r.Farms)
                .WithOne(f => f.Report)
                .HasForeignKey(f => f.Id)
                .OnDelete(DeleteBehavior.Cascade);

            builder.HasMany(r => r.Livestocks)
                .WithOne(l => l.Report)
                .HasForeignKey(l => l.Id)
                .OnDelete(DeleteBehavior.Cascade);

            builder.HasMany(r => r.Products)
                .WithOne(p => p.Report)
                .HasForeignKey(p => p.Id)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
