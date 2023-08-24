using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment10
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LblInfo.Visible = false;
                DdlCategory.Items.Add("Smart Watch");
                DdlCategory.Items.Add("Mechanical watch");
                DdlCategory.Items.Add("Rolex");
                DdlCategory.Items.Add("Quartz clock");
                DdlCategory.Items.Add("Automatic Watch");
                DdlCategory.Items.Add("Analog watch");
                DdlCategory.Items.Add("Chronograph");
                DdlCategory.Items.Add("other");

            }
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            LblInfo.Visible = true;
            LblInfo.Text = "Product Registration Success!!!";
            LblInfo.Text += "<br/>Product Name : " + TxtName.Text;
            LblInfo.Text += "<br/>Category : " + DdlCategory.Text;
            LblInfo.Text += "<br/>Price: " + TxtPrice.Text;
            LblInfo.Text += "<br/>Description: " + TxtDesc.Text;
            LblInfo.Text += "<br/>Release Date: " + CalDate.SelectedDate;
        }

    }
}