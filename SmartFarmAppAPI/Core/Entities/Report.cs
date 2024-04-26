using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Report : IEntity
    {
        public int Id { get; set; }

        public DateTime Date { get; set; }

        public string Content { get; set; }

        public int RegisteredAccounts { get; set; }

        public int TotalFarms { get; set; }

        public int TotalLivestocks { get; set; }

        public int SoldProducts { get; set; }

        public int FarmId { get; set; }

        public Farm Farm { get; set; }
    }
}
