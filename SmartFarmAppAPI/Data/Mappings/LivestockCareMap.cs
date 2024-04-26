using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Data.Mappings
{
    public class LivestockCareMap : IEntityTypeConfiguration<LivestockCare>
    {
        public void Configure(EntityTypeBuilder<LivestockCare> builder)
        {
            builder.ToTable("LivestockCares");

            builder.HasKey(lc => lc.Id);

            builder.Property(lc => lc.Date)
                .HasColumnType("date")
                .IsRequired();

            builder.Property(lc => lc.Description)
                .IsRequired()
                .HasMaxLength(500);

            builder.HasOne(lc => lc.Livestock)
                .WithMany(l => l.LivestockCares)
                .HasForeignKey(lc => lc.LivestockId)
                .IsRequired();
        }
    }
}
