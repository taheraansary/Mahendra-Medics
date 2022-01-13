<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AGlogin.aspx.cs" Inherits="test_1.AGlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
             .division{
              width:50%;
              height:100px;
              float:left;
              }
        .auto-style1 {
            width: 719px;
            text-align: center;
        }
        .auto-style2 {
            width: 771px;
            text-align: center;
        }
        .auto-style3 {
            height: 584px;
        }
        .auto-style4 {
            height: 572px;
            width: 677px;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            margin-left: 3px;
        }
        .bgcolor {
            background-color:dimgrey;
        }
        .auto-style13 {
            margin-left: 2px;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            font-size: small;
        }
        .auto-style16 {
            margin-top: 118px;
        }
        .auto-style17 {
            font-weight: bold;
        }
        .auto-style19 {
            width: 100%;
        }
        .auto-style20 {
            text-align: left;
        }
        .button1 {
          background-color: white; 
          color: black; 
          border: 2px solid #f44336;
        }
        
        .button1:hover {
          background-color: #2A4D69;
          color: white;
        }
        .button2 {
          background-color: white; 
          color: black; 
          border: 2px solid #f44336;
        }
        
        .button2:hover {
          background-color: #2A4D69;
          color: white;
        }
        .auto-style18 {
            font-weight: bold;
            margin-left: 0px;
        }
        </style>
    <title>
         
    </title>
</head>
   
<body style="height: 530px">
    <form id="form1" runat="server">
    <table class="auto-style3">
   <tr> 
     <td style="border-width:1px; border-color:Black ; border-style :groove ;" class="auto-style2">
         <div class="bgcolor">
         <div class="auto-style4">
             <strong>
             <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Mahendra Medics"></asp:Label>
             </strong>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em>
             <asp:Label ID="lbllogin0" runat="server" CssClass="auto-style15" Text="Making Health Care Better Together... "></asp:Label>
             </em></strong>
             <br />
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Image ID="Image1" runat="server" Height="352px" ImageUrl="~/image/3.png" Width="362px" CssClass="auto-style16" />
             <br />
             <br />
             <br />
         </div>
             </div>
     </td>
     <td style="border-width:1px; border-color:Black ; border-style :groove ;" class="auto-style1">
         <div>
         <strong>
             <asp:Image ID="Image2" runat="server" Height="141px" ImageUrl="~/image/2.png" CssClass="auto-style13" Width="143px" />
             <br />
         </strong>
         </div>
         <strong>
         <asp:Label ID="lbllogin" runat="server" BorderColor="#009999" CssClass="auto-style14" ForeColor="#009999" Text=" Agent Login"></asp:Label>
         </strong>
         <br />
         <br />
         <strong>
        
             <br />
                 <div>
             <table class="auto-style19">
                 <tr>
                     <td>
         <strong>
         <asp:Label ID="lblEI" runat="server" CssClass="auto-style6" Font-Bold="True" Text="Agent ID :" ForeColor="Black"></asp:Label>
         </strong>
         
                     </td>
                     <td class="auto-style20">
         <strong>
         <asp:TextBox ID="txtUN" runat="server" CssClass="auto-style13" Height="23px" Width="278px" BorderStyle="Solid"></asp:TextBox>
         </strong>
         
                     </td>
                 </tr>
                 <tr>
                     <td>
         <strong>
         <asp:Label ID="lblpwd" runat="server" CssClass="auto-style6" Text="Password :"></asp:Label>
         </strong>
                     </td>
                     <td class="auto-style20"><strong>
             <asp:TextBox ID="txtpas" runat="server" CssClass="auto-style7" Height="23px" TextMode="Password" Width="278px" BorderStyle="Solid"></asp:TextBox>
         </strong>
                     </td>
                 </tr>
             </table>
                    
             <br />
                  </div>
         </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button class="button2" ID="btnback" runat="server" BorderStyle="Solid" CssClass="auto-style17" Height="40px"  Font-Size="Medium" Text="Back" Width="171px" OnClick="btnback_Click" BorderColor="#2A4D69" />
         <strong>&nbsp;<asp:Button class="button1" ID="btnlogin" runat="server" BorderStyle="Solid" CssClass="auto-style18" Font-Bold="True" Font-Size="Medium" Height="40px"  Text="Login" Width="171px" BorderColor="#2A4D69" OnClick="btnlogin_Click" />
             <br />
         <asp:Label ID="lblAg" runat="server"></asp:Label>
             <br />
        
         </strong>
     
     </td>
    </tr></table>
    </form>
    </body>
</html>
