using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Data.Mappings
{
    public class LivestockMap : IEntityTypeConfiguration<Livestock>
    {
        public void Configure(EntityTypeBuilder<Livestock> builder)
        {
            builder.ToTable("Livestocks");

            builder.HasKey(l => l.Id);

            builder.Property(l => l.LivestockType)
                .IsRequired()
                .HasMaxLength(100);

            builder.Property(l => l.LivestockAnimalType)
                .IsRequired()
                .HasMaxLength(100);

            builder.Property(l => l.LivestockName)
                .IsRequired()
                .HasMaxLength(100);

            builder.Property(l => l.Breed)
                .HasMaxLength(100);

            builder.Property(l => l.DateOfBirth)
                .HasColumnType("date")
                .IsRequired();

            builder.HasOne(l => l.Farm)
                .WithMany(f => f.Livestocks)
                .HasForeignKey(l => l.FarmId)
                .IsRequired();

            builder.HasMany(l => l.LivestockCares)
                .WithOne(lc => lc.Livestock)
                .HasForeignKey(lc => lc.LivestockId)
                .OnDelete(DeleteBehavior.Cascade); // Xóa vật nuôi sẽ xóa tất cả các hoạt động chăm sóc của nó
        }
    }
}
