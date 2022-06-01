using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication8.Models
{
    public class Users
    {
        [Key]
        public int id_user { get; set; }

        public string name { get; set; }

        public string email { get; set; }
        public string phone { get; set; }
        public string role { get; set; }
        public List<Orders> orders { get; set; }

        public Users()
        {
            orders = new List<Orders>();
        }

    }
}