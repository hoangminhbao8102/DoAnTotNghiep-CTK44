using SmartFarmAppAPI.Core.Contracts;
using System.ComponentModel.DataAnnotations.Schema;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Product : IEntity
    {
        public int Id { get; set; }

        public string ProductName { get; set; }

        public string ImageUrl { get; set; }

        public string Description { get; set; }

        public string Category { get; set; }

        public int Amount { get; set; }

        public int Price { get; set; }

        public bool IsSold { get; set; }

        [ForeignKey("Report")]
        public int ReportId { get; set; }  // Khóa ngoại

        public virtual Report Report { get; set; }  // Navigation property
    }
}
