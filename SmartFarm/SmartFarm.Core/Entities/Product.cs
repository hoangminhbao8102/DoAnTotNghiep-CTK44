using SmartFarm.Core.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartFarm.Core.Entities
{
    public class Product : IEntity
    {
        public int Id { get; set; }

        public string ProductName { get; set; }

        public string ImageUrl { get; set; }

        public string Description { get; set; }

        public string Category { get; set; }

        public int Amount { get; set; }

        public int Price { get; set; }

        public List<Report> Reports { get; set; }
    }
}
