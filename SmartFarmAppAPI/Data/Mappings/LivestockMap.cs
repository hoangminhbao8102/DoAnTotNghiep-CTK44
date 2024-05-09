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
                .HasMaxLength(100);

            builder.Property(l => l.LivestockName)
                .HasMaxLength(100);

            builder.Property(l => l.Description)
                .HasMaxLength(500);

            builder.Property(l => l.ImageUrl)
                .HasMaxLength(100);

            builder.Property(l => l.Breed)
                .HasMaxLength(500);

            builder.Property(l => l.Care)
                .HasMaxLength(500);

            builder.Property(l => l.DateOfBirth)
                .HasColumnType("date");

            builder.HasOne(l => l.Farm)
                .WithMany(f => f.Livestocks)
                .HasForeignKey(l => l.FarmId);
        }
    }
}
