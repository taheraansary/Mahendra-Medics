<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VS.aspx.cs" Inherits="test_1.VS" %>

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
      <asp:Label ID="lbldash" runat="server" Text="Sales" CssClass="auto-style5"></asp:Label>
      </strong>
    </div>
 <div class="auto-style6">
     <asp:TextBox ID="txtSch" runat="server" ForeColor="Green" TextMode="Search" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox>
     <br />
     <asp:Button ID="btnSch" runat="server" Text="Search" Font-Bold="True" ForeColor="Green" Height="35px" Width="170px"  />
     <br />
     <br />
     <br />
     <br />
     <asp:GridView ID="GridView1" runat="server">
     </asp:GridView>
 </div>
            </div>
        </div>
    </form>
</body>
</html>
