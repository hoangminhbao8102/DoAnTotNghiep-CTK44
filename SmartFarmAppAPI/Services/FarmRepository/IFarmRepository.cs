using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Services.FarmRepository
{
    public interface IFarmRepository
    {
        Task<List<Farm>> GetAllFarmsAsync(CancellationToken cancellationToken = default);

        Task<Farm> GetFarmByIdAsync(int farmId, CancellationToken cancellationToken = default);

        Task AddFarmAsync(Farm farm, CancellationToken cancellationToken = default);

        Task UpdateFarmAsync(int farmId, Farm updatedFarm, CancellationToken cancellationToken = default);

        Task DeleteFarmAsync(int farmId, CancellationToken cancellationToken = default);
    }
}
