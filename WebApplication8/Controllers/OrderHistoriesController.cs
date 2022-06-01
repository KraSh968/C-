using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication8.Models;

namespace WebApplication8.Controllers
{
    public class OrderHistoriesController : Controller
    {
        private AllContext db = new AllContext();

        // GET: OrderHistories
        public ActionResult Index()
        {
            return View(db.OrderHistories.ToList());
        }

        // GET: OrderHistories/Details/5
       

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
