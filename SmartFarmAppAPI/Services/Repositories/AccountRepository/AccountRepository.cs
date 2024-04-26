using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;
using SmartFarmAppAPI.Data.Contexts;

namespace SmartFarmAppAPI.Services.Repositories.AccountRepository
{
    public class AccountRepository : IAccountRepository
    {
        private readonly FarmDbContext _context;

        public AccountRepository(FarmDbContext context)
        {
            _context = context;
        }

        public async Task AddAccountAsync(Account account, CancellationToken cancellationToken = default)
        {
            await _context.Accounts.AddAsync(account, cancellationToken);
            await _context.SaveChangesAsync(cancellationToken);
        }

        public async Task DeleteAccountAsync(int accountId, CancellationToken cancellationToken = default)
        {
            var accountToDelete = await _context.Accounts.FindAsync(accountId);
            if (accountToDelete != null)
            {
                _context.Accounts.Remove(accountToDelete);
                await _context.SaveChangesAsync(cancellationToken);
            }
        }

        public async Task<Account> GetAccountByIdAsync(int accountId, CancellationToken cancellationToken = default)
        {
            return await _context.Accounts.FindAsync(new object[] { accountId }, cancellationToken);
        }

        public async Task<List<Account>> GetAllAccountsAsync(CancellationToken cancellationToken = default)
        {
            return await _context.Accounts.ToListAsync(cancellationToken);
        }

        public async Task UpdateAccountAsync(Account account, CancellationToken cancellationToken = default)
        {
            var existingAccount = await _context.Accounts.FindAsync(account.Id);
            if (existingAccount != null)
            {
                existingAccount.FullName = account.FullName;
                existingAccount.Address = account.Address;
                existingAccount.PhoneNumber = account.PhoneNumber;
                existingAccount.Email = account.Email;
                existingAccount.Username = account.Username;
                existingAccount.Password = account.Password;
                existingAccount.Farms = account.Farms;

                _context.Entry(existingAccount).State = EntityState.Modified;
                await _context.SaveChangesAsync(cancellationToken);
            }
        }
    }
}
