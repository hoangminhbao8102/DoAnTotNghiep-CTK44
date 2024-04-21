using SmartFarmAppAPI.Core.Contracts;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Account : IEntity
    {
        public int Id { get; set; }

        public required string FullName { get; set; }

        public required string Address { get; set; }

        public required string PhoneNumber { get; set; }

        public required string Email { get; set; }

        public required string Username { get; set; }

        public required string Password { get; set; }

        public required List<Farm> Farms { get; set; }
    }
}
