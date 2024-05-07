using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;
using SmartFarmAppAPI.Data.Contexts;

namespace SmartFarmAppAPI.Services.Repositories.LivestockRepository
{
    public class LivestockRepository : ILivestockRepository
    {
        public readonly FarmDbContext _context;

        public LivestockRepository(FarmDbContext context)
        {
            _context = context;
        }

        public async Task AddLivestockAsync(Livestock livestock, CancellationToken cancellationToken = default)
        {
            await _context.Livestocks.AddAsync(livestock, cancellationToken);
            await _context.SaveChangesAsync(cancellationToken);
        }

        public async Task DeleteLivestockAsync(int id, CancellationToken cancellationToken = default)
        {
            var livestockToDelete = await _context.Livestocks.FindAsync(id);
            if (livestockToDelete != null)
            {
                _context.Livestocks.Remove(livestockToDelete);
                await _context.SaveChangesAsync(cancellationToken);
            }
        }

        public async Task<List<Livestock>> GetAllLivestocksAsync(CancellationToken cancellationToken = default)
        {
            return await _context.Livestocks.ToListAsync(cancellationToken);
        }

        public async Task<Livestock> GetLivestockByIdAsync(int id, CancellationToken cancellationToken = default)
        {
            return await _context.Livestocks.FindAsync(new object[] { id }, cancellationToken);
        }

        public async Task<List<Livestock>> GetLivestocksByBreedAsync(string breed, CancellationToken cancellationToken = default)
        {
            return await _context.Livestocks.Where(l => l.Breed == breed).ToListAsync(cancellationToken);
        }

        public async Task<List<Livestock>> GetLivestocksByFarmIdAsync(int farmId, CancellationToken cancellationToken = default)
        {
            return await _context.Livestocks.Where(l => l.FarmId == farmId).ToListAsync(cancellationToken);
        }

        public async Task<List<Livestock>> GetLivestocksByTypeAsync(string livestockType, CancellationToken cancellationToken = default)
        {
            return await _context.Livestocks.Where(l => l.LivestockType == livestockType).ToListAsync(cancellationToken);
        }

        public async Task UpdateLivestockAsync(Livestock livestock, CancellationToken cancellationToken = default)
        {
            _context.Entry(livestock).State = EntityState.Modified;
            await _context.SaveChangesAsync(cancellationToken);
        }
    }
}
