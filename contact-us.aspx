<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact_us" %>

<%@ MasterType VirtualPath="~/MasterParent.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        var onloadCallback = function () {
            grecaptcha.render('recaptcha', {
                'sitekey': '6LcNBIUUAAAAADbX-_n6UhdJhtAxQDgiypcyZqSN'
            });
        };
    </script>
    <script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvO0AHfg1cuND1KXbw3t5xZr5p4PVrEk4">
    </script>
    <script type="text/javascript">
        function initialize() {

            var myLatlng = new google.maps.LatLng(18.5216442887947, 73.86629543510806);

            var mapOptions = {
                center: myLatlng,
                zoom: 21, scrollwheel: false, draggable: true,
            };

            var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
            var autoqed = {
                path: 'M95.35,50.645c0,13.98-11.389,25.322-25.438,25.322c-14.051,0-25.438-11.342-25.438-25.322   c0-13.984,11.389-25.322,25.438-25.322C83.964,25.322,95.35,36.66,95.35,50.645 M121.743,50.645C121.743,22.674,98.966,0,70.866,0   C42.768,0,19.989,22.674,19.989,50.645c0,12.298,4.408,23.574,11.733,32.345l39.188,56.283l39.761-57.104   c1.428-1.779,2.736-3.654,3.916-5.625l0.402-0.574h-0.066C119.253,68.516,121.743,59.874,121.743,50.645',
                fillColor: '#1d3b70',
                fillOpacity: 1,
                scale: 0.3
            };
            var marker = new google.maps.Marker({
                position: myLatlng,
                icon: autoqed,
                map: map,
                title: "Genetic Diagnostic Center.",
                animation: google.maps.Animation.DROP
            });
            //alert("test");
            marker.addListener('click', toggleBounce);
            function toggleBounce() {
                if (marker.getAnimation() !== null) {
                    marker.setAnimation(null);
                } else {
                    marker.setAnimation(google.maps.Animation.BOUNCE);
                }
            }
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <span class="space80"></span>
    <span class="space50"></span>
    <!-- Page Header Starts -->
    <div class="pgHeader1">
        <div class="headerOverlay">
            <div class="col_1140">
                <div class="pg_TB_pad">
                    <h1 class="pageH1 clrWhite">Contact Us</h1>
                    <ul class="bCrumb">
                        <li><a href="<%= Master.rootPath %>">Home</a></li>
                        <li>&raquo;</li>
                        <li>Contact Us</li>
                    </ul>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->
    <%-- contact us start --%>
    <span class="space40"></span>
    <div class="section-title">
        <h2>Get in touch with Us</h2>
    </div>
    <div id="map-canvas"></div>
    <div class="col_1140" id="enq">
        <span class="space40"></span>
        <h3 class="large clrBlack txtCenter semiBold mrg_B_10">Send Us Enquiry</h3>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" OnLoad="UpdatePanel1_Load">
            <ContentTemplate>
                <div class="width60 bgWhite" id="conForm">
                    <div class="pad_30">
                        <div class="w100 mrg_B_15">
                            <div class="app_r_padding">
                                <span class="labelCap">Name :*</span>
                                <asp:TextBox ID="txtName" CssClass="conTxtBox userName w95" MaxLength="80" placeholder="Full Name (Surname first)" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="w50 float_left mrg_B_15">
                            <div class="app_r_padding">
                                <span class="labelCap">Email Id :*</span>
                                <asp:TextBox ID="txtEmail" CssClass="conTxtBox conEmail w95" MaxLength="50" placeholder="Your Email Address" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="w50 float_left mrg_B_15">
                            <div class="app_r_padding">
                                <span class="labelCap">Mobile No :*</span>
                                <asp:TextBox ID="txtMobile" CssClass="conTxtBox conMob w95" MaxLength="10" placeholder="Without Country Code" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="float_clear"></div>
                        <div class="w100 mrg_B_15">
                            <div class="app_r_padding">
                                <span class="labelCap">Test Details :*</span>
                                <asp:TextBox ID="txtTest" CssClass="conTxtBox compName w95" MaxLength="300" placeholder="" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="w100 mrg_B_15">
                            <span class="labelCap">Deatils :*</span>
                            <asp:TextBox ID="txtDesc" CssClass="conTxtBox conDesc w95" TextMode="MultiLine" Height="150" runat="server"></asp:TextBox>
                        </div>
                        <span class="space10"></span>
                        <div class="w100">
                            <div id="recaptcha" style="transform: scale(0.77); -webkit-transform: scale(0.77); transform-origin: 0 0; -webkit-transform-origin: 0 0;"></div>
                            <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
                        </div>
                        <span class="space15"></span>
                        <asp:Button ID="btnSubmit" runat="server" CssClass="enquiryAnch small upperCase semiBold letter-sp-2" Text="Send Enquiry" OnClick="btnSubmit_Click" />
                        <%= errMsg %>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div class="width40">
        <span class="space80"></span>
        <span class="space15"></span>
        <img class="width100" src="images/contact.svg" />
    </div>
    <div class="float_clear"></div>

    <div class="col_1140">
        <div class="txtCenter">
            <h3 class="large clrBlack semiBold">Contact Info</h3>
        </div>
        <span class="space10"></span>
        <span class="space40"></span>
        <div class="col_1_3">
            <div class="pad_15">
                <div class="conbx">
                    <div class="pad_15">
                        <h2 class="semiMedium semiBold clrBlack mrg_B_10">Address:</h2>
                        <span class="home fontRegular small conIcon">Shop No. 1, 350/2,Oza Building, Opp. Sundar Nagari, Somwar Peth, Pune - 411 011.<br />
                        </span>
                    </div>
                </div>
            </div>

        </div>

        <div class="col_1_3">
            <div class="pad_15">
                <div class="conbx">
                    <div class="pad_15">
                        <h2 class="semiMedium semiBold clrBlack mrg_B_10">Contact No:</h2>
                        <span class="conCall conIcon fontRegular">+91 9356 38 6806<br />
                            +91 9284 76 8553<br />
                            +91 8888 86 9241</span>
                    </div>
                </div>
            </div>

        </div>

        <div class="col_1_3">
            <div class="pad_15">
                <div class="conbx">
                    <div class="pad_15">
                        <h2 class="semiMedium semiBold clrBlack mrg_B_10">Email:</h2>
                        <span class="conIcon fontRegular small conMail breakWord">geneticdiagnostic21&#64;gmail&#46;com</span>
                    </div>
                </div>
            </div>

        </div>
        <div class="float_clear"></div>
    </div>
</asp:Content>

