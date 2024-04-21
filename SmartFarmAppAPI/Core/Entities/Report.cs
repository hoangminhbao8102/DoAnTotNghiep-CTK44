using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Report : IEntity
    {
        public int Id { get; set; }

        public DateTime ReportDate { get; set; }

        public required string ReportContent { get; set; }

        public int FarmId { get; set; }

        public required Farm Farm { get; set; }
    }
}
