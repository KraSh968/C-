using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace prak5MVC.Models
{
    public class AllContext : DbContext
    {
        public DbSet<Customers> Customers { get; set; }
        public DbSet<Orders> Orders { get; set; }
    }
}