﻿namespace SmartFarmAppAPI.Core.DTO
{
    public class AccountItem
    {
        public int Id { get; set; }

        public string FullName { get; set; }

        public string Address { get; set; }

        public string PhoneNumber { get; set; }

        public string Email { get; set; }

        public string Username { get; set; }

        public List<FarmItem> Farms { get; set; }
    }
}
