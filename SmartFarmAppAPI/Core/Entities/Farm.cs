using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Farm : IEntity
    {
        public int Id { get; set; }

        public string FarmName { get; set; }

        public string Location { get; set; }

        public int Area { get; set; }

        public int OwnerId { get; set; }

        public Account Owner { get; set; }

        public List<Livestock> Livestocks { get; set; }

        public List<Product> Products { get; set; }

        public List<Report> Reports { get; set; }
    }
}
