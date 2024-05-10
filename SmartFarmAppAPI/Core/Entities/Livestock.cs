using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Livestock : IEntity
    {
        public int Id { get; set; }

        public string Type { get; set; }

        public string Name { get; set; }

        public string ImageUrl { get; set; }

        public string Description { get; set; }

        public string Breed { get; set; }

        public string Care { get; set; }

        public DateTime DateOfBirth { get; set; }

        public int FarmId { get; set; }

        public int ReportId { get; set; }

        public Farm Farm { get; set; }

        public Report Report { get; set; }
    }
}
