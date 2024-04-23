using Core.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Entities
{
    public class Product : IEntity
    {
        public int Id { get; set; }

        public required string ProductName { get; set; }

        public string Description { get; set; }

        public string ImageUrl { get; set; }

        public required string Category { get; set; }

        public int Amount { get; set; }

        public decimal Price { get; set; }

        public int FarmId { get; set; }

        public required Farm Farm { get; set; }
    }
}
