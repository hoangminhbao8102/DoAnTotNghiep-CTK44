using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class LivestockCare : IEntity
    {
        public int Id { get; set; }

        public int LivestockId { get; set; }

        public string Type { get; set; }

        public DateTime Date { get; set; }

        public string Description { get; set; }

        public Livestock Livestock { get; set; }
    }
}
