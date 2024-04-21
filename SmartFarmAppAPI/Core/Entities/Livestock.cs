using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Livestock : IEntity
    {
        public int Id { get; set; }

        public required string LivestockType { get; set; }  // Loại vật nuôi (ví dụ: gia súc, gia cầm)

        public required string LivestockAnimalType { get; set; } // Loại động vật (ví dụ: bò, gà, lợn)

        public required string LivestockName { get; set; }

        public required string Breed { get; set; }

        public DateTime DateOfBirth { get; set; }

        public int FarmId { get; set; }

        public required Farm Farm { get; set; }

        public required List<LivestockCare> LivestockCares { get; set; }
    }
}
