using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication8.Models
{
    public class Orders
    {
        [Key]
        public int id_order { get; set; }
        public string name { get; set; }
        public int cost { get; set; }
        public int amount { get; set; }
        public int amount_add { get; set; }

        public int? id_user { get; set; }
        public Users user { get; set; }
    }
}