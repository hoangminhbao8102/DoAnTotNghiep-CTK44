using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Product : IEntity
    {
        public int Id { get; set; }

        public required string ProductName { get; set; }

        public required string Category { get; set; }

        public decimal Price { get; set; }

        public int FarmId { get; set; }

        public required Farm Farm { get; set; }
    }
}
