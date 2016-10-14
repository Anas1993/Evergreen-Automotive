<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MainPage.master" AutoEventWireup="true" CodeFile="AddLog.aspx.cs" Inherits="WebPages_AddLog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">
            <
            <h1 style="color: black; align-items: center"><strong>Add Log</strong></h1>

            <!-- BASIC FORM ELELEMNTS -->

            <div class="form-panel">

                <label style="color: red; font-weight: 100;">*  This information is required</label>


                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Date<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_Date" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                    </div>
                </div>
                 <br />

                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Renter Name<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_UserName" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                    </div>

                </div>





                <br />
                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">User Name<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_RenterName" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                    </div>
                </div>



                <br />
                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Driver Type<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddl_Driver" runat="server" Width="160" Height="35" DataSourceID="SelectDriver" DataTextField="DriverName" DataValueField="DriverName" ></asp:DropDownList>
                        <asp:SqlDataSource ID="SelectDriver" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT [DriverName] FROM [Driver]"></asp:SqlDataSource>
                    </div>
                </div>
                <br />
                <br />
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">Rate<label style="color: red;"> &nbsp*</label></label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txt_Rate" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                    </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Drive Out<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_DriveOut" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        </div>
                        </div>
                        <br />
                         <br />
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">Drive In<label style="color: red;"> &nbsp*</label></label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_DriveIn" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                            </div>
                            <br />
                            <br /> <br />
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">Petrol<label style="color: red;"> &nbsp*</label></label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_Petrol" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <br />
                                 <br />
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label">Invoice Number<label style="color: red;"> &nbsp*</label></label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txt_InvoiceNum" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                                    </div>
                                    <br />
                                    <br />
                                     <br />
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-2 control-label">Total Bill<label style="color: red;"> &nbsp*</label></label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txt_TotalBill" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                                        </div>

                                        <br />
                                        <br />
                                         <br />
                                        <div class="form-group">
                                            </br>
                        </br>
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_addCar" Style="background-color: #647cac" class="btn btn-theme btn-block" OnClick="btn_addCar_Click" type="submit"  runat="server" Text="Save" Height="43px" Width="100px" />
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

                            </div>
                        </div>
        </section>
    </section>
</asp:Content>



