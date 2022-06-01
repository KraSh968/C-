using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication8.Models;

namespace WebApplication8.Controllers
{
    public class ShopController : Controller
    {
        private AllContext db = new AllContext();
        public ActionResult shop()
        {
            return View(db.Orders);
        }

        [HttpGet]
        public ActionResult regOrAut()
        {
            return View();
        }
        [HttpPost]
        public ActionResult regOrAut(Users user)
        {
            string emGuests = user.email;
            string nameGuest = user.name;
            string phGuest = user.phone;
            foreach (Users users in db.Users)
            {
                if (users.email == emGuests)
                {
                    Session["id"] = users.id_user;
                    if(users.role.Equals("admin"))
                    {
                        return Redirect("/RedirectTo/redirect");
                    }
                    else
                    {
                        if(users.name == nameGuest && users.phone == phGuest)
                        {
                            return RedirectToAction("shop");
                        }
                        else
                        {
                            return View("~/Views/Home/help.cshtml");
                        }
                        
                    }
                }
                else
                {
                    user.role = "user";
                    db.Users.Add(user);
                    Session["id"] = users.id_user;
                }
            }
            db.SaveChanges();
            return RedirectToAction("shop");
        }

        public ActionResult Details(int? id)
        {
            int idUser = (int)Session["id"];
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Orders order = db.Orders.Find(id);
            if (order.amount <= 0)
            {
                return View("~/Views/Home/help.cshtml");
            }
            else
            {
                order.id_user = idUser;
                order.amount -= 1;
                order.amount_add += 1;
                db.SaveChanges();
            }

            return RedirectToAction("shop");
        }

        public ActionResult cabinet()
        {
            int idUser = (int)Session["id"];
            List<Orders> ordersList = new List<Orders>();
            foreach (Orders orders in db.Orders)
            {
                if(orders.id_user == idUser)
                {
                    ordersList.Add(orders);
                }
            }
            ViewBag.Orders = ordersList;
            return View();
        }

        public ActionResult buyAll()
        {
            int idUser = (int)Session["id"];
            Users user = db.Users.Find(idUser);
            foreach (Orders orders in db.Orders) 
            {
                if (orders.id_user == idUser)
                {
                    OrderHistories oh = new OrderHistories();
                    oh.email = user.email;
                    oh.name = orders.name;
                    oh.amount = orders.amount_add;
                    db.OrderHistories.Add(oh);
                    orders.amount_add = 0;
                    orders.id_user = 1;
                }
            }
            db.SaveChanges();

            return RedirectToAction("shop");
        }


        public ActionResult logout()
        {
            int idUser = (int)Session["id"];
            foreach (Orders orders in db.Orders)
            {
                if (orders.id_user == idUser)
                {
                    orders.id_user = 1;
                    orders.amount += orders.amount_add;
                    orders.amount_add = 0;
                }
            }
            db.SaveChanges();
            return RedirectToAction("regOrAut");
        }


    }
}