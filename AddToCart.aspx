<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="test3.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Mahendra Medics"></asp:Label>
            </strong>
        </div>
        <div>
            You Have Added&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            &nbsp;Products In Your Cart<br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserHP.aspx">Continue Shopping</asp:HyperLink>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="474px" Width="813px"  ShowFooter="True">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="S.No" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="medicineid" HeaderText="Meidicine ID" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="medicinename" HeaderText="Medicine Name" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="medicineimage" HeaderText="Medicine Image">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="mrp" HeaderText="MRP" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="batchno" HeaderText="Batch No" />
                    <asp:BoundField DataField="manufacturer" HeaderText="ManuFacturer" />
                    <asp:BoundField DataField="expirydate" HeaderText="Expiry Date" />
                    <asp:BoundField DataField="totalmrp" HeaderText="totalmrp" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" Height="50px" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
