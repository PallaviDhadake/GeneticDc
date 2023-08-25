using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Web.Services;


public partial class _Default : System.Web.UI.Page
{
    iClass c = new iClass();
    public string rootPath, currentYear, nwsstr, testimonialStr;
    protected void Page_Load(object sender, EventArgs e)
    {
        currentYear = DateTime.Now.Year.ToString();
        //rootPath = c.ReturnHttp();
        NewsMarkup();
        TestimonialMarkup();
    }

    private void NewsMarkup()
    {
        try
        {
            using (DataTable dtnws = c.GetDataTable("select top 3 newsId, LEFT(newsTitle, 35) as newsTitle, LEFT(newsDesc, 154) as newsDesc, newsDate, newsPhoto from NewsData where delMark=0 Order By newsDate DESC"))
            {
                if (dtnws.Rows.Count > 0)
                {
                    StringBuilder strMarkup = new StringBuilder();
                    
                    foreach (DataRow row in dtnws.Rows)
                    {
                        DateTime nDate = Convert.ToDateTime(row["newsDate"]);

                        strMarkup.AppendLine("<div class=\"col_1_3\"  data-aos=\"fade-right\" data-aos-duration=\"1000\">");
                        strMarkup.AppendLine("<div class=\"pad_20\">");
                        string rdrUrl = rootPath + "news/" + c.UrlGenerator(row["newsTitle"].ToString().ToLower() + "-" + row["newsId"].ToString());
                        strMarkup.AppendLine("<a href=\"" + rdrUrl + "\" class=\"txtDecNone\">");
                        strMarkup.AppendLine("<div class=\"nwImgHt\">");
                        if (row["newsPhoto"] != DBNull.Value && row["newsPhoto"] != null && row["newsPhoto"].ToString() != "")
                        {
                            strMarkup.AppendLine("<img src=\"" + rootPath + "upload/news/" + row["newsPhoto"].ToString() + "\" class=\"width100\"/>");
                        }
                        else
                        {
                            strMarkup.AppendLine("<img src=\"images/genetic-diases.jpg\" class=\"width100\"/>");
                        }
                        strMarkup.AppendLine("</div>");
                        strMarkup.AppendLine("<span class=\"space20\"></span>");
                        strMarkup.AppendLine("<h5 class=\"nTitle semiMedium mrg_B_3\">" + row["newsTitle"] + "</h5>");
                        strMarkup.AppendLine("<i><span class=\"semiBold small clrDarkGrey\">" + nDate.ToString("dd MMM yyyy") + "</span></i>");
                        strMarkup.AppendLine("</a>");
                        strMarkup.AppendLine("</div>");
                        strMarkup.AppendLine("</div>");

                    }
                    strMarkup.Append("<div class=\"float_clear\"></div>");

                    nwsstr = strMarkup.ToString();
                }
                else
                {
                    nwsstr = "<span class=\"infoClr\">Nothing to display come back later.....</span>";
                }
            }
        }
        catch (Exception ex)
        {
            nwsstr = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }

    private void TestimonialMarkup()
    {
        try
        {
            using (DataTable dtnws = c.GetDataTable("select top 3 TestPerson, LEFT(TestInfo, 120) as TestInfo, TestRating from Testimonials where delMark=0 Order By TestId DESC"))
            {
                if (dtnws.Rows.Count > 0)
                {
                    StringBuilder strMarkup = new StringBuilder();

                    foreach (DataRow row in dtnws.Rows)
                    {
                        strMarkup.AppendLine("<div class=\"col_1_3 txtCenter\" data-aos=\"fade-left\" data-aos-duration=\"1000\">");
                        strMarkup.AppendLine("<div class=\"pad_20\">");
                        strMarkup.AppendLine("<img class=\"\" src=\"images/icons/quotes.png\" />");
                        strMarkup.AppendLine("<span class=\"space3\"></span>");

                        switch (row["TestRating"].ToString())
                        {
                            case "1":
                                // code block
                                strMarkup.AppendLine("<img class=\"\" src=\"images/icons/1-star.png\" /><br />");
                                break;
                            case "2":
                                // code block
                                strMarkup.AppendLine("<img class=\"\" src=\"images/icons/2-star.png\" /><br />");
                                break;
                            case "3":
                                // code block
                                strMarkup.AppendLine("<img class=\"\" src=\"images/icons/3-star.png\" /><br />");
                                break;
                            case "4":
                                // code block
                                strMarkup.AppendLine("<img class=\"\" src=\"images/icons/4-star.png\" /><br />");
                                break;
                            case "5":
                                // code block
                                strMarkup.AppendLine("<img class=\"\" src=\"images/icons/5-star.png\" /><br />");
                                break;
                            default:
                                // code block
                                strMarkup.AppendLine("<img class=\"\" src=\"images/icons/1-star.png\" /><br />");
                                break;
                        }

                       

                        strMarkup.AppendLine("<span class=\"semiBold themeClrPrime semiMedium\">" + row["TestPerson"] + "</span><br />");
                        strMarkup.AppendLine("<span class=\"space10\"></span>");
                        strMarkup.AppendLine("");
                        strMarkup.AppendLine("<p class=\"clrDarkGrey fontRegular small line-ht-5 mrg_B_20\">" + row["TestInfo"] + "</p>");
                        strMarkup.AppendLine("");
                        strMarkup.AppendLine("<div class=\"testline\"></div>");
                        strMarkup.AppendLine("</div>");
                        strMarkup.AppendLine("</div>");
                    }
                    strMarkup.Append("<div class=\"float_clear\"></div>");

                    testimonialStr = strMarkup.ToString();
                }
                else
                {
                    testimonialStr = "<span class=\"infoClr\">Nothing to display come back later.....</span>";
                }
            }
        }
        catch (Exception ex)
        {
            nwsstr = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }
}