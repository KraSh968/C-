using prak5MVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

namespace prak5MVC.Controllers
{
    public class MathController : Controller
    {
        public ActionResult AllMethods()
        {
            return View(new Calculate());
        }

        [HttpPost]
        public ActionResult AllMethods(Calculate c, string calc)
        {
            if(calc == "sum")
            {
                if (c.number1 == 0 && c.number2 == 0)
                {
                    c.error = "введите одно число";
                }
                else c.result = c.number1 + c.number2;
            }

            else if (calc == "min")
            {
                if (c.number1 == 0 && c.number2 ==0)
                {
                    c.error = "введите одно число";
                    
                }
                else c.result = c.number1 - c.number2;
            }

            else if (calc == "mult")
            {
                if (c.number1 == 0 && c.number2 == 0)
                {
                    c.error = "введите одно число";
                    
                }
                else c.result = c.number1 * c.number2;
            }

            else
            {
                if(c.number2 == 0)
                {
                    c.error = "число не может ровняться нулю";
                }
                else
                {
                    if (c.number1 == 0)
                    {
                        c.error = "введите число";
                        
                    }
                    else c.result = c.number1 / c.number2;
                }
            }

            return View(c);
        }
    }
}