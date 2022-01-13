<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PAY.aspx.cs" Inherits="test_1.PAY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 50px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <p><strong>scan and pay</strong></p>
            <asp:Image ID="igQR" ImageUrl="~/image/qr.jpeg" runat="server" CssClass="auto-style1" Height="436px" Width="215px" />
            <table align="center">
                <tr>
                    <td>
                        <asp:RadioButton ID="rdbT" runat="server" OnCheckedChanged="rdbT_CheckedChanged" /><asp:Label ID="lblT" runat="server" Text="Transcation ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="rdbC" runat="server" OnCheckedChanged="rdbC_CheckedChanged" /><asp:Label ID="lblC" runat="server" Text="Cash on Delivery"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnCO" runat="server" Text="Confirm" /><br />

            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            
            
            
            
        </div>
    </form>
</body>
</html>
