<%@ Page Title="Dashboard | Sushil IVF Admin Panel" Language="C#" MasterPageFile="~/adminpanel/MasterAdmin.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="adminpanel_Default2" %>
<%@ MasterType VirtualPath="~/adminpanel/MasterAdmin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
         <div class="row">
             <div class="col-lg-3 col-6">
                <!-- small box -->
                <a href="news-master.aspx">
                    <div class="small-box bg-info">
                        <div class="inner">
                            <span class="space5"></span>
                            <h3><%= arrCount[0] %></h3>
                            <span class="space10"></span>
                            <p>Total News</p>

                        </div>
                        <span class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></span>
                    </div>
                </a>
            </div>
            <!-- ./col -->
             <div class="col-lg-3 col-6">
                <!-- small box -->
                <a href="testimonials-master.aspx">
                    <div class="small-box bg-indigo">
                        <div class="inner">
                            <span class="space5"></span>
                            <h3><%= arrCount[1] %></h3>
                            <span class="space10"></span>
                            <p>Total Testimonials</p>

                        </div>
                        <span class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></span>
                    </div>
                </a>
            </div>
            <!-- ./col -->
            <%-- <div class="col-lg-3 col-6">
                <!-- small box -->
                <a href="testimonials.aspx">
                    <div class="small-box bg-olive">
                        <div class="inner">
                            <span class="space5"></span>
                            <h3><%= arrCount[2] %></h3>
                            <span class="space10"></span>
                            <p>Total Video Testimonials</p>

                        </div>
                        <span class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></span>
                    </div>
                </a>
            </div>--%>
            <!-- ./col -->
         </div>
    </div>
</asp:Content>

