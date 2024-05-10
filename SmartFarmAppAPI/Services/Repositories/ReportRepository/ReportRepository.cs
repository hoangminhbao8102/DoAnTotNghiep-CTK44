using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;
using SmartFarmAppAPI.Data.Contexts;

namespace SmartFarmAppAPI.Services.Repositories.ReportRepository
{
    public class ReportRepository : IReportRepository
    {
        private readonly FarmDbContext _context;

        public ReportRepository(FarmDbContext context)
        {
            _context = context;
        }

        public async Task<int> GetReportCountAsync(CancellationToken cancellationToken = default)
        {
            return await _context.Reports.CountAsync(cancellationToken);
        }
    }
}
