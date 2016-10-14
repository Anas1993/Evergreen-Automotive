<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MainPage.master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="WebPages_Billings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">


            <h1 style="color: black; align-items: center">&nbsp;</h1>
            <h1 style="color: black; align-items: center"><strong>New Bill</strong></h1>
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Invoice Number<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_InvoiceNum" CssClass="form-control" ReadOnly="true" Width="160" runat="server" Font-Bold="True"></asp:TextBox>
                </div>
            </div>

            <br />
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Current Date<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_CurrentDate" CssClass="form-control" placeholder="DD/MM/YYYY" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect Date Format (DD/MM/YY)" ValidationExpression="(((0|1)[1-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))" ControlToValidate="txt_CurrentDate"></asp:RegularExpressionValidator>

                </div>
            </div>
            <br />
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
                    <asp:TextBox ID="txt_CustName" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Car Registration Number<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="ddl_regNum" runat="server" DataSourceID="SelectCarsRegNo" AutoPostBack="true" OnSelectedIndexChanged="ddl_regNum_SelectedIndexChanged" Width="160" Height="35" DataTextField="CarRegNo" DataValueField="CarRegNo" Font-Bold="True"></asp:DropDownList>
                    <asp:SqlDataSource ID="SelectCarsRegNo" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT [CarRegNo] FROM [Car]"></asp:SqlDataSource>
                </div>
            </div>
            <br />
            <%-- <div class="form-group">
                        <br />
                        <br />
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_addCar" Style="background-color: #647cac" OnClick="btn_addCar_Click" class="btn btn-theme btn-block" type="submit" runat="server" Text="Submit Car" Height="43px" Width="100px" />
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />

            --%>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Car Model<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_CarModel" CssClass="form-control" Width="160" ReadOnly="true" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Car Colour<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_CarColour" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Car Make<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_CarMake" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Car Class<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_CarClass" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>

            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Tarif<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="ddl_Tarif" runat="server" AutoPostBack="true" Width="160" Height="35">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Daily</asp:ListItem>
                        <asp:ListItem>Weekly</asp:ListItem>
                        <asp:ListItem>Monthly</asp:ListItem>
                        <asp:ListItem>Yearly</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Driver<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="ddl_Driver" runat="server" DataSourceID="SelectDriver" DataTextField="DriverName" DataValueField="DriverName" Width="160" Height="35"></asp:DropDownList>
                    <asp:SqlDataSource ID="SelectDriver" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT [DriverName] FROM [Driver]"></asp:SqlDataSource>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Destinantion<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_Destinantion" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">FromDate<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_FromDate" CssClass="form-control" placeholder="DD/MM/YYYY" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">From Time<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_FromTime" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">To Date<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_ToDate" CssClass="form-control" placeholder="DD/MM/YYYY" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">To Time<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_ToTime" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Total Days<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_TotalDays" CssClass="form-control" ReadOnly="False" placeholder="0" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Petrol<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_Petrol" CssClass="form-control" OnTextChanged="txt_Petrol_TextChanged" placeholder="0" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Chauffer Hourly Rate<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_ChaufferHourlyRate" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server" OnTextChanged="txt_OvertimeCharges_TextChanged"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Chauffer Hours<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_ChaufferHours" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server" OnTextChanged="txt_OvertimeCharges_TextChanged"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Late Night Allowance<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_LateNightAllowance" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server" OnTextChanged="txt_LateNightAllowance_TextChanged"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Daily Allowance<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_DailyAllowance" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server" OnTextChanged="txt_DailyAllowance_TextChanged"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Out City Night Allownce<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_OutCityNightAllownce" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server" OnTextChanged="txt_OutCityNightAllownce_TextChanged"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Protocol Charges<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_ProtocolCharges" CssClass="form-control" placeholder="0" ReadOnly="False" Width="160" runat="server" OnTextChanged="txt_ProtocolCharges_TextChanged"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Extra Milage<label style="color: red;"> &nbsp*</label></label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txt_ExtraMilage" CssClass="form-control" placeholder="0" OnTextChanged="txt_ExtraMilage_TextChanged" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
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
                    <asp:TextBox ID="txt_discount" CssClass="form-control" placeholder="0" OnTextChanged="txt_ExtraMilage_TextChanged" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                </div>
            </div>
            <asp:Label ID="txt_OvertimeCharges" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="lbl_subtotal" runat="server" Visible="false"></asp:Label>
             <asp:Label ID="lbl_r" runat="server" Visible="false"></asp:Label>
            <br />
            <div class="form-group">
                <br />
                <br />
                <div class="col-sm-10" style="margin-left: 160px;">
                    <asp:Label ID="lbl_TotalBill" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btn_calculate" Style="background-color: #647cac" class="btn btn-theme btn-block" OnClick="btn_calculate_Click" type="submit" runat="server" Text="Calculate Bill" Height="43px" Width="122px" />
                    <br />
                    <asp:Button ID="btn_CreateBill" Style="background-color: #647cac" class="btn btn-theme btn-block" OnClick="btn_CreateBill_Click" type="submit" runat="server" Text="Save Bill" Height="43px" Width="100px" />
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
        </section>
    </section>
</asp:Content>

