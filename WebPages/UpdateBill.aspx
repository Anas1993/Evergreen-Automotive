﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MainPage.master" AutoEventWireup="true" CodeFile="UpdateBill.aspx.cs" Inherits="WebPages_UpdateBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">


            <h1 style="color: black; align-items: center"><strong>Edit Bill</strong></h1>

            <!-- BASIC FORM ELELEMNTS -->


            <div class="form-panel">
                <div>
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Invoice Number<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddl_InvoiceNum" Width="160px" Height="35px" runat="server" DataSourceID="SelectInvoiceNumber" DataTextField="InvoiceID" DataValueField="InvoiceID"></asp:DropDownList>
                            <asp:SqlDataSource ID="SelectInvoiceNumber" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT [InvoiceID] FROM [Invoice]"></asp:SqlDataSource>
                        </div>
                    </div>

                    <br />
                    <br />
                    <br />
                    <!-- <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Invoice Date<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_InvoiceDate" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                       -->
                    <div class="form-group">
                        <br />
                        <br />
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_SelectBill" Style="background-color: #647cac" OnClick="btn_SelectBill_Click" class="btn btn-theme btn-block" type="submit" runat="server" Text="Search" Height="43px" Width="100px" />
                        </div>

                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Issue Date<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_date" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                        <br />
                    </div>
                    <br />

                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Company Name<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_CompName" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <br />
                    <br />

                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Customer Name<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_CustomerName" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                        <br />
                    </div>
                    <br />


                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Car Registration Number<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_CarRegistrationNumber" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>

                        </div>
                    </div>


                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Car Model<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_CarModel" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Car Colour<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_CarColour" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Car Make<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_CarMake" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Car Class<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_CarClass" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Tarif<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_Tarif" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Driver<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_Driver" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Destinantion<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_Destinantion" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">FromDate<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_FromDate" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">From Time<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_FromTime" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">To Date<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_ToDate" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">To Time<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_ToTime" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Total Days<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_TotalDays" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Petrol<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_Petrol" CssClass="form-control" ReadOnly="false" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Chauffer Hourly Rate<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_ChaufferHourlyRate" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server" ></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Chauffer Hours<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_ChaufferHours" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server" ></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Late Night Allowance<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_LateNightAllowance" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server" ></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Daily Allowance<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_DailyAllowance" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Out City Night Allownce<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_OutCityNightAllownce" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server" ></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Protocol Charges<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_ProtocolCharges" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Extra Milage<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_ExtraMilage" CssClass="form-control" placeholder="0"  ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Rent<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_rent" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Discount<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_discount" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Total Bill<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_totalBill" CssClass="form-control" placeholder="0"  ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Label ID="txt_OvertimeCharges" runat="server" Visible="false"></asp:Label>
                    <asp:Label ID="lbl_subtotal" runat="server" Visible="false"></asp:Label>
                    <asp:Label ID="lbl_totalRent" runat="server" Visible="false"></asp:Label>
                    <div class="form-group">
                        <br />
                        <br />
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_Save" Style="background-color: #647cac" OnClick="btn_Save_Click" class="btn btn-theme btn-block" type="submit" runat="server" Text="Save" Height="43px" Width="100px" />
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
                    <br />
                    <br />
                </div>
            </div>
            </div>
        </section>
    </section>
</asp:Content>

