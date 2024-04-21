using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;
using SmartFarmAppAPI.Data.Contexts;

namespace SmartFarmAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LivestocksController : ControllerBase
    {
        private readonly FarmDbContext _context;

        public LivestocksController(FarmDbContext context)
        {
            _context = context;
        }

        // GET: api/Livestocks
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Livestock>>> GetLivestocks()
        {
            return await _context.Livestocks.ToListAsync();
        }

        // GET: api/Livestocks/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Livestock>> GetLivestock(int id)
        {
            var livestock = await _context.Livestocks.FindAsync(id);

            if (livestock == null)
            {
                return NotFound();
            }

            return livestock;
        }

        // PUT: api/Livestocks/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutLivestock(int id, Livestock livestock)
        {
            if (id != livestock.Id)
            {
                return BadRequest();
            }

            _context.Entry(livestock).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LivestockExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Livestocks
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Livestock>> PostLivestock(Livestock livestock)
        {
            _context.Livestocks.Add(livestock);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetLivestock", new { id = livestock.Id }, livestock);
        }

        // DELETE: api/Livestocks/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteLivestock(int id)
        {
            var livestock = await _context.Livestocks.FindAsync(id);
            if (livestock == null)
            {
                return NotFound();
            }

            _context.Livestocks.Remove(livestock);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool LivestockExists(int id)
        {
            return _context.Livestocks.Any(e => e.Id == id);
        }
    }
}
