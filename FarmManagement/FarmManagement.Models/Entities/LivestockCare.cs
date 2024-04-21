using FarmManagement.Models.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FarmManagement.Models.Entities
{
    public class LivestockCare : IEntity
    {
        public int Id { get; set; }

        public int LivestockId { get; set; }

        public DateTime CareDate { get; set; }

        public string CareDescription { get; set; }

        public Livestock Livestock { get; set; }
    }
}
