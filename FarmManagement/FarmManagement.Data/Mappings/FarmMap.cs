using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FarmManagement.Models.Entities;

namespace FarmManagement.Data.Mappings
{
    public class FarmMap : IEntityTypeConfiguration<Farm>
    {
        public void Configure(EntityTypeBuilder<Farm> builder)
        {
            builder.ToTable("Farms");

            builder.HasKey(f => f.Id);

            builder.Property(f => f.FarmName)
                .IsRequired()
                .HasMaxLength(100);

            builder.Property(f => f.Location)
                .IsRequired()
                .HasMaxLength(255);

            builder.Property(f => f.Area)
                .IsRequired();

            builder.HasOne(f => f.Owner)
                .WithMany(a => a.Farms)
                .HasForeignKey(f => f.OwnerId)
                .IsRequired();

            builder.HasMany(f => f.Livestocks)
                .WithOne(l => l.Farm)
                .HasForeignKey(l => l.FarmId)
                .OnDelete(DeleteBehavior.Cascade); // Xóa trang trại sẽ xóa tất cả vật nuôi của nó

            builder.HasMany(f => f.Products)
                .WithOne(p => p.Farm)
                .HasForeignKey(p => p.FarmId)
                .OnDelete(DeleteBehavior.Cascade); // Xóa trang trại sẽ xóa tất cả sản phẩm của nó

            builder.HasMany(f => f.Reports)
                .WithOne(r => r.Farm)
                .HasForeignKey(r => r.FarmId)
                .OnDelete(DeleteBehavior.Cascade); // Xóa trang trại sẽ xóa tất cả báo cáo của nó
        }
    }
}
