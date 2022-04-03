using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/Content/Js/jquery-3.2.1.min.js",
            });
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        //protected void Password(object source, ServerValidateEventArgs args)
        //{
        //    args.IsValid = false;
        //    if (Password_box.Text.Length >= 8) args.IsValid = true;
        //    else return;
        //}

        //protected void Funct1(object source, ServerValidateEventArgs args)
        //{
        //    args.IsValid = false;
        //    if (Age.Text.ToString() == " " && Age.Text.ToString() == "") return;
        //    int cur=int.Parse(Age.Text);
        //    if (cur<=65&&cur>=18) args.IsValid = true;
        //    else return;
        //}
    }
}