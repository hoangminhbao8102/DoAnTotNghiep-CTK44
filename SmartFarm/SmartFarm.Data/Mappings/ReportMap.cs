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
    public class ReportMap : IEntityTypeConfiguration<Report>
    {
        public void Configure(EntityTypeBuilder<Report> builder)
        {
            builder.ToTable("Reports"); // Tên bảng trong cơ sở dữ liệu

            builder.HasKey(r => r.Id); // Khóa chính

            // Cấu hình khóa ngoại
            builder.HasOne(r => r.Account)
                   .WithMany(a => a.Reports)
                   .HasForeignKey(r => r.AccountId); // Liên kết với đối tượng Account, bắt buộc

            builder.HasOne(r => r.Farm)
               .WithMany(f => f.Reports)
               .HasForeignKey(r => r.FarmId); // Liên kết với đối tượng Farm, bắt buộc

            builder.HasOne(r => r.Livestock)
               .WithMany(l => l.Reports)
               .HasForeignKey(r => r.LivestockId); // Liên kết với đối tượng Livestock, bắt buộc

            builder.HasOne(r => r.Product)
               .WithMany(p => p.Reports)
               .HasForeignKey(r => r.ProductId); // Liên kết với đối tượng Product, bắt buộc
        }
    }
}
