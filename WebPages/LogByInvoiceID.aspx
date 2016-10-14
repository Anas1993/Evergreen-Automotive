<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogByInvoiceID.aspx.cs" Inherits="WebPages_LogByInvoiceID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
 <form id="form1" runat="server">
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
            <div>
           <br >
        </br>
       <asp:TextBox ID="TextBox1" runat="server" style="text-align:center" placeholder="Invoice Number" ></asp:TextBox>
        <br >
        </br>
                </div>
            </center>
        <center>
            <div>
        <asp:Button ID="btn_Search" runat="server" OnClick="btn_Search_Click" Text="Search" />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="Back" />
     </center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT * FROM [Logs] WHERE ([InvoiceID] = @InvoiceID)">
            <SelectParameters>
                <asp:FormParameter FormField="TextBox1" Name="InvoiceID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
