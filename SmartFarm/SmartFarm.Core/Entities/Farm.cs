using SmartFarm.Core.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartFarm.Core.Entities
{
    public class Farm : IEntity
    {
        public int Id { get; set; }

        public string FarmName { get; set; }

        public string Location { get; set; }

        public int Area { get; set; }

        public int Number { get; set; }

        public int AccountId { get; set; }

        public Account Account { get; set; }

        public IList<Livestock> Livestocks { get; set; }

        public List<Report> Reports { get; set; }
    }
}
