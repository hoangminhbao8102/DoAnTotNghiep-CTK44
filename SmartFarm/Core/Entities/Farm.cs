using Core.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Entities
{
    public class Farm : IEntity
    {
        public int Id { get; set; }

        public required string FarmName { get; set; }

        public required string Location { get; set; }

        public int Area { get; set; }

        public int OwnerId { get; set; }

        public required Account Owner { get; set; }

        public required List<Livestock> Livestocks { get; set; }

        public required List<Product> Products { get; set; }

        public required List<Report> Reports { get; set; }
    }
}
