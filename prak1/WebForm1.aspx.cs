using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prak1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {
            Dictionary<string, string> users = new Dictionary<string, string>();
            users.Add("name1", "qwe");
            users.Add("name2", "123");
            users.Add("name3", "qwe123");


            if (users.ContainsKey(Login.Text.ToLower()))
            {
                if (users[Login.Text.ToLower()] == Password.Text)
                {
                    Response.Redirect("WebForm2.aspx");
                }
                else Label2.Text = "нeверный логин";
            }
   
            else Label2.Text = "нeверный логин или пароль";
        }
    }
}