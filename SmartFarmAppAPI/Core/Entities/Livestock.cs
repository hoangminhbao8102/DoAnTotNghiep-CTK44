using SmartFarmAppAPI.Core.Contracts;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Livestock : IEntity
    {
        [Key]
        public int Id { get; set; }

        public string LivestockType { get; set; }

        public string LivestockName { get; set; }

        public string ImageUrl { get; set; }

        public string Description { get; set; }

        public string Breed { get; set; }

        public string Care { get; set; }

        public DateOnly DateOfBirth { get; set; }

        [ForeignKey("Farm")]
        public int FarmId { get; set; }

        public virtual Farm Farm { get; set; }

        [ForeignKey("Report")]
        public int ReportId { get; set; }  // Khóa ngoại

        public virtual Report Report { get; set; }  // Navigation property
    }
}
