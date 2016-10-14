<%@ Page Title="EverGreen" Language="C#" MasterPageFile="~/WebPages/MainPage.master" AutoEventWireup="true" CodeFile="ViewLog.aspx.cs" Inherits="WebPages_ViewLog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="main-content" style="background-color: #edf0f5;">
        <section class="wrapper">

            <h1 style="color: black; align-items: center"><strong>View Log</strong></h1>

            <!-- BASIC FORM ELELEMNTS -->

            <div class="form-panel">
                <div class="form-group">

                    <h2>Kindly Press the button for the desired operation</h2>
                    <div>
                        <h4>To search Log By Date</h4>
                        <asp:Button ID="btn_LogDate" Style="background-color: #647cac" class="btn btn-theme btn-block" OnClick="btn_LogDate_Click" type="submit" runat="server" Text="Date" Height="43px" Width="100px" />
                    </div>
                    <div>
                        <h4>To search Log By Invoice ID</h4>
                        <asp:Button ID="btn_logByInvoiceID" Style="background-color: #647cac" class="btn btn-theme btn-block" OnClick="btn_logByInvoiceID_Click" type="submit" runat="server" Text="Invoive Number" Height="43px" Width="150px" />
                    </div>
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
