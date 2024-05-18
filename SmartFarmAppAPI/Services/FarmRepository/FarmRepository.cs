using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;
using SmartFarmAppAPI.Data.Contexts;

namespace SmartFarmAppAPI.Services.FarmRepository
{
    public class FarmRepository : IFarmRepository
    {
        private readonly FarmDbContext _context;

        public FarmRepository(FarmDbContext context)
        {
            _context = context;
        }

        public async Task AddFarmAsync(Farm farm, CancellationToken cancellationToken = default)
        {
            await _context.Farms.AddAsync(farm, cancellationToken);
            await _context.SaveChangesAsync(cancellationToken);
        }

        public async Task DeleteFarmAsync(int farmId, CancellationToken cancellationToken = default)
        {
            var farmToDelete = await _context.Farms.FirstOrDefaultAsync(f => f.Id == farmId, cancellationToken);
            if (farmToDelete != null)
            {
                _context.Farms.Remove(farmToDelete);
                await _context.SaveChangesAsync(cancellationToken);
            }
        }

        public async Task<List<Farm>> GetAllFarmsAsync(CancellationToken cancellationToken = default)
        {
            return await _context.Farms.ToListAsync(cancellationToken);
        }

        public async Task<Farm> GetFarmByIdAsync(int farmId, CancellationToken cancellationToken = default)
        {
            return await _context.Farms.FirstOrDefaultAsync(f => f.Id == farmId, cancellationToken);
        }

        public async Task UpdateFarmAsync(int farmId, Farm updatedFarm, CancellationToken cancellationToken = default)
        {
            var existingFarm = await _context.Farms.Include(f => f.Account)
                                                .Include(f => f.Livestock)
                                                .Include(f => f.Report)
                                                .FirstOrDefaultAsync(f => f.Id == farmId, cancellationToken);
            if (existingFarm != null)
            {
                // Update farm properties
                existingFarm.FarmName = updatedFarm.FarmName;
                existingFarm.Location = updatedFarm.Location;
                existingFarm.Area = updatedFarm.Area;
                // Update other properties as needed

                // Save changes to database
                await _context.SaveChangesAsync(cancellationToken);
            }
        }
    }
}
