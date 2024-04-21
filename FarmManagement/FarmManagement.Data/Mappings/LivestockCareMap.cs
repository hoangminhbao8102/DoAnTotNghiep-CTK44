using FarmManagement.Models.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FarmManagement.Data.Mappings
{
    public class LivestockCareMap : IEntityTypeConfiguration<LivestockCare>
    {
        public void Configure(EntityTypeBuilder<LivestockCare> builder)
        {
            builder.ToTable("LivestockCares");

            builder.HasKey(lc => lc.Id);

            builder.Property(lc => lc.CareDate)
                .HasColumnType("date")
                .IsRequired();

            builder.Property(lc => lc.CareDescription)
                .IsRequired()
                .HasMaxLength(500);

            builder.HasOne(lc => lc.Livestock)
                .WithMany(l => l.LivestockCares)
                .HasForeignKey(lc => lc.LivestockId)
                .IsRequired();
        }
    }
}
