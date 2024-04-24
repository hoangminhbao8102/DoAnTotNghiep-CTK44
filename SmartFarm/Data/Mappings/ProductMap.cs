﻿using Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.Mappings
{
    public class ProductMap : IEntityTypeConfiguration<Product>
    {
        public void Configure(EntityTypeBuilder<Product> builder)
        {
            builder.ToTable("Products");

            builder.HasKey(p => p.Id);

            builder.Property(p => p.ProductName)
                .IsRequired()
                .HasMaxLength(100);

            builder.Property(p => p.Description)
                .HasMaxLength(500);

            builder.Property(p => p.ImageUrl)
                .HasMaxLength(100);

            builder.Property(p => p.Category)
                .HasMaxLength(100);

            builder.Property(p => p.Price)
                .HasColumnType("decimal(10,2)");

            builder.HasOne(p => p.Farm)
                .WithMany(f => f.Products)
                .HasForeignKey(p => p.FarmId)
                .IsRequired();
        }
    }
}