using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;
using SmartFarmAppAPI.Data.Contexts;
using SmartFarmAppAPI.Services.LivestockRepository;

namespace SmartFarmAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LivestocksController : ControllerBase
    {
        private readonly LivestockRepository _livestockRepository;

        public LivestocksController(LivestockRepository livestockRepository)
        {
            _livestockRepository = livestockRepository;
        }

        // GET: api/Livestocks
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Livestock>>> GetLivestocks()
        {
            var livestock = await _livestockRepository.GetAllLivestocksAsync();
            return livestock;
        }

        // GET: api/Livestocks/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Livestock>> GetLivestock(int id)
        {
            var livestock = await _livestockRepository.GetLivestockByIdAsync(id);

            if (livestock == null)
            {
                return NotFound();
            }

            return livestock;
        }

        // PUT: api/Livestocks/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutLivestock(int id, Livestock livestock)
        {
            if (id != livestock.Id)
            {
                return BadRequest();
            }

            try
            {
                await _livestockRepository.UpdateLivestockAsync(livestock);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!await LivestockExists(id))
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
            await _livestockRepository.AddLivestockAsync(livestock);
            return CreatedAtAction("GetLivestock", new { id = livestock.Id }, livestock);
        }

        // DELETE: api/Livestocks/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteLivestock(int id)
        {
            var livestock = await _livestockRepository.GetLivestockByIdAsync(id);
            if (livestock == null)
            {
                return NotFound();
            }

            await _livestockRepository.DeleteLivestockAsync(id);

            return NoContent();
        }

        private async Task<bool> LivestockExists(int id)
        {
            var livestock = await _livestockRepository.GetLivestockByIdAsync(id);
            return livestock != null;
        }
    }
}
