using FarmManagement.Models.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FarmManagement.Models.Entities
{
    public class Report : IEntity
    {
        public int Id { get; set; }

        public DateTime ReportDate { get; set; }

        public string ReportContent { get; set; }

        public int FarmId { get; set; }

        public Farm Farm { get; set; }
    }
}
