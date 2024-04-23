using Core.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Entities
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
