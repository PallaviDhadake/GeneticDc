<%@ Page Title="" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="Default3" %>
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
                    <h1 class="pageH1 clrWhite">Genetic Diagnostic News</h1>
                    <%--<ul class="bCrumb">
                        <li><a href="<%= Master.rootPath %>">Home</a></li>
                        <li>&raquo;</li>
                        <li>Latest News</li>
                    </ul>--%>
                    <%= bCrumbStr %>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <span class="space40"></span>
    <!-- Page Header Ends -->
    <%-- News Start --%>
        <div class="col_1140">

        <div class="section-title">
            <h2>Latest News</h2>
        </div>
             <%=nwsstr%>
            <%--<div class="col_340">
                <div class="pad_15">
                    <div class="nwImgHt">
                        <img src="images/genetic-diases.jpg" class="" />
                    </div>
                </div>
            </div>
            <div class="col_800">
                <div class="pad_15">
                    <h5 class="newsTitle themeClrPrime semiMedium mrg_B_3">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h5>
                    <i><span class="semiBold small clrDarkGrey">12 july 2022</span></i>
                    <span class="space15"></span>
                    <p class="small fontRegular clrBlack line-ht-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                </div>
            </div>
            <div class="float_clear"></div>
            <span class="greyLine"></span>


             <div class="col_340">
                <div class="pad_15">
                    <div class="nwImgHt">
                        <img src="images/genetic-diases.jpg" class="" />
                    </div>
                </div>
            </div>
            <div class="col_800">
                <div class="pad_15">
                    <h5 class="newsTitle semiMedium mrg_B_3">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h5>
                    <i><span class="semiBold small clrDarkGrey">12 july 2022</span></i>
                    <span class="space15"></span>
                    <p class="light fontRegular  line-ht-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                </div>
            </div>
            <div class="float_clear"></div>
            <span class="greyLine"></span>

             <div class="col_340">
                <div class="pad_15">
                    <div class="nwImgHt">
                        <img src="images/genetic-diases.jpg" class="" />
                    </div>
                </div>
            </div>
            <div class="col_800">
                <div class="pad_15">
                    <h5 class="newsTitle semiMedium mrg_B_3">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h5>
                    <i><span class="semiBold small clrDarkGrey">12 july 2022</span></i>
                    <span class="space15"></span>
                    <p class="light fontRegular  line-ht-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                </div>
            </div>
            <div class="float_clear"></div>--%>
           
         <%--   <span class="space30"></span>
            <div class="txtCenter"><a href="news" class="readAnch small semiBold upperCase letter-sp-2 mrg_R_15">More News</a></div>--%>
        <span class="space30"></span>
    </div>
    <%-- News end --%>

</asp:Content>

