using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace prak5MVC.Models
{
    public class Orders
    {

        [Key]
        public int Id_orders { get; set; }
        public string Name { get; set; }
        public string Cost { get; set; }
    }
}