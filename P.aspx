<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="P.aspx.cs" Inherits="test_1.P" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
           body {
          margin: 0;
        }
            .imagealign{
                align-content:center;
                           }
        ul {
          list-style-type: none;
          margin: 0;
          padding: 0;
          width: 25%;
          background-color: #f1f1f1;
          position: fixed;
          height: 100%;
          overflow: auto;
        }

        li a {
          display: block;
          color: #000;
          padding: 8px 16px;
          text-decoration: none;
        }

        li a.active {
          background-color: #04AA6D;
          color: white;
        }

        li a:hover:not(.active) {
          background-color: #555;
          color: white;
        }
            .auto-style1 {
                left: 1px;
                height: 100%;
                top: 1px;
                width: 23%;
            }
            .auto-style3 {
              height: 53px;
            text-align: center;
        }
           
            .auto-style5 {
                font-size: xx-large;
            }
            .auto-style6 {
                width: 100%;
                height: 114%;
            text-align: center;
        }
            .auto-style7 {
                height: 542px;
            }
            .auto-style10 {
                height: 31px;
            }
            .auto-style11 {
                height: 29px;
            }
            .auto-style12 {
                height: 28px;
            }
            .auto-style13 {
                font-size: large;
            }
            .auto-style14 {
                text-align: center;
            }
            .auto-style15 {
                height: 196px;
            text-align: center;
        }
            .auto-style16 {
                text-align: left;
          }
        .auto-style17 {
            width: 665px;
            height: 256px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <ul class="auto-style1">
  <li class="auto-style15">
      <asp:Image class="imagealign" ID="Image1" runat="server"  Height="196px" ImageUrl="~/image/admin3.png" Width="208px" /> </li>
        <li class="auto-style14">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="Admin Dashboard"></asp:Label>
            </strong><a class="active" href="Admin.aspx" style="height: 47px; margin-top: 0px">
            <div class="auto-style16">
                <asp:Image ID="Image3" runat="server" Height="36px" ImageUrl="~/image/dashbord.png" Width="59px" />
                <strong><span class="auto-style13">Dashboard</span></strong></div>
            </a> </li>
  <li class="auto-style16"><a href="AVM.aspx" class="auto-style10"><strong>View Medicine</strong></a></li>
  <li class="auto-style16"><a href="AAgent.aspx" class="auto-style11"><strong>Add Agent</strong></a>
  <a href="VS.aspx" class="auto-style10"><strong> View Sales</strong></a></li>
  <li class="auto-style16"><a href="P.aspx" class="auto-style12"><strong>Profile</strong></a></li>
  <li class="auto-style16"><a href="Cf.aspx " class="auto-style12"><strong>View Complain/Feedback</strong></a></li>
  <li class="auto-style16"><a href="Adlogin.aspx"><strong>Logout</strong></a></li>
</ul>
        <div style="margin-left:25%;padding:1px 16px;" class="auto-style7">
  <div class="auto-style3">
      <strong>
      <asp:Label ID="lbldash" runat="server" Text="Profile" CssClass="auto-style5"></asp:Label>
      <br />
      <br />
      <br />
      </strong>
    </div>
            
 <div class="auto-style6">
     <table align="center" class="auto-style17">
         <tr>
             <th class="auto-style11">
                 <asp:Label ID="lblfn" runat="server" Text="Full Name :" BackColor="#CCFFFF"></asp:Label>
             </th>             
             <td class="auto-style11">
                 <asp:TextBox ID="txtFN" runat="server" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox>
                 <br />
             </td>
         </tr>
         <tr>
             <th>
                 <asp:Label ID="lblMN" runat="server" Text="Mobile :" BackColor="#CCFFFF"></asp:Label>
             </th>
             <td>
                 <asp:TextBox ID="txtMNo" runat="server" TextMode="Phone" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <th>
                 <asp:Label ID="lblEID" runat="server" Text="Email ID :" BackColor="#CCFFFF"></asp:Label>
             </th>
             <td>
                 <asp:TextBox ID="txtEID" runat="server" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox>
             </td>            
         </tr>
         <tr>
             <th>
                 <asp:Label ID="lblPwd" runat="server" Text="Password :" BackColor="#CCFFFF"></asp:Label>
             </th>
             <td>
                 <asp:TextBox ID="txtPwd" runat="server" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox>
             </td>
         </tr>
     </table>
    <br />
     <asp:Button ID="btnAA" runat="server" Text="Add Admin" Font-Bold="True" ForeColor="Red" Height="41px" OnClick="btnAA_Click" Width="199px" BorderStyle="Solid" />
     
     <br />
     <asp:Label ID="lblAAdm" runat="server"></asp:Label>
     
     <br />
     <br />
     <br />

    <table align="center">
        <tr>
            <td>
                <asp:TextBox ID="txtID" runat="server" Height="23px" TextMode="Number" Width="257px" BorderStyle="Solid"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                
                <asp:Button ID="btnSch" runat="server" Text="Search" Font-Bold="True" ForeColor="Green" Width="107px" Height="27px" OnClick="btnSch_Click" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtDlt" runat="server" Height="23px" Width="257px" BorderStyle="Solid" ></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnDlt" runat="server" Text="Delete Agent" ForeColor="Red" Font-Bold="True" Height="27px" Width="107px" OnClick="btnDlt_Click" />
            </td>
        </tr>
    </table>
     <br />
     <asp:Label ID="lblmsg" runat="server"></asp:Label>
     
 </div>
            </div>
        </div>
    </form>
</body>
</html>
