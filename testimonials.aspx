<%@ Page Title="Testimonials | Genetic Diagnostic Center" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="testimonials.aspx.cs" Inherits="Default3" %>

<%@ MasterType VirtualPath="~/MasterParent.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <span class="space80"></span>
    <span class="space50"></span>
    <!-- Page Header Starts -->
    <div class="pgHeader1">
        <div class="headerOverlay">
            <div class="col_1140">
                <div class="pg_TB_pad">
                    <h1 class="pageH1 clrWhite">Testimonials</h1>
                    <ul class="bCrumb">
                        <li><a href="<%= Master.rootPath %>">Home</a></li>
                        <li>&raquo;</li>
                        <li>Testimonials</li>
                    </ul>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->

    <%-- Testimonials start --%>
    <div class="col_1140">
        <span class="space40"></span>
        <div class="section-title">
            <h2>Client Reviews</h2>
        </div>
        <a href="#comment" class="buttonForm txtDecNone semiBold upperCase small letter-sp-2">Write Your Comments</a>
        <span class="space30"></span>
        <%=GetTestimonials() %>
        <%--<img src="images/icons/4-star.png" /><br />
        <span class="semiBold semiMedium">Pallavi Ramesh Dhadake.</span><i><span class="themeClrPrime semiBold">12/07/2022</span></i>
        <span class="space10"></span>
        <p class="fontRegular light line-ht-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</p>
        <span class="greyLine"></span>
        <img src="images/icons/4-star.png" /><br />
        <span class="semiBold semiMedium">Pallavi Ramesh Dhadake.</span><i><span class="themeClrPrime semiBold ">12/07/2022</span></i>
        <span class="space10"></span>
        <p class="fontRegular light line-ht-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</p>
        <span class="greyLine"></span>
        <img src="images/icons/4-star.png" /><br />
        <span class="semiBold semiMedium">Pallavi Ramesh Dhadake.</span><i><span class="themeClrPrime semiBold">12/07/2022</span></i>
        <span class="space10"></span>
        <p class="fontRegular light line-ht-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</p>
        <span class="greyLine"></span>
        <img src="images/icons/4-star.png" /><br />
       
        <span class="semiBold semiMedium">Pallavi Ramesh Dhadake.</span><i><span class="themeClrPrime semiBold">12/07/2022</span></i>
        <span class="space10"></span>
        <p class="fontRegular light line-ht-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</p>--%>
        <div id="comment"></div>
        <span class="space40"></span>
        <%--<div class="section-title">
            <h2>Rate Us</h2>
        </div>
            <p class="small line-ht-5 txtCenter">Your email address and mobile will not be shared in this website.</p>
            <span class="space10"></span>
            <div id="rating-review">
                    <div class="inputBox w100">
                        <input type="text" id="txtTestName" class="conTxtBox userName w95" maxlength="50" required />
                        <span>Name :*</span>
                    </div>
                    <div class="inputBox w100">
                        <input type="text" id="txtTestEmail" class="conTxtBox conEmail w95" maxlength="50" required />
                        <span>Email :*</span>
                    </div>
                    <div class="inputBox w100">
                        <input type="text" id="txtTestMobNo" class="conTxtBox conMob w95" maxlength="10" required />
                        <span>Mobile No :*</span>
                    </div>

                   <!--star rating here-->
					<div class="stars" id="star">
						<input type="radio" name="rating" class="star-1" id="star-1" value="1" onclick="GetRating(this);" />
						<label class="star-1" for="star-1">1</label>
						<input type="radio" name="rating" class="star-2" id="star-2" value="2" onclick="GetRating(this);"/>
						<label class="star-2" for="star-2">2</label>
						<input type="radio" name="rating" class="star-3" id="star-3" value="3" onclick="GetRating(this);"/>
						<label class="star-3" for="star-3">3</label>
						<input type="radio" name="rating" class="star-4" id="star-4" value="4" onclick="GetRating(this);"/>
						<label class="star-4" for="star-4">4</label>
						<input type="radio" name="rating" class="star-5" id="star-5" value="5" onclick="GetRating(this);"/>
						<label class="star-5" for="star-5">5</label>
						<span></span>
					</div>

                    <div class="inputBox w100">
                        <textarea id="txtTestReview" class="conTxtBox conDesc w95" cols="20" rows="2" required></textarea>
                        <span>Review :*</span>
                    </div>

                    <div class="inputBox w100">
                        <input id="btnSubmitTestimonial" type="button" value="Submit" class="buttonForm upperCase semiBold letter-sp-2" onclick="ValidateForm();" />
                    </div>
                </div>--%>


            <span class="space35"></span>

        <%--  <asp:UpdatePanel ID="UpdatePanel1" runat="server" OnLoad="UpdatePanel1_Load">
            <ContentTemplate>--%>
        <div class="section-title">
            <h2>Rate Us</h2>
        </div>
        <p class="small line-ht-5 txtCenter">Your email address and mobile will not be shared in this website.</p>
        <div id="rating-review">
            <div class="w100 mrg_B_15">
                <div class="app_r_padding">
                    <span class="labelCap">Name :*</span>
                    <asp:TextBox ID="txtName" CssClass="conTxtBox userName w95" MaxLength="50" placeholder="Full Name (Surname first)" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="w100 float_left mrg_B_15">
                <div class="app_r_padding">
                    <span class="labelCap">Email Id :*</span>
                    <asp:TextBox ID="txtEmail" CssClass="conTxtBox conEmail w95" MaxLength="30" placeholder="Your Email Address" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="w100 float_left mrg_B_15">
                <div class="app_r_padding">
                    <span class="labelCap">Mobile No :*</span>
                    <asp:TextBox ID="txtMobile" CssClass="conTxtBox conMob w95" MaxLength="10" placeholder="Without Country Code" runat="server"></asp:TextBox>
                </div>
            </div>

           <%-- <div class="w100 mrg_B_15">
                <div class="app_r_padding">
                    <span class="labelCap">Company Name :*</span>
                    <asp:TextBox ID="txtDesc" CssClass="conTxtBox userName w95" Height="0" runat="server"></asp:TextBox>
                </div>
            </div>--%>
            <div class="float_clear"></div>
            <!--star rating here-->
            <div class="stars w100 mrg_B_15" id="star">

                <%--<asp:RadioButton ID="star-1" name="rating" class="star-1" value="1"  runat="server" />
                 <label class="star-1" for="star-1">1</label>
                <asp:RadioButton ID="star-2" name="rating" class="star-2" value="2"  runat="server" />
                 <label class="star-2" for="star-2">2</label>
                <asp:RadioButton ID="star-3" name="rating" class="star-3" value="3"  runat="server" />
                 <label class="star-3" for="star-3">3</label>
                <asp:RadioButton ID="star-4" name="rating" class="star-4" value="4"  runat="server" />
                 <label class="star-4" for="star-4">4</label>
                <asp:RadioButton ID="star-5" name="rating" class="star-5" value="5"  runat="server" />
                 <label class="star-5" for="star-5">5</label>--%>

                <input type="radio" name="rating" class="star-1" id="star-1" value="1" onclick="GetRating(this);"/>
                <label class="star-1" for="star-1">1</label>
                <input type="radio" name="rating" class="star-2" id="star-2" value="2" onclick="GetRating(this);"/>
                <label class="star-2" for="star-2">2</label>
                <input type="radio" name="rating" class="star-3" id="star-3" value="3" onclick="GetRating(this);"/>
                <label class="star-3" for="star-3">3</label>
                <input type="radio" name="rating" class="star-4" id="star-4" value="4" onclick="GetRating(this);"/>
                <label class="star-4" for="star-4">4</label>
                <input type="radio" name="rating" class="star-5" id="star-5" value="5" onclick="GetRating(this);"/>
                <label class="star-5" for="star-5">5</label>
                <span></span>
            </div>

             <div class="w100 mrg_B_15">
                <span class="labelCap">Description :*</span>
                <asp:TextBox ID="txtDesc" CssClass="conTxtBox conDesc w95" TextMode="MultiLine" Height="150" runat="server"></asp:TextBox>
            </div>

            <%-- <div class="w100 mrg_B_15">
                    <span class="labelCap">Enquiry For :*</span>
                    <asp:TextBox ID="txtEnquiry" CssClass="conTextBox w95" MaxLength="200" placeholder="Enquiry For " runat="server"></asp:TextBox>
                </div>--%>
            <span class="space80"></span>
           
            <span class="space15"></span>

            <div class="txtCenter">
                <asp:Button ID="btnSubmit" runat="server" CssClass="enquiryAnch small upperCase semiBold letter-sp-2" Text="SUBMIT" OnClick="btnSubmit_Click" /></div>
            <%-- </ContentTemplate>
        </asp:UpdatePanel>--%>
        </div>
    </div>
     <%-- Testimonials end --%>
</asp:Content>

