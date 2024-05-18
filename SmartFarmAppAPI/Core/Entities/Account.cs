using SmartFarmAppAPI.Core.Contracts;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace SmartFarmAppAPI.Core.Entities
{
    public class Account : IEntity
    {
        [Key]
        public int Id { get; set; }

        public string FullName { get; set; }

        public string Address { get; set; }

        public string PhoneNumber { get; set; }

        public string Email { get; set; }

        public string Username { get; set; }

        public string Password { get; set; }

        // Thuộc tính điều hướng
        public virtual ICollection<Farm> Farms { get; set; }  // Danh sách các Farm
    }
}
