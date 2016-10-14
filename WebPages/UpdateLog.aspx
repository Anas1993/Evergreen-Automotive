<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MainPage.master" AutoEventWireup="true" CodeFile="UpdateLog.aspx.cs" Inherits="WebPages_UpdateLog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">
            <h1 style="color: black; align-items: center"><strong>Edit Log</strong></h1>
            <div class="form-panel">


                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Invoice Number<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddl_InvoiceNum" Width="160px" Height="35px" runat="server" DataSourceID="SelectInvoiceID" DataTextField="InvoiceID" DataValueField="LogID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SelectInvoiceID" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT [InvoiceID], [LogID] FROM [Logs]"></asp:SqlDataSource>
                        <br />
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <div class="col-sm-10" style="margin-left: 160px;">
                        <br />
                        <br />
                        <asp:Button ID="btn_SelectLog" Style="background-color: #647cac" OnClick="btn_SelectLog_Click" class="btn btn-theme btn-block" type="submit" runat="server" Text="Search" Height="43px" Width="100px" />
                        <br />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Date<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_Date" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        <br />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Renter Name<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_UserName" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        <br />
                    </div>

                </div>

                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">User Name<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_RenterName" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Driver Type<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_DriverType" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Rate<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_Rate" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        <br />
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Drive Out<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_DriveOut" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Drive In<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_DriveIn" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        <br />
                    </div>
                    <br />
                    <br />
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Petrol<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_Petrol" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Invoice Number<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_InvoiceNumber" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        <br />
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Total Bill<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_TotalBill" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        <br />
                    </div>

                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="form-group">
                        </br>
                        </br>
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_updateLog" Style="background-color: #647cac" OnClick="btn_updateLog_Click" class="btn btn-theme btn-block" type="submit" runat="server" Text="Save" Height="43px" Width="100px" />
                        </div>

                    </div>
                    <div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </div>

        </section>
    </section>
</asp:Content>





