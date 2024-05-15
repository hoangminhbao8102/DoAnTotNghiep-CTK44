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
    public class FarmMap : IEntityTypeConfiguration<Farm>
    {
        public void Configure(EntityTypeBuilder<Farm> builder)
        {
            builder.ToTable("Farms"); // Tên bảng trong cơ sở dữ liệu

            builder.HasKey(f => f.Id); // Khóa chính

            builder.Property(f => f.FarmName)
                .IsRequired()
                .HasMaxLength(100); // Tên trang trại, bắt buộc và tối đa 100 ký tự

            builder.Property(f => f.Location)
                .HasMaxLength(200); // Vị trí trang trại, tối đa 200 ký tự

            builder.Property(f => f.Area)
                .IsRequired(); // Diện tích, bắt buộc

            builder.Property(f => f.Number)
                .IsRequired(); // Số lượng, bắt buộc

            builder.Property(f => f.AccountId)
                .IsRequired(); // Id tài khoản, bắt buộc

            builder.HasOne(f => f.Account)
                .WithMany()
                .HasForeignKey(f => f.AccountId)
                .OnDelete(DeleteBehavior.Cascade); // Liên kết với đối tượng Account, xóa khi tài khoản bị xóa

            builder.HasMany(f => f.Livestocks)
                .WithOne()
                .HasForeignKey(l => l.FarmId)
                .OnDelete(DeleteBehavior.Cascade); // Liên kết với danh sách đối tượng Livestock, xóa khi trang trại bị xóa

            builder.HasOne(f => f.Reports)
                .WithOne()
                .HasForeignKey<Report>(r => r.FarmId)
                .OnDelete(DeleteBehavior.Cascade); // Liên kết với đối tượng Report, xóa khi trang trại bị xóa
        }
    }
}
