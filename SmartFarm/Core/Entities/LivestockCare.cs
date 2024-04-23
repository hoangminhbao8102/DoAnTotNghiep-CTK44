using Core.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Entities
{
    public class LivestockCare : IEntity
    {
        public int Id { get; set; }

        public int LivestockId { get; set; }

        public DateTime CareDate { get; set; }

        public required string CareDescription { get; set; }

        public required Livestock Livestock { get; set; }
    }
}
