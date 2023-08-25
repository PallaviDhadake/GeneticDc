using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data;
using System.Text;

public partial class Default3 : System.Web.UI.Page
{
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        GetTestimonials();
       
    }

    //[WebMethod]
    //public static string SaveTestimonials(Testimonials custinfo)
    //{
    //    try
    //    {
    //        iClass c = new iClass();
    //        int MaxId = c.NextId("Testimonials", "TestId");

    //        string testimonialsName = custinfo.TestPerson.ToString().Trim().Replace("'", "");
    //        string testimonialsInfo = custinfo.TestInfo.ToString().Trim().Replace("'", "");

    //        int starRating = 0;
    //        if (HttpContext.Current.Session["testRating"] != null)
    //        {
    //            starRating = Convert.ToInt32(HttpContext.Current.Session["testRating"].ToString());
    //        }

    //        c.ExecuteQuery("Insert Into Testimonials(TestId, TestDate, TestInfo, TestPerson, TestMobileNo, TestEmail, TestRating, ApproveFlag, delMark) " +
    //            " Values(" + MaxId + ", '" + DateTime.Now + "', '" + testimonialsInfo + "', '" + testimonialsName + "', '" + custinfo.TestMobileNo +
    //            "', '" + custinfo.TestEmail + "', " + starRating + ", 0, 0)");

    //        HttpContext.Current.Session["testRating"] = null;


    //        return "1";
    //    }
    //    catch (Exception ex)
    //    {
    //        return ex.Message.ToString();
    //    }
    //}


    //[WebMethod]
    public static string GetRating(string ratingValue)
    {
        HttpContext.Current.Session["testRating"] = ratingValue;
        return HttpContext.Current.Session["testRating"].ToString();
    }

    public string GetTestimonials()
    {
        try
        {
            StringBuilder strMarkup = new StringBuilder();
            using (DataTable dttestimonials = c.GetDataTable("Select TestId, Convert(varchar(20),TestDate,103) as TestDate, TestInfo, TestPerson, TestRating From Testimonials Where delMark=0 AND ApproveFlag=1 Order By TestId DESC"))
            {
                if (dttestimonials.Rows.Count > 0)
                {
                    foreach (DataRow row in dttestimonials.Rows)
                    {
                        if (row["TestRating"] != DBNull.Value && row["TestRating"] != null && row["TestRating"].ToString() != "")
                        {
                            switch (row["TestRating"].ToString())
                            {
                                case "1":
                                    strMarkup.Append("<img src=\"images/icons/1-star.png\"/>");
                                    break;
                                case "2":
                                    strMarkup.Append("<img src=\"images/icons/2-star.png\"/>");
                                    break;
                                case "3":
                                    strMarkup.Append("<img src=\"images/icons/3-star.png\"/>");
                                    break;
                                case "4":
                                    strMarkup.Append("<img src=\"images/icons/4-star.png\"/>");
                                    break;
                                case "5":
                                    strMarkup.Append("<img src=\"images/icons/5-star.png\"/>");
                                    break;

                            }
                            strMarkup.Append("<span class=\"space5\"></span>");
                            strMarkup.Append("<span class=\"semiMedium bold\">" + row["TestPerson"].ToString() + "</span><span class=\"reviewdt themeClrPrime\"> " + row["TestDate"].ToString() + "</span>");
                            strMarkup.Append("<span class=\"space10\"></span>");
                            strMarkup.Append("<p class=\"fontRegular light line-ht-5\">" + row["TestInfo"].ToString() + "</p>");
                            strMarkup.Append("<span class=\"greyLine\"></span>");
                            strMarkup.Append("<span class=\"float_clear\"></span>");
                        }
                    }

                    return strMarkup.ToString();
                }
                else
                {
                    return "<div class=\"themeBgPrime\"><div class=\"pad_10\"><span class=\"clrWhite semiMedium fontRegular\">No Testimonials to display.</span></div></div>";
                }
            }
        }
        catch (Exception ex)
        {
            return ex.Message.ToString();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {


            txtName.Text = txtName.Text.Trim().Replace("'", "");
            txtEmail.Text = txtEmail.Text.Trim().Replace("'", "");
            txtMobile.Text = txtMobile.Text.Trim().Replace("'", "");

            txtDesc.Text = txtDesc.Text.Trim().Replace("'", "");

            if (txtName.Text == "" || txtEmail.Text == "" || txtMobile.Text == "" || txtDesc.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * Marked fields are Mandatory');", true);
                return;
            }
            if (c.EmailAddressCheck(txtEmail.Text) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter Valid Email Address');", true);
                return;
            }
            if (c.ValidateMobile(txtMobile.Text) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter Valid Mobile No.');", true);
                return;
            }

            string selectedGender;
            if (Request.Form["rating"] != null)
            {
                selectedGender = Request.Form["rating"].ToString();


                int MaxId = c.NextId("Testimonials", "TestId");
                c.ExecuteQuery("Insert Into Testimonials(TestId, TestDate, TestInfo, TestPerson, TestMobileNo, TestEmail, TestRating, ApproveFlag, delMark) " +
                  " Values(" + MaxId + ", '" + DateTime.Now + "', '" + txtDesc.Text + "', '" + txtName.Text + "', '" + txtMobile.Text +
                 "', '" + txtEmail.Text + "', " + selectedGender + ", 0, 0)");
            }
             ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Testimonials  Added');", true);


        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSave_Click", ex.Message.ToString());
            return;
        }
    }
    
}