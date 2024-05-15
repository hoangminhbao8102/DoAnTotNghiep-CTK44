using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SmartFarm.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartFarm.Data.Mappings
{
    public class ProductMap : IEntityTypeConfiguration<Product>
    {
        public void Configure(EntityTypeBuilder<Product> builder)
        {
            builder.ToTable("Products"); // Tên bảng trong cơ sở dữ liệu

            builder.HasKey(p => p.Id); // Khóa chính

            builder.Property(p => p.ProductName)
                .IsRequired()
                .HasMaxLength(100); // Tên sản phẩm, bắt buộc và tối đa 100 ký tự

            builder.Property(p => p.ImageUrl)
                .HasMaxLength(200); // URL hình ảnh, tối đa 200 ký tự

            builder.Property(p => p.Description)
                .HasMaxLength(500); // Mô tả, tối đa 500 ký tự

            builder.Property(p => p.Category)
                .HasMaxLength(100); // Loại sản phẩm, tối đa 100 ký tự

            builder.Property(p => p.Amount)
                .IsRequired(); // Số lượng, bắt buộc

            builder.Property(p => p.Price)
                .IsRequired(); // Giá, bắt buộc

            builder.HasOne(p => p.Reports)
                .WithOne()
                .HasForeignKey<Report>(r => r.ProductId)
                .OnDelete(DeleteBehavior.Cascade); // Liên kết với đối tượng Report, xóa khi sản phẩm bị xóa
        }
    }
}
