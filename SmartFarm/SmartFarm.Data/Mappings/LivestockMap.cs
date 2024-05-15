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
    public class LivestockMap : IEntityTypeConfiguration<Livestock>
    {
        public void Configure(EntityTypeBuilder<Livestock> builder)
        {
            builder.ToTable("Livestocks"); // Tên bảng trong cơ sở dữ liệu

            builder.HasKey(l => l.Id); // Khóa chính

            builder.Property(l => l.LivestockType)
                .IsRequired()
                .HasMaxLength(100); // Loại gia súc, bắt buộc và tối đa 100 ký tự

            builder.Property(l => l.LivestockName)
                .IsRequired()
                .HasMaxLength(100); // Tên gia súc, bắt buộc và tối đa 100 ký tự

            builder.Property(l => l.ImageUrl)
                .HasMaxLength(200); // URL hình ảnh, tối đa 200 ký tự

            builder.Property(l => l.Description)
                .HasMaxLength(500); // Mô tả, tối đa 500 ký tự

            builder.Property(l => l.Breed)
                .HasMaxLength(100); // Giống, tối đa 100 ký tự

            builder.Property(l => l.Care)
                .HasMaxLength(500); // Chăm sóc, tối đa 500 ký tự

            builder.Property(l => l.DateOfBirth)
                .IsRequired(); // Ngày sinh, bắt buộc

            builder.Property(l => l.FarmId)
                .IsRequired(); // Id trang trại, bắt buộc

            builder.HasOne(l => l.Farm)
                .WithMany(f => f.Livestocks)
                .HasForeignKey(l => l.FarmId)
                .OnDelete(DeleteBehavior.Cascade); // Liên kết với đối tượng Farm, xóa khi trang trại bị xóa

            builder.HasOne(l => l.Reports)
                .WithOne()
                .HasForeignKey<Report>(r => r.LivestockId)
                .OnDelete(DeleteBehavior.Cascade); // Liên kết với đối tượng Report, xóa khi gia súc bị xóa
        }
    }
}
