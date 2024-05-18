using SmartFarmAppAPI.Core.Contracts;
using System.ComponentModel.DataAnnotations.Schema;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Report : IEntity
    {
        public int Id { get; set; }

        public string ReportName { get; set; }

        public DateTime CreatedDate { get; set; }

        // Thuộc tính điều hướng
        public virtual ICollection<Farm> Farms { get; set; }

        public virtual ICollection<Livestock> Livestocks { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
