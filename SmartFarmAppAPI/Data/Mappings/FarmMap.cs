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

            builder.Property(f => f.FarmCreated)
                .HasColumnType("date");

            builder.Property(f => f.Location)
                .HasMaxLength(200);

            builder.Property(f => f.Area)
                .HasColumnType("int");

            builder.Property(f => f.Number)
                .HasColumnType("int");

            // Các mối quan hệ
            builder.HasOne(f => f.Account)
                .WithMany(a => a.Farms)
                .HasForeignKey(f => f.AccountId)
                .OnDelete(DeleteBehavior.Cascade); // Chính sách xóa: xóa mềm
        }
    }
}
