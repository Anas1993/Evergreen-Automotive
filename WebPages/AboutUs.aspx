<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MainPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="WebPages_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">


            <h1 style="color: black; align-items: center"><strong>Print Bill</strong></h1>

            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Developed By<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_Name" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                </div>
                <br />
            </div>
            <br />

            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Contact Number<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_Num" CssClass="form-control" ReadOnly="False" Width="160" runat="server" Enabled="False"></asp:TextBox>
                </div>
            </div>

            <br />
            <br />

            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Email Address<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_Email" CssClass="form-control" ReadOnly="true" Width="250" runat="server"></asp:TextBox>
                </div>
                <br />
            </div>
        </section>
    </section>
</asp:Content>

