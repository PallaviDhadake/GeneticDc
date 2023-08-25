using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Web.Security;
public partial class contact_us : System.Web.UI.Page
{
    iClass c = new iClass();
    public string errMsg;
    protected void Page_Load(object sender, EventArgs e)
    {
        btnSubmit.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSubmit, null) + ";");

        if (!IsPostBack)
        {
            if (Request.QueryString["test"] != null)
            {
                string testName = Request.QueryString["test"].ToString().Replace("-", " ");

                txtTest.Text = FirstCharToUpper(testName);
            }
        }
    }

    protected void UpdatePanel1_Load(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "grecaptcha.render('recaptcha', {'sitekey': '6LcNBIUUAAAAADbX-_n6UhdJhtAxQDgiypcyZqSN'});", true);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            txtName.Text = txtName.Text.Trim().Replace("'", "");
            txtEmail.Text = txtEmail.Text.Trim().Replace("'", "");
            txtMobile.Text = txtMobile.Text.Trim().Replace("'", "");
            txtDesc.Text = txtDesc.Text.Trim().Replace("'", "");

            string EncodedResponse = Request.Form["g-Recaptcha-Response"];
            bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "True" ? true : false);

            if (txtName.Text == "" || txtMobile.Text == "" || txtDesc.Text == "" || txtEmail.Text == "" || txtTest.Text == "") 
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * Marked fields are Mandatory');", true);
                return;
            }

            if (!c.ValidateMobile(txtMobile.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter Valid Mobile No.');", true);
                return;
            }

            if (txtEmail.Text != "")
            {
                if (!c.EmailAddressCheck(txtEmail.Text))
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter Valid Email Id');", true);
                    return;
                }
            }

            if (!IsCaptchaValid)
            {
                //InValid Request
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Captcha Verification Failed');", true);
                return;
            }

            StringBuilder strMail = new StringBuilder();

            strMail.Append("Dear Sir, <br/>");
            strMail.Append("You have a new enquiry at Generic DC, <br/> details are given below <br/>");
            strMail.Append("<table>");
            strMail.Append("<tr><td style=\"width:30%\">Name</td><td style=\"width:70%\"> : <b>" + txtName.Text + "</b></td></tr>");
            if (txtEmail.Text != "")
                strMail.Append("<tr><td>Email Id</td><td> : <b>" + txtEmail.Text + "</b></td></tr>");
            strMail.Append("<tr><td>Mobile No.</td><td> : <b>" + txtMobile.Text + "</b></td></tr>");
            strMail.Append("<tr><td>Test Details</td><td> : <b>" + txtTest.Text + "</b></td></tr>");
            strMail.Append("<tr><td>Details</td><td> : <b>" + txtDesc.Text + "</b></td></tr>");
            strMail.Append("</table>");
            string msgData = strMail.ToString();

            MailMessage mail = new MailMessage();
            //string userName = "prajaktap204@gmail.com";
            string userName = "geneticdiagnostic21@gmail.com";
            mail.To.Add(userName);

            //mail.CC.Add(new MailAddress("prajaktap204@gmail.com"));
            mail.Subject = "New Enquiry";
            mail.Body = msgData;
            mail.IsBodyHtml = true;

            mail.Priority = System.Net.Mail.MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.EnableSsl = true;
            //client.UseDefaultCredentials = false;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            ServicePointManager.ServerCertificateValidationCallback = delegate(object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
            client.Send(mail);

            txtName.Text = txtEmail.Text = txtMobile.Text = txtDesc.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Thank you for your enquiry..!! We will get back to you soon..!!');", true);
        }
        catch (Exception ex)
        {
            errMsg = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }

    public static string FirstCharToUpper(string value)
    {
        char[] array = value.ToCharArray();
        // Handle the first letter in the string.  
        if (array.Length >= 1)
        {
            if (char.IsLower(array[0]))
            {
                array[0] = char.ToUpper(array[0]);
            }
        }
        // Scan through the letters, checking for spaces.  
        // ... Uppercase the lowercase letters following spaces.  
        for (int i = 1; i < array.Length; i++)
        {
            if (array[i - 1] == ' ')
            {
                if (char.IsLower(array[i]))
                {
                    array[i] = char.ToUpper(array[i]);
                }
            }
        }
        return new string(array);
    }  
}