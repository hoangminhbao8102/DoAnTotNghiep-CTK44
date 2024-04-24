using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Repositories.ReportRepository
{
    public interface IReportRepository
    {
        Task<List<Report>> GetReportsAsync(DateTime startDate, DateTime endDate, CancellationToken cancellationToken = default);

        Task<int> GetReportCountAsync(CancellationToken cancellationToken = default);
    }
}
