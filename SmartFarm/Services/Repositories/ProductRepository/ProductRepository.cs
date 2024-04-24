using Core.Entities;
using Data.Contexts;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Repositories.ProductRepository
{
    public class ProductRepository : IProductRepository
    {
        private readonly FarmDbContext _context;

        public ProductRepository(FarmDbContext context)
        {
            _context = context;
        }

        public async Task AddProductAsync(Product product, CancellationToken cancellationToken = default)
        {
            await _context.Products.AddAsync(product, cancellationToken);
            await _context.SaveChangesAsync(cancellationToken);
        }

        public async Task DeleteProductAsync(int id, CancellationToken cancellationToken = default)
        {
            var product = await _context.Products.FindAsync(new object[] { id }, cancellationToken);
            if (product != null)
            {
                _context.Products.Remove(product);
                await _context.SaveChangesAsync(cancellationToken);
            }
        }

        public async Task<List<Product>> GetAllProductsAsync(CancellationToken cancellationToken = default)
        {
            return await _context.Products.ToListAsync(cancellationToken);
        }

        public async Task<Product> GetProductByIdAsync(int id, CancellationToken cancellationToken = default)
        {
            return await _context.Products.FindAsync(new object[] { id }, cancellationToken);
        }

        public async Task<List<Product>> GetProductsByCategoryAsync(string category, CancellationToken cancellationToken = default)
        {
            return await _context.Products.Where(p => p.Category == category).ToListAsync(cancellationToken);
        }

        public async Task<List<Product>> GetProductsByFarmIdAsync(int farmId, CancellationToken cancellationToken = default)
        {
            return await _context.Products.Where(p => p.FarmId == farmId).ToListAsync(cancellationToken);
        }

        public async Task UpdateProductAsync(int id, Product product, CancellationToken cancellationToken = default)
        {
            var existingProduct = await _context.Products.FindAsync(new object[] { id }, cancellationToken);
            if (existingProduct != null)
            {
                existingProduct.ProductName = product.ProductName;
                existingProduct.Description = product.Description;
                existingProduct.ImageUrl = product.ImageUrl;
                existingProduct.Category = product.Category;
                existingProduct.Amount = product.Amount;
                existingProduct.Price = product.Price;
                existingProduct.FarmId = product.FarmId;
                existingProduct.Farm = product.Farm;

                await _context.SaveChangesAsync(cancellationToken);
            }
        }
    }
}
