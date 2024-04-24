using Core.Entities;
using Data.Contexts;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Repositories.ReportRepository
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

        public async Task<List<Report>> GetReportsAsync(DateTime startDate, DateTime endDate, CancellationToken cancellationToken = default)
        {
            return await _context.Reports
            .Where(r => r.ReportDate >= startDate && r.ReportDate <= endDate)
            .ToListAsync(cancellationToken);
        }
    }
}
