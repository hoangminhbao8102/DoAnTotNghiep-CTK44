using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SmartFarmAppAPI.Core.Entities;
using SmartFarmAppAPI.Data.Contexts;
using SmartFarmAppAPI.Services.Repositories.FarmRepository;

namespace SmartFarmAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FarmsController : ControllerBase
    {
        private readonly FarmRepository _farmRepository;

        public FarmsController(FarmRepository farmRepository)
        {
            _farmRepository = farmRepository;
        }

        // GET: api/Farms
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Farm>>> GetFarms()
        {
            var farms = await _farmRepository.GetAllFarmsAsync();
            return farms;
        }

        // GET: api/Farms/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Farm>> GetFarm(int id)
        {
            var farm = await _farmRepository.GetFarmByIdAsync(id);

            if (farm == null)
            {
                return NotFound();
            }

            return farm;
        }

        // PUT: api/Farms/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutFarm(int id, Farm farm)
        {
            if (id != farm.Id)
            {
                return BadRequest();
            }

            try
            {
                await _farmRepository.UpdateFarmAsync(id, farm);
            }
            catch (InvalidOperationException)
            {
                return NotFound();
            }

            return NoContent();
        }

        // POST: api/Farms
        [HttpPost]
        public async Task<ActionResult<Farm>> PostFarm(Farm farm)
        {
            await _farmRepository.AddFarmAsync(farm);
            return CreatedAtAction(nameof(GetFarm), new { id = farm.Id }, farm);
        }

        // DELETE: api/Farms/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteFarm(int id)
        {
            var farmToDelete = await _farmRepository.GetFarmByIdAsync(id);
            if (farmToDelete == null)
            {
                return NotFound();
            }

            await _farmRepository.DeleteFarmAsync(id);
            return NoContent();
        }
    }
}
