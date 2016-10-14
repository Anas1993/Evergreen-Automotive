<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MainPage.master" AutoEventWireup="true" CodeFile="UpdateDrivers.aspx.cs" Inherits="WebPages_UpdateDrivers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">

            <h1 style="color: black; align-items: center"><strong>Edit Driver</strong></h1>

            <!-- BASIC FORM ELELEMNTS -->
            
            <div class="form-panel">
                <div>
                    <label style="color: red; font-weight: 100;">*  This information is required</label>
                    <div class="form-group">
                        <label id="lbl_MeetingStatus" class="col-sm-2 col-sm-2 control-label">Driver Name<label style="color: red;"> *</label></label>
                        <div class="col-sm-10" style="width: 800px">
                            <asp:DropDownList ID="ddl_driverName" Width="160px" Height="35px" runat="server" DataSourceID="SelectDriver" DataTextField="DriverName" DataValueField="DriverName"></asp:DropDownList>
                            <asp:SqlDataSource ID="SelectDriver" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT [DriverName] FROM [Driver]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="form-group">
                        </br>
                        </br>
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_loadDriver" Style="background-color: #647cac" OnClick="btn_loadDriver_Click" class="btn btn-theme btn-block" type="submit" runat="server" Text="Search" Height="43px" Width="100px" />
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Panel ID="Panel1" runat="server">
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">Driver Name<label style="color: red;"> &nbsp*</label></label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_DriverName" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">Driver Contact Number<label style="color: red;"> &nbsp*</label></label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_DriverContact" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_updateDriver" Style="background-color: #647cac" OnClick="btn_updateDriver_Click" class="btn btn-theme btn-block" type="submit" runat="server" Text="Save" Height="43px" Width="100px" />
                        </div>
                    </asp:Panel>
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
            </div>
            </div>
            </div>
        </section>
    </section>
</asp:Content>

