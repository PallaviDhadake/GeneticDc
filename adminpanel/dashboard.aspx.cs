using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class adminpanel_Default2 : System.Web.UI.Page
{
    iClass c = new iClass();
    public string[] arrCount = new string[5];
    protected void Page_Load(object sender, EventArgs e)
    {
        GetCounts();
    }

    private void GetCounts()
    {
        try
        {
            arrCount[0] = c.returnAggregate("Select Count(newsId) From NewsData Where delMark=0").ToString();
            arrCount[1] = c.returnAggregate("Select Count(TestId) From Testimonials Where delMark=0").ToString();
            arrCount[2] = c.returnAggregate("Select Count(testId) From Testimonials Where delMark=0").ToString();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "GetCounts", ex.Message.ToString());
            return;
        }
    }
}