using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Repositories.AccountRepository
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
