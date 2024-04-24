using Core.Entities;
using Microsoft.AspNetCore.Mvc;
using Services.Repositories.FarmRepository;
using System.Threading;

namespace WebApp.Controllers
{
    public class FarmController : Controller
    {
        private readonly IFarmRepository _farmRepository;

        public FarmController(IFarmRepository farmRepository)
        {
            _farmRepository = farmRepository;
        }

        public IActionResult Index() 
        {
            ViewBag.CurrentTime = DateTime.Now.ToString("HH:mm:ss");

            return View();
        }
        public async Task<IActionResult> FarmAsync() 
        {
            List<Farm> farms = await _farmRepository.GetAllFarmsAsync();

            return View(farms);
        }

        public IActionResult Livestock() => View();

        public IActionResult Product() => View();

        public IActionResult Report() => View();

        public IActionResult Rss() => Content("Nội dung sẽ được cập nhật");
    }
}
