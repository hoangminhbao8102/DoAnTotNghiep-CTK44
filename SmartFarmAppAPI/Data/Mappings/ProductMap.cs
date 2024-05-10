using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Data.Mappings
{
    public class ProductMap : IEntityTypeConfiguration<Product>
    {
        public void Configure(EntityTypeBuilder<Product> builder)
        {
            // Đặt tên bảng
            builder.ToTable("Products");

            // Đặt khóa chính
            builder.HasKey(p => p.Id);

            // Thiết lập các thuộc tính
            builder.Property(p => p.ProductName)
                .HasMaxLength(100)
                .IsRequired();

            builder.Property(p => p.ImageUrl)
                .HasMaxLength(100);

            builder.Property(p => p.Description)
                .HasMaxLength(500);

            builder.Property(p => p.Category)
                .HasMaxLength(50);

            builder.Property(p => p.Amount)
                .HasColumnType("int");

            builder.Property(p => p.Price)
                .HasColumnType("int");

            // Ánh xạ quan hệ với Report
            builder.HasOne(p => p.Report)
                .WithMany(r => r.Products)
                .HasForeignKey(p => p.ReportId)
                .OnDelete(DeleteBehavior.Restrict); // Thiết lập hành vi xóa
        }
    }
}
