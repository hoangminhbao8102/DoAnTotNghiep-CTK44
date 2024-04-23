using Core.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Entities
{
    public class Livestock : IEntity
    {
        public int Id { get; set; }

        public required string LivestockType { get; set; }

        public required string LivestockName { get; set; }

        public string ImageUrl { get; set; }

        public required string Breed { get; set; }

        public DateTime DateOfBirth { get; set; }

        public int FarmId { get; set; }

        public required Farm Farm { get; set; }

        public required List<LivestockCare> LivestockCares { get; set; }
    }
}
