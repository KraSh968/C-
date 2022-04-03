using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Login.Text == null);
            else Session.Add("1", Login.Text);
            if (Password_box.Text == null) ;
            else Session.Add("2", Password_box.Text);
            Response.Redirect("WebForm3.aspx");
        }
    }
}