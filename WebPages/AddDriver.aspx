<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MainPage.master" AutoEventWireup="true" CodeFile="AddDriver.aspx.cs" Inherits="WebPages_AddDriver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">

            <h1 style="color: black; align-items: center"><strong>Add Car</strong></h1>

            <!-- BASIC FORM ELELEMNTS -->

            <div class="form-panel">
                <div>
                    <label style="color: red; font-weight: 100;">*  This information is required</label>

                    <div class="form-group">
                        <label class="col-sm-2 col-sm-2 control-label">Driver Name<label style="color: red;"> &nbsp*</label></label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_DriverName" CssClass="form-control" ReadOnly="False" Width="160" runat="server"></asp:TextBox>
                        </div>
                    </div>
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

                        <div class="form-group">
                            <br/>
                        <br/>
                        <div class="col-sm-10" style="margin-left: 160px;">
                            <asp:Button ID="btn_addDriver" Style="background-color: #647cac" class="btn btn-theme btn-block" type="submit" runat="server" Text="Save" Height="43px" Width="100px" OnClick="btn_addDriver_Click" />
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
        </section>
    </section>
</asp:Content>

