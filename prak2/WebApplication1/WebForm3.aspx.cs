using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str=" ";
            str = Label1.Text.ToString()+"Информация о пользователе";
            if (Session["1"]!= null) str += "<br /> Логин:" + Session["1"].ToString();
            if (Session["2"]!= null) str += "<br /> Пароль:" + Session["2"].ToString();
            Label1.Text= str; 

        }
    }
}