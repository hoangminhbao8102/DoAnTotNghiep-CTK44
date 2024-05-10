using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Data.Mappings
{
    public class FarmMap : IEntityTypeConfiguration<Farm>
    {
        public void Configure(EntityTypeBuilder<Farm> builder)
        {
            // Đặt tên bảng
            builder.ToTable("Farms");

            // Đặt khóa chính
            builder.HasKey(f => f.Id);

            // Thiết lập các thuộc tính
            builder.Property(f => f.FarmName)
                .HasMaxLength(100)
                .IsRequired();

            builder.Property(f => f.Location)
                .HasMaxLength(200);

            builder.Property(f => f.Area)
                .HasColumnType("int");

            builder.Property(f => f.Number)
                .HasColumnType("int");

            // Ánh xạ quan hệ với Account
            builder.HasOne(f => f.Account)
                .WithMany(a => a.Farms)
                .HasForeignKey(f => f.AccountId)
                .OnDelete(DeleteBehavior.Restrict); // Thiết lập hành vi xóa

            // Ánh xạ quan hệ nhiều nhiều với Livestock
            builder.HasMany(f => f.Livestocks)
                .WithOne(l => l.Farm)
                .HasForeignKey(l => l.FarmId)
                .OnDelete(DeleteBehavior.Cascade); // Thiết lập hành vi xóa

            // Ánh xạ quan hệ với Report
            builder.HasOne(f => f.Report)
                .WithMany(r => r.Farms)
                .HasForeignKey(f => f.ReportId)
                .OnDelete(DeleteBehavior.Restrict); // Thiết lập hành vi xóa
        }
    }
}
