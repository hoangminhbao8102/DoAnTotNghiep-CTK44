using Microsoft.AspNetCore.Mvc;
using Services.Repositories.FarmRepository;

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

        public IActionResult Farm() => View();

        public IActionResult Livestock() => View();

        public IActionResult Product() => View();

        public IActionResult Report() => View();

        public IActionResult Rss() => Content("Nội dung sẽ được cập nhật");
    }
}
