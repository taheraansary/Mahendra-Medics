<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FP.aspx.cs" Inherits="test_1.FP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 602px;
            height: 218px;
        }
        .button3 {
          background-color: white; 
          color: black; 
          border: 2px solid #f44336;
        }
        
        .button3:hover {
          background-color: #f44336;
          color: white;
        }
        .backimg {
            background-image: url(image/capsule.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
         .button1 {
          background-color: lightskyblue; 
          color: black; 
          border: 2px solid #4CAF50;
        }

            .button1:hover {
                background-color: #4CAF50;
                color: white;
            }
    </style>
</head>
<body class="backimg">
    <form id="form1" runat="server">
        <div>
            <h2 class="auto-style1">Forget Password</h2>

            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblEID" runat="server" Text="EmailID"></asp:Label></td>
                    <td class="auto-style1"> <asp:TextBox ID="txtEID" runat="server" Height="35px"></asp:TextBox>
                        <asp:Button class="button1" ID="btnFP" runat="server" Font-Bold="True" Height="42px" Text="Send" Width="115px" OnClick="btnFP_Click" />
                        <br />
                        <asp:Label ID="lblFP" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button class="button3" ID="btnBck" runat="server" Text="Back" OnClick="btnBck_Click" Height="42px" Width="115px" />
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
