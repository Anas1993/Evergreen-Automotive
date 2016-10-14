        <%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeFile="ViewBill.aspx.cs" Inherits="WebPages_ViewBill" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="InvoiceID" DataSourceID="BillbyDate" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" InsertVisible="False" ReadOnly="True" SortExpression="InvoiceID" />
                    <asp:BoundField DataField="CurrentDate" HeaderText="CurrentDate" SortExpression="CurrentDate" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                    <asp:BoundField DataField="CarRegNo" HeaderText="CarRegNo" SortExpression="CarRegNo" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="Colour" HeaderText="Colour" SortExpression="Colour" />
                    <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                    <asp:BoundField DataField="Tarif" HeaderText="Tarif" SortExpression="Tarif" />
                    <asp:BoundField DataField="Driver" HeaderText="Driver" SortExpression="Driver" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                    <asp:BoundField DataField="FromDate" HeaderText="FromDate" SortExpression="FromDate" />
                    <asp:BoundField DataField="FromTime" HeaderText="FromTime" SortExpression="FromTime" />
                    <asp:BoundField DataField="ToDate" HeaderText="ToDate" SortExpression="ToDate" />
                    <asp:BoundField DataField="ToTime" HeaderText="ToTime" SortExpression="ToTime" />
                    <asp:BoundField DataField="TotalDays" HeaderText="TotalDays" SortExpression="TotalDays" />
                    <asp:BoundField DataField="Petrol" HeaderText="Petrol" SortExpression="Petrol" />
                    <asp:BoundField DataField="OvertimeCharges" HeaderText="OvertimeCharges" SortExpression="OvertimeCharges" />
                    <asp:BoundField DataField="LateNightAllowance" HeaderText="LateNightAllowance" SortExpression="LateNightAllowance" />
                    <asp:BoundField DataField="DailyAllowance" HeaderText="DailyAllowance" SortExpression="DailyAllowance" />
                    <asp:BoundField DataField="OutCityNightAllownce" HeaderText="OutCityNightAllownce" SortExpression="OutCityNightAllownce" />
                    <asp:BoundField DataField="ProtocolCharges" HeaderText="ProtocolCharges" SortExpression="ProtocolCharges" />
                    <asp:BoundField DataField="ExtraMilage" HeaderText="ExtraMilage" SortExpression="ExtraMilage" />
                    <asp:BoundField DataField="TotalBill" HeaderText="TotalBill" SortExpression="TotalBill" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="BillbyDate" runat="server" ConnectionString="<%$ ConnectionStrings:GreenAutomotive %>" SelectCommand="SELECT * FROM [Invoice] WHERE ([CurrentDate] = @CurrentDate)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="CurrentDate" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
            </center>
            <center>
            <div id="ByDate">
           <br >
        </br>
                <div>   
                    <label>Insert Date</label>
       <asp:TextBox ID="TextBox1" runat="server" style="text-align:center" placeholder="Date" ></asp:TextBox><label><b>    DD/MM/YYYY</b></label>
                  <br />
                    <br />

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect Date Format (DD/MM/YY)" ValidationExpression="(((0|1)[1-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
           
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
        </div>
    </form>
</body>
</html>
