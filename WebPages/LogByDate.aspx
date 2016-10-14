<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeFile="LogByDate.aspx.cs" Inherits="WebPages_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID='ScriptManager1' runat='server' EnablePageMethods='true' />
        <div>
            <center> 
        <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="LogID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="LogID" HeaderText="Log Num" InsertVisible="False" ReadOnly="True" SortExpression="LogID" />
                <asp:BoundField DataField="Dates" HeaderText="Date" SortExpression="Dates" />
                <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                <asp:BoundField DataField="RenterName" HeaderText="Renter Name" SortExpression="RenterName" />
                <asp:BoundField DataField="DriverType" HeaderText="Driver Type" SortExpression="DriverType" />
                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                <asp:BoundField DataField="CheckOut" HeaderText="Check Out" SortExpression="CheckOut" />
                <asp:BoundField DataField="CheckIn" HeaderText="Check In" SortExpression="CheckIn" />
                <asp:BoundField DataField="Petrol" HeaderText="Petrol" SortExpression="Petrol" />
                <asp:BoundField DataField="InvoiceID" HeaderText="Invoice Num" SortExpression="InvoiceID" />
                <asp:BoundField DataField="TotalBill" HeaderText="Total Bill" SortExpression="TotalBill" />
            </Columns>
           
        </asp:GridView>
            </div>
            </center>
            <center>
            <div id="ByDate">
           <br >
        </br>
                <div>   
       <asp:TextBox ID="TextBox1" runat="server" style="text-align:center" placeholder="Date" ></asp:TextBox><label><b>    DD/MM/YYYY</b></label>
                  <br />
                    <br />

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect Date" ValidationExpression="(((0|1)[1-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
           
                        </div>
                    <br >
        </br>
                </div>
        
            <div>
        <asp:Button ID="btn_Search" runat="server" OnClick="btn_Search_Click" Text="Search" />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="Back" />
                </div>
                </center>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT * FROM [Logs] WHERE ([Dates] = @Dates)">
                <SelectParameters>
                    <asp:FormParameter FormField="TextBox1" Name="Dates" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
