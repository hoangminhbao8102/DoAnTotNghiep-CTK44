using SmartFarmAppAPI.Core.Entities;

namespace SmartFarmAppAPI.Services.AccountRepository
{
    public interface IAccountRepository
    {
        Task AddAccountAsync(Account account, CancellationToken cancellationToken = default);

        Task<Account> GetAccountByIdAsync(int accountId, CancellationToken cancellationToken = default);

        Task<List<Account>> GetAllAccountsAsync(CancellationToken cancellationToken = default);

        Task UpdateAccountAsync(Account account, CancellationToken cancellationToken = default);

        Task DeleteAccountAsync(int accountId, CancellationToken cancellationToken = default);
    }
}
