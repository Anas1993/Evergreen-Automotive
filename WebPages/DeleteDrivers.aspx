<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MainPage.master" AutoEventWireup="true" CodeFile="DeleteDrivers.aspx.cs" Inherits="WebPages_DeleteDrivers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">

            <h1 style="color: black; align-items: center"><strong>Delete Driver</strong></h1>

            <!-- BASIC FORM ELELEMNTS -->
      
            <div class="form-panel">
                <div>
                    <label style="color: red; font-weight: 100;">*  This information is required</label>
                    <div class="form-group">
                        <label id="lbl_MeetingStatus" class="col-sm-2 col-sm-2 control-label">Driver Name<label style="color: red;"> *</label></label>
                        <div class="col-sm-10" style="width: 800px">
                            <asp:DropDownList ID="ddl_driver" Width="160px" Height="35px" runat="server" DataSourceID="SelectDriver" DataTextField="DriverName" DataValueField="DriverName"></asp:DropDownList>
                            <asp:SqlDataSource ID="SelectDriver" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT [DriverName] FROM [Driver]"></asp:SqlDataSource>
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
                            <label class="col-sm-2 col-sm-2 control-label">Driver Name<label style="color: red;"> &nbsp*</label></label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_DriverName" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">Driver Contact Number<label style="color: red;"> &nbsp*</label></label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_DriverContact" CssClass="form-control" ReadOnly="true" Width="160" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_deleteDriver" Style="background-color: #647cac" class="btn btn-theme btn-block" type="submit" runat="server" Text="Delete" Height="43px" Width="100px" OnClick="btn_deleteDriver_Click" />
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

