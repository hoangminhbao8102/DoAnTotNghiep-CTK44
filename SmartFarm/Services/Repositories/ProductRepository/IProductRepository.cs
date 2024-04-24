using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Repositories.ProductRepository
{
    public interface IProductRepository
    {
        Task<List<Product>> GetAllProductsAsync(CancellationToken cancellationToken = default);

        Task<Product> GetProductByIdAsync(int id, CancellationToken cancellationToken = default);

        Task<List<Product>> GetProductsByCategoryAsync(string category, CancellationToken cancellationToken = default);

        Task<List<Product>> GetProductsByFarmIdAsync(int farmId, CancellationToken cancellationToken = default);

        Task AddProductAsync(Product product, CancellationToken cancellationToken = default);

        Task UpdateProductAsync(int id, Product product, CancellationToken cancellationToken = default);

        Task DeleteProductAsync(int id, CancellationToken cancellationToken = default);
    }
}
