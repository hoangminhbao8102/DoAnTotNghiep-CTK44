using SmartFarmAppAPI.Core.Contracts;

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

        public decimal Price { get; set; }

        public bool IsSold { get; set; }

        public int FarmId { get; set; }

        public required Farm Farm { get; set; }
    }
}
