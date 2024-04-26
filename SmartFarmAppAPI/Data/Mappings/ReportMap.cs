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

            builder.Property(r => r.Date)
                .HasColumnType("date")
                .IsRequired();

            builder.Property(r => r.Content)
                .IsRequired()
                .HasMaxLength(1000);

            builder.Property(p => p.RegisteredAccounts)
                .HasColumnType("int");

            builder.Property(p => p.TotalFarms)
                .HasColumnType("int");

            builder.Property(p => p.TotalLivestocks)
                .HasColumnType("int");

            builder.Property(p => p.SoldProducts)
                .HasColumnType("int");

            builder.HasOne(r => r.Farm)
                .WithMany(f => f.Reports)
                .HasForeignKey(r => r.FarmId)
                .IsRequired();
        }
    }
}
