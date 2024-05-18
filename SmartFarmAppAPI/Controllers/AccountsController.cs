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
using SmartFarmAppAPI.Services.AccountRepository;

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

        // POST: api/Accounts/login
        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] Account loginInfo)
        {
            var accounts = await _accountRepository.GetAllAccountsAsync(); // Sử dụng await để chờ cho kết quả trả về
            var account = accounts.FirstOrDefault(a => a.Username == loginInfo.Username && a.Password == loginInfo.Password);
            if (account == null)
            {
                return Unauthorized(); // Trả về mã trạng thái 401 Unauthorized nếu không tìm thấy tài khoản
            }

            // Trả về thông tin tài khoản nếu đăng nhập thành công
            return Ok(account);
        }

        // POST: api/Accounts/register
        [HttpPost("register")]
        public async Task<IActionResult> Register(Account account)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            // Lấy tất cả các tài khoản từ cơ sở dữ liệu
            var allAccounts = await _accountRepository.GetAllAccountsAsync();

            // Kiểm tra xem tài khoản đã tồn tại chưa
            var existingAccount = allAccounts.FirstOrDefault(a => a.Email == account.Email);
            if (existingAccount != null)
            {
                return Conflict("Email already exists.");
            }

            // Thêm tài khoản mới vào cơ sở dữ liệu
            await _accountRepository.AddAccountAsync(account);

            return Ok("Registration successful.");
        }

        // POST: api/Accounts/
        [HttpPost]
        public async Task<ActionResult<Account>> PostAccount(Account account)
        {
            await _accountRepository.AddAccountAsync(account);
            return CreatedAtAction("GetAccount", new { id = account.Id }, account);
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
