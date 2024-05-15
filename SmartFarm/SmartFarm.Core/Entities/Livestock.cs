using SmartFarm.Core.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartFarm.Core.Entities
{
    public class Livestock : IEntity
    {
        public int Id { get; set; }

        public string LivestockType { get; set; }

        public string LivestockName { get; set; }

        public string ImageUrl { get; set; }

        public string Description { get; set; }

        public string Breed { get; set; }

        public string Care { get; set; }

        public DateTime DateOfBirth { get; set; }

        public int FarmId { get; set; }

        public Farm Farm { get; set; }

        public List<Report> Reports { get; set; }
    }
}
