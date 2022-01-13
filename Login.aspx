<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    <style type="text/css">
        .auto-style4 {
            width: 300px;
            text-align: center;
            height: 47px;
        }
        .backimg{
            background-image:url(image/addmedbg.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .auto-style6 {
            font-weight: normal;
        }
        .button {
              background-color: #4CAF50; /* Green */
              border: none;
              color: white;
              padding: 16px 32px;
              text-align: center;
              text-decoration: none;
              display: inline-block;
              font-size: 16px;
              margin: 4px 2px;
              transition-duration: 0.4s;
              cursor: pointer;
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
        .button3 {
          background-color: white; 
          color: black; 
          border: 2px solid #f44336;
        }
        
        .button3:hover {
          background-color: #f44336;
          color: white;
        }
        .auto-style7 {
            width: 300px;
            height: 80px;
        }
        .auto-style8 {
            text-align: center;
            height: 80px;
        }
        .auto-style9 {
            width: 300px;
            height: 72px;
        }
        .auto-style10 {
            text-align: center;
            height: 72px;
        }
        .auto-style15 {
            width: 81px;
            height: 73px;
        }
        .auto-style16 {
            width: 300px;
            height: 73px;
        }
        .auto-style17 {
            width: 81px;
            height: 47px;
        }
    </style>
    
    
</head>
<body class="backimg">
    <form id="form1" runat="server">
        <div style="text-align:center">
            <br />
            <br />
            
                
                        <h1> Mahendra Medics</h1>
                    
                                                
                    <h2 class="auto-style6"><strong>Login</strong></h2>
            <table align="center" width="700px" height="500px">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblEI" runat="server" Text="Email ID:" Font-Bold="True" ForeColor="#CC0000"></asp:Label></td>
                    <td class="auto-style17" >
                        <asp:TextBox ID="txtEID" runat="server" Height="24px" Width="280px" TextMode="Email" CausesValidation="True" BorderStyle="Solid"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style16">
                        <asp:Label ID="lblPwd" runat="server" Text="Password:" Font-Bold="True" ForeColor="Red" style="text-align: center"></asp:Label></td>
                    <td class="auto-style15" >
                        <asp:TextBox ID="txtPwd" runat="server" Height="25px" Width="280px" TextMode="Password" BorderStyle="Solid"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Button class="button3" ID="btnFP" runat="server" Height="49px" Text="Forget Password"  Font-Bold="True" OnClick="btnFP_Click" Width="170px" />
                    </td>
                    <td class="auto-style10">    
                        <asp:Button class="button1" ID="btnSub" runat="server" Font-Bold="True" Text="Submit" Font-Size="Medium" Height="49px" Width="170px" OnClick="btnSub_Click" />
                        <br />
                        <asp:Label ID="lblsub" runat="server"></asp:Label>
                    </td>

                    
                </tr>
                <tr>
                    <td class="auto-style7">
                        <strong>
                        <asp:Button class="button3" ID="btnBck" runat="server" Height="49px" Text="Back" Width="170px" Font-Bold="True" OnClick="btnBck_Click" />
                        </strong>
                    </td>
                    <td class="auto-style8">
                        <asp:Button class="button1" ID="btnReg" runat="server" Text="Registration" Font-Bold="True" Height="49px" Width="170px" OnClick="btnReg_Click" /></td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
