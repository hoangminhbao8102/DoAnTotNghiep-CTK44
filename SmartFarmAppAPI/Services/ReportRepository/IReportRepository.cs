using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Services.ReportRepository
{
    public interface IReportRepository
    {
        Task<int> GetReportCountAsync(CancellationToken cancellationToken = default);
    }
}
