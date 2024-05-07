using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Services.Repositories.ReportRepository
{
    public interface IReportRepository
    {
        Task<List<Report>> GetReportsAsync(DateTime startDate, DateTime endDate, CancellationToken cancellationToken = default);

        Task<int> GetReportCountAsync(CancellationToken cancellationToken = default);
    }
}
