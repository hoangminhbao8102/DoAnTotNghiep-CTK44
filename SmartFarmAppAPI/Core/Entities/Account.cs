using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Account : IEntity
    {
        public int Id { get; set; }

        public string FullName { get; set; }

        public string Address { get; set; }

        public string PhoneNumber { get; set; }
            
        public string Email { get; set; }

        public string Username { get; set; }

        public string Password { get; set; }

        public int ReportId { get; set; }

        public Report Report { get; set; }

        public List<Farm> Farms { get; set; }
    }
}
