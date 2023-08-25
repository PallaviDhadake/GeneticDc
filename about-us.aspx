<%@ Page Title="" Language="C#" MasterPageFile="~/MasterParent.master" %>
<%@ MasterType VirtualPath="~/MasterParent.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <span class="space80"></span>
    <span class="space50"></span>
      <!-- Page Header Starts -->
    <div class="pgHeader1">
        <div class="headerOverlay">
            <div class="col_1140">
                <div class="pg_TB_pad">
                    <h1 class="pageH1 clrWhite">About Us</h1>
                    <ul class="bCrumb">
                        <li><a href="<%= Master.rootPath %>">Home</a></li>
                        <li>&raquo;</li>
                        <li>About</li>
                    </ul>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->
     <%-- About start --%>
    <div class="col_1140">
        <span class="space40"></span>
        <%--<div class="section-title">
            <h2>About Us</h2>
        </div>--%>
       <div class="txtCenter">
            <h2 class="semiBold themeClrPrime medium mrg_B_5">Genetic Diagnostic Center</h2>
           <h3 class="semiBold regular themeClrSec mrg_B_25">Quality, Reliability And Timely Delivery.</h3>
           <img src="images/genetic-center.jpg" class=""/>
           <span class="space30"></span>
           </div>
           <p class="clrDarkGrey fontRegular light line-ht-5">Genetic Diagnostic Center is the best-in-class laboratories from across India, We are one of leading and renowned Indian diagnostics companies. The Genetic Diagnostic Center brings capabilities to perform varieties of Pathological investigations and will promote prevention & early diagnosis.<span class="space10"></span>
                Genetic Diagnostic Center plays a vital role in raising the bar of diagnostic accuracy, advanced technological equipment and customer experience.<span class="space10"></span> We are continuously taking efforts to bring latest generation of diagnostics techniques to take accurate and timely diagnosis to the next level.
</p>    
       
    </div>
     <%-- About end --%>
</asp:Content>

