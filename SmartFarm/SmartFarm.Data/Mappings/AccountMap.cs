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
    public class AccountMap : IEntityTypeConfiguration<Account>
    {
        public void Configure(EntityTypeBuilder<Account> builder)
        {
            builder.ToTable("Accounts"); // Tên bảng trong cơ sở dữ liệu

            builder.HasKey(a => a.Id); // Khóa chính

            builder.Property(a => a.FullName)
                .IsRequired()
                .HasMaxLength(100); // Tên đầy đủ, bắt buộc và tối đa 100 ký tự

            builder.Property(a => a.Address)
                .HasMaxLength(200); // Địa chỉ, tối đa 200 ký tự

            builder.Property(a => a.PhoneNumber)
                .HasMaxLength(20); // Số điện thoại, tối đa 20 ký tự

            builder.Property(a => a.Email)
                .IsRequired()
                .HasMaxLength(100); // Địa chỉ email, bắt buộc và tối đa 100 ký tự

            builder.Property(a => a.Username)
                .IsRequired()
                .HasMaxLength(50); // Tên người dùng, bắt buộc và tối đa 50 ký tự

            builder.Property(a => a.Password)
                .IsRequired()
                .HasMaxLength(100); // Mật khẩu, bắt buộc và tối đa 100 ký tự

            // Cấu hình quan hệ với Report
            builder.HasMany(a => a.Reports)
                   .WithOne(r => r.Account)
                   .HasForeignKey(r => r.AccountId)
                   .OnDelete(DeleteBehavior.Cascade); // Liên kết với đối tượng Report, xóa khi tài khoản bị xóa
        }
    }
}
