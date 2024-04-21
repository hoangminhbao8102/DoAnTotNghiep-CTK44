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
    public class LivestockCaresController : ControllerBase
    {
        private readonly FarmDbContext _context;

        public LivestockCaresController(FarmDbContext context)
        {
            _context = context;
        }

        // GET: api/LivestockCares
        [HttpGet]
        public async Task<ActionResult<IEnumerable<LivestockCare>>> GetLivestockCares()
        {
            return await _context.LivestockCares.ToListAsync();
        }

        // GET: api/LivestockCares/5
        [HttpGet("{id}")]
        public async Task<ActionResult<LivestockCare>> GetLivestockCare(int id)
        {
            var livestockCare = await _context.LivestockCares.FindAsync(id);

            if (livestockCare == null)
            {
                return NotFound();
            }

            return livestockCare;
        }

        // PUT: api/LivestockCares/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutLivestockCare(int id, LivestockCare livestockCare)
        {
            if (id != livestockCare.Id)
            {
                return BadRequest();
            }

            _context.Entry(livestockCare).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LivestockCareExists(id))
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

        // POST: api/LivestockCares
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<LivestockCare>> PostLivestockCare(LivestockCare livestockCare)
        {
            _context.LivestockCares.Add(livestockCare);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetLivestockCare", new { id = livestockCare.Id }, livestockCare);
        }

        // DELETE: api/LivestockCares/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteLivestockCare(int id)
        {
            var livestockCare = await _context.LivestockCares.FindAsync(id);
            if (livestockCare == null)
            {
                return NotFound();
            }

            _context.LivestockCares.Remove(livestockCare);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool LivestockCareExists(int id)
        {
            return _context.LivestockCares.Any(e => e.Id == id);
        }
    }
}
