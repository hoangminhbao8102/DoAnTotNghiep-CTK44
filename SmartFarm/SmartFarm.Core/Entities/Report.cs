using SmartFarm.Core.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartFarm.Core.Entities
{
    public class Report : IEntity
    {
        public int Id { get; set; }

        public int AccountId { get; set; }

        public int FarmId { get; set; }

        public int LivestockId { get; set; }

        public int ProductId { get; set; }

        public Account Account { get; set; }

        public Farm Farm { get; set; }

        public Livestock Livestock { get; set; }

        public Product Product { get; set; }

        public List<Account> Accounts { get; set; }

        public List<Farm> Farms { get; set; }

        public List<Livestock> Livestocks { get; set; }

        public List<Product> Products { get; set; }
    }
}
