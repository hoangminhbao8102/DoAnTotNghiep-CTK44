using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Farm : IEntity
    {
        public int Id { get; set; }

        public string FarmName { get; set; }

        public string Location { get; set; }

        public int Area { get; set; }

        public int Number { get; set; }

        public int AccountId { get; set; }

        public int ReportId { get; set; }

        public Account Account { get; set; }

        public List<Livestock> Livestocks { get; set; }

        public Report Report { get; set; }
    }
}
