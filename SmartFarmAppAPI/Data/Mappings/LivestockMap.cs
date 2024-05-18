using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Data.Mappings
{
    public class LivestockMap : IEntityTypeConfiguration<Livestock>
    {
        public void Configure(EntityTypeBuilder<Livestock> builder)
        {
            // Đặt tên bảng
            builder.ToTable("Livestocks");

            // Đặt khóa chính
            builder.HasKey(l => l.Id);

            // Thiết lập các thuộc tính
            builder.Property(l => l.LivestockType)
                .HasMaxLength(50)
                .IsRequired();

            builder.Property(l => l.LivestockName)
                .HasMaxLength(100);

            builder.Property(l => l.ImageUrl)
                .HasMaxLength(100);

            builder.Property(l => l.Description)
                .HasMaxLength(500);

            builder.Property(l => l.Breed)
                .HasMaxLength(500);

            builder.Property(l => l.Care)
                .HasMaxLength(500);

            builder.Property(l => l.DateOfBirth)
                .HasColumnType("date");

            // Ánh xạ quan hệ với Farm
            builder.HasOne(l => l.Farm)
                .WithOne(f => f.Livestock)
                .HasForeignKey<Livestock>(l => l.FarmId)  // Thiết lập FarmId là khóa ngoại
                .OnDelete(DeleteBehavior.Restrict); // Thiết lập hành vi xóa
        }
    }
}
