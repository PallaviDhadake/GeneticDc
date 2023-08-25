<%@ Page Title="" Language="C#" MasterPageFile="~/MasterParent.master" %>
<%@ MasterType VirtualPath="~/MasterParent.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<style>
        #map-canvas{height:550px;}
    </style>--%>
    <script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvO0AHfg1cuND1KXbw3t5xZr5p4PVrEk4">
    </script>
    <script type="text/javascript">
        function initialize() {

            var myLatlng = new google.maps.LatLng(18.502681969482005, 73.93204607959267);

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
                title: "Cuadra Medical Technology Pvt Ltd.",
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
    <div class="col_1140">
        <span class="space40"></span>
         <h3 class="large clrBlack txtCenter semiBold mrg_B_10">Send Us Enquiry</h3>
        <div class="width60 bgWhite" id="conForm">
                <div class="pad_30">
                    <form autocomplete="off">
                        
                        <%--<span class="shortLine themeBgPrime"></span>--%>
                        <span class="space10"></span>
                        <div class="inputBox w100">
                            <input type="text" id="txtName" class="conTxtBox userName w95" maxlength="50" required />
                            <span>Name :*</span>
                        </div>
                        <div class="inputBox w50 float_left">
                            <div class="app_r_padding">
                                <input type="text" id="txtEmail" class="conTxtBox conEmail w95" maxlength="50" required />
                                <span>Email Address :*</span>
                            </div>
                        </div>
                        <div class="inputBox w50 float_left">
                            <div class="app_r_padding1">
                                <input type="text" id="txtMobile" class="conTxtBox conMob w95" maxlength="10" required />
                                <span>Mobile No :*</span>
                            </div>
                        </div>
                        <div class="float_clear"></div>
                        <!--<div class="inputBox w50 float_left">
                            <div class="app_r_padding">
                                <input type="text" id="ddrServ" list="servname" class="conTxtBox appServ w95" required>
                                <datalist id="servname">
                                    <option value="Anemias">
                                    <option value="Thrombocytopenias">
                                    <option value=" Pancytopenia">
                                    <option value="Aplastic Anemia">
                                    <option value="Hemophilia">
                                    <option value="Thrombotic disorders">
                                    <option value="DVT">
                                    <option value="PE">
                                    <option value="Sickle cell disease">
                                    <option value="Thalassemia">
                                </datalist>
                                <span>Type Of Service :*</span>
                            </div>
                        </div>-->
                        <div class="">
                            <div class="inputBox w100">
                                <input type="text" id="txtName" class="conTxtBox compName w95" maxlength="50" required />
                                <span>Test Details :*</span>
                            </div>
                        </div>
                        <div class="float_clear"></div>
                        <div class="inputBox w100">
                            <textarea id="txtMsg" class="conTxtBox conDesc w95" cols="20" rows="2" required></textarea>
                            <span>Message :*</span>
                        </div>
                        <input id="btnSubmit" type="button" value="Send" class="buttonForm upperCase semiBold letter-sp-2" onclick="submitForm()" />
                    </form>
                </div>
            </div>
        <div class="width40">
            <span class="space80"></span>
            <span class="space15"></span>
            <img class="width100" src="images/contact.svg" />
        </div>
        <div class="float_clear"></div>

        <div class="txtCenter">
            <h3 class="large clrBlack semiBold">Contact Info</h3>
            <%--<span class="shortLine themeBgPrime"></span>--%>
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
                                +91 9284 76 8553<br />+91 8888 86 9241</span>
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
     <%-- contact us end --%>
</asp:Content>

