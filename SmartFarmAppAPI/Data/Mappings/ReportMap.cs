using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Data.Mappings
{
    public class ReportMap : IEntityTypeConfiguration<Report>
    {
        public void Configure(EntityTypeBuilder<Report> builder)
        {
            // Đặt tên bảng
            builder.ToTable("Reports");

            // Đặt khóa chính
            builder.HasKey(f => f.Id);

            // Thiết lập các thuộc tính
            builder.Property(r => r.ReportName)
            .IsRequired()
            .HasMaxLength(256);

            builder.Property(r => r.CreatedDate)
                .IsRequired();

            // Các mối quan hệ
            builder.HasMany(r => r.Farms)
                .WithOne(f => f.Report)
                .HasForeignKey(f => f.ReportId);

            builder.HasMany(r => r.Livestocks)
                .WithOne(l => l.Report)
                .HasForeignKey(l => l.ReportId);

            builder.HasMany(r => r.Products)
                .WithOne(p => p.Report)
                .HasForeignKey(p => p.ReportId);
        }
    }
}
