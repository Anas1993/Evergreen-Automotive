<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MainPage.master" AutoEventWireup="true" CodeFile="DeleteCars.aspx.cs" Inherits="WebPages_DeleteCars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">

            <h1 style="color: black; align-items: center"><strong>Delete Car</strong></h1>

            <!-- BASIC FORM ELELEMNTS -->
            

            <div class="form-panel">
                <div>
                    <label style="color: red; font-weight: 100;">*  This information is required</label>
                    <div class="form-group">
                        <label id="lbl_MeetingStatus" class="col-sm-2 col-sm-2 control-label">Car Registration Number<label style="color: red;"> *</label></label>
                        <div class="col-sm-10" style="width: 800px">
                            <asp:DropDownList ID="DropDownList1" Width="160px" Height="35px" runat="server" DataSourceID="CarRegNum" DataTextField="CarRegNo" DataValueField="CarRegNo"></asp:DropDownList>
                            <asp:SqlDataSource ID="CarRegNum" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT [CarRegNo] FROM [Car]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="form-group">
                        </br>
                        </br>
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_loadCar" Style="background-color: #647cac" class="btn btn-theme btn-block" type="submit" runat="server" Text="Search" Height="43px" Width="100px" OnClick="btn_loadCar_Click" />
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Panel ID="Panel1" runat="server">
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">Car Registration Number<label style="color: red;"> &nbsp*</label></label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_CarRegNum" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />

                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">Car Model<label style="color: red;"> &nbsp*</label></label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_CarModel" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
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


                            <br />
                            <br />

                            <div class="form-group">
                                <br>
                                <br></br>
                                <br>
                                <br></br>
                                <div class="col-sm-10" style="margin-left: 160px;">
                                    <asp:Button ID="btn_deleteCar" runat="server" class="btn btn-theme btn-block" Height="43px" OnClick="btn_deleteCar_Click" Style="background-color: #647cac" Text="Delete" type="submit" Width="100px" />
                                </div>
                                </br>
                                </br>
                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                    </asp:Panel>
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

