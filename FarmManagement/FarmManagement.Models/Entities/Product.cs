using FarmManagement.Models.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FarmManagement.Models.Entities
{
    public class Product : IEntity
    {
        public int Id { get; set; }

        public string ProductName { get; set; }

        public string Category { get; set; }

        public decimal Price { get; set; }

        public int FarmId { get; set; }

        public Farm Farm { get; set; }
    }
}
