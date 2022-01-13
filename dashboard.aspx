<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="test_1.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <style>
           body {
          margin: 0;
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
                   }
           
            .auto-style5 {
                font-size: xx-large;
            }
            .auto-style6 {
                width: 100%;
                height: 114%;
                
            }
            .auto-style7 {
                height: 542px;
            }
            .auto-style9 {
                margin-left: 24px;
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
            }
            .auto-style16 {
                text-align: left;
          }
          </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            &nbsp;&nbsp;&nbsp;
            <ul class="auto-style1">
  <li class="auto-style15">
      <asp:Image ID="Image1" runat="server" CssClass="auto-style9" Height="221px" ImageUrl="~/image/pharmacy_100px.png" Width="291px" /> </li>
        <li class="auto-style14">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="Agent Dashboard"></asp:Label>
            </strong><a class="active" href="#Dashboard" style="height: 47px; margin-top: 0px">
            <div class="auto-style16">
                <asp:Image ID="Image3" runat="server" Height="36px" ImageUrl="~/image/dashbord.png" Width="59px" />
                <strong><span class="auto-style13">Dashboard</span></strong></div>
            </a> </li>
  <li class="auto-style16"><a href="AG_AddMed.aspx" class="auto-style10"><strong>Add Medicine</strong></a></li>
  <li class="auto-style16"><a href="#View Medicine" class="auto-style11"><strong>View Medicine</strong></a><a href="#Modify Medicine" class="auto-style10"><strong> Update Medicine</strong></a></li>
   <li class="auto-style16"><a href="#Medicine Validity Check" class="auto-style10"><strong>Medicine Validity Check</strong></a></li>
  <li class="auto-style16"><a href="#View Orders" class="auto-style12"><strong>View Orders</strong></a></li>
  <li class="auto-style16"><a href="#View Complain " class="auto-style12"><strong>View Complain/Feedback</strong></a></li>
  <li class="auto-style16"><a href="#Logout"><strong>Logout</strong></a></li>

</ul>
        <div style="margin-left:25%;padding:1px 16px;" class="auto-style7">
  <div class="auto-style3">
      <strong>
      <asp:Label ID="lbldash" runat="server" Text="DashBoard" CssClass="auto-style5"></asp:Label>
      </strong>
    </div>
 <div class="auto-style6">

     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
 </div>
</div>
    </form>
</body>
</html>
