using SmartFarmAppAPI.Core.Contracts;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Farm : IEntity
    {
        [Key]
        public int Id { get; set; }

        public string FarmName { get; set; }

        public DateOnly FarmCreated { get; set; }

        public string Location { get; set; }

        public double Area { get; set; }

        public int Number { get; set; }


        [ForeignKey("Account")]
        public int AccountId { get; set; }

        public virtual Account Account { get; set; }

        [ForeignKey("Livestock")]
        public int LivestockId { get; set; }

        public virtual Livestock Livestock { get; set; }

        [ForeignKey("Report")]
        public int ReportId { get; set; }  // Khóa ngoại

        public virtual Report Report { get; set; }  // Navigation property
    }
}
