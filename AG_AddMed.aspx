<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AG_AddMed.aspx.cs" Inherits="Lg.WebForm1" %>

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
            .myDiv{
                    width:100%;
                    height:100%;
                    background-color:lightsalmon;
                }
            .auto-style5 {
                font-size: xx-large;
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
          
         .button1 {
          background-color: whitesmoke; 
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
        </style>
      <title></title>
</head>
    
<body class="backimg">
    <form id="form1" runat="server">
        <ul class="auto-style1">
  <li class="auto-style15">
      <asp:Image class="imagealign" ID="Image1" runat="server"  Height="196px" ImageUrl="~/image/pharmacy_100px.png" Width="208px" /> </li>
        <li class="auto-style14">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="Agent Dashboard"></asp:Label>
            </strong><a class="active" href="AGdashboard.aspx" style="height: 47px; margin-top: 0px">
            <div class="auto-style16">
                <asp:Image ID="Image3" runat="server" Height="36px" ImageUrl="~/image/dashbord.png" Width="59px" />
                <strong><span class="auto-style13">Dashboard</span></strong></div>
            </a> </li>
   <li class="auto-style16"><a href="AG_AddMed.aspx" class="auto-style10"><strong>Add Medicine</strong></a></li>
  <li class="auto-style16"><a href="VCheck.aspx" class="auto-style11"><strong>View Medicine</strong></a></li>
      <li><a href="AG_UpdMed.aspx" class="auto-style10"><strong> Update Medicine</strong></a></li>
  <li class="auto-style16"><a href="VO.aspx" class="auto-style12"><strong>View Orders</strong></a></li>
  <li class="auto-style16"><a href="ACF.aspx " class="auto-style12"><strong>View Complain/Feedback</strong></a></li>
  <li class="auto-style16"><a href="AGlogin.aspx"><strong>Logout</strong></a></li>

</ul>
        <div style="margin-left:25%;padding:1px 16px;" class="auto-style7">
  <div class="auto-style3">
      <strong>
      <asp:Label ID="lbldash" runat="server" Text="ADD MEDICINE" CssClass="auto-style5"></asp:Label>
      </strong>
    </div>
       <div>
            <table >                
                <tr>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button class="button1" ID="BtnUD" runat="server" Text="Upload" Height="40px" Width="100px" BorderStyle="Solid" Font-Bold="True" OnClick="BtnUD_Click"  />
                        <br />
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>              
                </table>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:Button class="button3" ID="BtnReset" runat="server" Text="RESET" Height="40px" Width="100px" BorderStyle="Solid" Font-Bold="True" />    
       </div>
     </div>
    </form>
</body>
</html>
