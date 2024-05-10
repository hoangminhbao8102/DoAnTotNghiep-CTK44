using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Services.Repositories.ReportRepository
{
    public interface IReportRepository
    {
        Task<int> GetReportCountAsync(CancellationToken cancellationToken = default);
    }
}
