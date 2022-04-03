using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prak1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {
            String str = "TextBox: " + TextBox1.Text;
            str += "<br/>ListBox: " + ListBox1.SelectedValue;
            str += "<br/>DropDownList: " + DropDownList1.SelectedValue;

            str += "<br/>RadioButton: " + RadioButtonList1.SelectedValue;

            Label1.Text = str;
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}