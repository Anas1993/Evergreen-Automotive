<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MainPage.master" AutoEventWireup="true" CodeFile="DeleteLog.aspx.cs" Inherits="WebPages_DeleteLog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">
            <
            <h1 style="color: black; align-items: center"><strong>Delete Log</strong></h1>

            <!-- BASIC FORM ELELEMNTS -->


            <div class="form-panel">


                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Log Number<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:DropDownList Width="160px" Height="35px" ID ="ddl_invoiceNum" runat="server" DataSourceID="SelectLogID" DataTextField="LogID" DataValueField="LogID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SelectLogID" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT [LogID] FROM [Logs]"></asp:SqlDataSource>
                    </div>
                </div>
                <br />

                <div class="form-group">
                    <br />
                    <br />
                    <div class="col-sm-10" style="margin-left: 160px;">
                        <asp:Button ID="btn_SelectLog" Style="background-color: #647cac" class="btn btn-theme btn-block" type="submit" runat="server" Text="Search" Height="43px" Width="100px" OnClick="btn_SelectLog_Click" />
                    </div>

                </div>
                <br />
                <br />
                <br />
                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Date<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_Date" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">User Name<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_UserName" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                    </div>

                </div>
                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Renter Name<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_RenterName" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Driver Type<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txt_DriverType" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                    </div>
                </div>

                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Rate<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_Rate" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                    </div>
                    <br />
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Drive Out<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_DriveOut" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Drive In<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_DriveIn" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                    </div>
                    <br />
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Petrol<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_Petrol" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Invoice Number<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_InvoiceNum" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                    </div>

                </div>

                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Total Bill<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_TotalBill" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                    </div>

                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="form-group">
                        </br>
                        </br>
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_addCar" Style="background-color: #647cac" class="btn btn-theme btn-block" type="submit" runat="server" Text="Delete Log" Height="43px" Width="100px" OnClick="btn_addCar_Click" />
                        </div>

                    </div>

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

            =
        </section>
    </section>
</asp:Content>







