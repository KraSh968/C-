using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication8.Models
{
    public class OrderHistories
    {
        [Key]
        public int id_orderhistory { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public int amount { get; set; }

    }
}