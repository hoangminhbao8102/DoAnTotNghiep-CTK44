using Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.Mappings
{
    public class ReportMap : IEntityTypeConfiguration<Report>
    {
        public void Configure(EntityTypeBuilder<Report> builder)
        {
            builder.ToTable("Reports");

            builder.HasKey(r => r.Id);

            builder.Property(r => r.ReportDate)
                .HasColumnType("date")
                .IsRequired();

            builder.Property(r => r.ReportContent)
                .IsRequired()
                .HasMaxLength(1000);

            builder.HasOne(r => r.Farm)
                .WithMany(f => f.Reports)
                .HasForeignKey(r => r.FarmId)
                .IsRequired();
        }
    }
}
