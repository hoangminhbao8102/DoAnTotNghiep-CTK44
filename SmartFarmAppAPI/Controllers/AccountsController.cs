using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Identity.Client;
using SmartFarmAppAPI.Core.Entities;
using SmartFarmAppAPI.Data.Contexts;
using SmartFarmAppAPI.Services.Repositories.AccountRepository;

namespace SmartFarmAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountsController : ControllerBase
    {
        private readonly AccountRepository _accountRepository;

        public AccountsController(AccountRepository accountRepository)
        {
            _accountRepository = accountRepository;
        }

        // GET: api/Accounts
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Account>>> GetAccounts()
        {
            var accounts = await _accountRepository.GetAllAccountsAsync();
            return Ok(accounts);
        }

        // GET: api/Accounts/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Account>> GetAccount(int id)
        {
            var account = await _accountRepository.GetAccountByIdAsync(id);
            if (account == null)
            {
                return NotFound();
            }
            return Ok(account);
        }

        // PUT: api/Accounts/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAccount(int id, Account account)
        {
            if (id != account.Id)
            {
                return BadRequest();
            }
            await _accountRepository.UpdateAccountAsync(account);
            return NoContent();
        }

        // POST: api/Accounts/
        [HttpPost]
        public async Task<ActionResult<Account>> PostAccount(Account account)
        {
            await _accountRepository.AddAccountAsync(account);
            return CreatedAtAction("GetAccount", new { id = account.Id }, account);
        }

        // POST: api/Accounts/login
        [HttpPost("login")]
        public IActionResult Login([FromBody] Account loginInfo)
        {
            var account = _accountRepository.Accounts.FirstOrDefault(a => a.Username == loginInfo.Username && a.Password == loginInfo.Password);

            if (account == null)
            {
                return BadRequest("Invalid username or password");
            }

            // Đăng nhập thành công, trả về thông tin tài khoản
            return Ok(account);
        }

        // POST: api/Accounts/register
        [HttpPost("register")]
        public IActionResult Register(Account newAccount)
        {
            // Kiểm tra xem tài khoản đã tồn tại chưa
            var existingAccount = _accountRepository.Accounts.FirstOrDefault(a => a.Username == newAccount.Username || a.Email == newAccount.Email);

            if (existingAccount != null)
            {
                return BadRequest("Username or email already exists");
            }

            // Gán Id cho tài khoản mới
            newAccount.Id = _accountRepository.Accounts.Count() + 1;

            // Thêm tài khoản mới vào danh sách (trong thực tế, bạn sẽ lưu trữ vào cơ sở dữ liệu)
            _accountRepository.Add(newAccount);

            // Trả về tài khoản đã đăng ký thành công
            return Ok(newAccount);
        }

        // DELETE: api/Accounts/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAccount(int id)
        {
            await _accountRepository.DeleteAccountAsync(id);
            return NoContent();
        }
    }
}
