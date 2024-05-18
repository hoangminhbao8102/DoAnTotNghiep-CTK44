using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Data.Mappings
{
    public class AccountMap : IEntityTypeConfiguration<Account>
    {
        public void Configure(EntityTypeBuilder<Account> builder)
        {
            // Đặt tên bảng
            builder.ToTable("Accounts");

            // Đặt khóa chính
            builder.HasKey(a => a.Id);

            // Thiết lập các thuộc tính
            builder.Property(a => a.FullName)
                .HasMaxLength(100)
                .IsRequired();

            builder.Property(a => a.Address)
                .HasMaxLength(200);

            builder.Property(a => a.PhoneNumber)
                .HasMaxLength(20);

            builder.Property(a => a.Email)
                .HasMaxLength(100)
                .IsRequired();

            builder.Property(a => a.Username)
                .HasMaxLength(50)
                .IsRequired();

            builder.Property(a => a.Password)
                .HasMaxLength(50)
                .IsRequired();
        }
    }
}
