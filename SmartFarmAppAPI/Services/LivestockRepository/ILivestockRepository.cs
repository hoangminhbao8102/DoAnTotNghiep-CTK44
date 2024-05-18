using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Services.LivestockRepository
{
    public interface ILivestockRepository
    {
        Task<List<Livestock>> GetAllLivestocksAsync(CancellationToken cancellationToken = default);

        Task<Livestock> GetLivestockByIdAsync(int id, CancellationToken cancellationToken = default);

        Task<List<Livestock>> GetLivestocksByTypeAsync(string livestockType, CancellationToken cancellationToken = default);

        Task<List<Livestock>> GetLivestocksByBreedAsync(string breed, CancellationToken cancellationToken = default);

        Task AddLivestockAsync(Livestock livestock, CancellationToken cancellationToken = default);

        Task UpdateLivestockAsync(Livestock livestock, CancellationToken cancellationToken = default);

        Task DeleteLivestockAsync(int id, CancellationToken cancellationToken = default);
    }
}
