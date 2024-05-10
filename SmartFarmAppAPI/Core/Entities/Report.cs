using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Report : IEntity
    {
        public int Id { get; set; }

        public int RegisteredAccounts { get; set; }

        public int TotalFarms { get; set; }

        public int TotalLivestocks { get; set; }

        public int SoldProducts { get; set; }

        public List<Account> Accounts { get; set; }

        public List<Farm> Farms { get; set; }

        public List<Livestock> Livestocks { get; set; }

        public List<Product> Products { get; set; }
    }
}
