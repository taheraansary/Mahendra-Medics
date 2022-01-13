<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="USHP2.aspx.cs" Inherits="test_1.USHP2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
         
         .active {
            background-color:lawngreen;          
         }
         
         
         .auto-style1 {
             text-align: center;
         }
          ul {
          list-style-type: none;
          margin: 0;
          padding: 0;
          overflow: hidden;
          background-color: #333;
        }
        
        li {
          float: left;
        }
        
        li a {
          display: block;
          color: white;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
        }
        
        li a:hover:not(.active) {
          background-color:darkgreen;
        }
        
        .backimg{
            background-image:url(image/UserBg.jpg);
            background-repeat:no-repeat ;
            background-attachment:inherit;
            background-size:100% 100%;
        }
        
         .auto-style2 {
             font-size: xx-large;
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
         .auto-style3 {
             width: 100%;
         }
         .auto-style4 {
             text-align: right;
         }
      </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="backimg">
            <div  class="auto-style1">                
                    
                        <asp:Label ID="Label1" runat="server" Text="Mahendra Medics" CssClass="auto-style2" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                    <h2 style="color:blue;">Medicine at door step</h2>

                </div>
            <div>
         
                <strong>No&nbsp; Of Products In Your Cart
                <asp:Label ID="lbNProd" runat="server" Font-Size="Large" Text="Label"></asp:Label>
&nbsp;&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx" ForeColor="#0099CC">Show Cart</asp:HyperLink>
                </strong>
         
            </div>
            <div>
                <ul>
                   <li><a href="UserHP.aspx">Home</a></li>
                  <li><a href = "#Category">Category</a></li>
                     <li><a href="#contact">Contact us</a></li>
                    <li><a href="#">Order</a></li>
                  <li style="float:right"><a href="Login.aspx">Login</a></li>
                  <li style="float:right"><a href="Reg.aspx"><strong>Register</strong></a></li>
            </ul>
        </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="auto-style1">
                <asp:TextBox ID="txtsearch" runat="server" Height="33px" TextMode="Search" Width="453px"></asp:TextBox>
                <asp:Button class="button button1" ID="btnsearch" runat="server" Text="Search" Font-Bold="True"  Height="46px" Width="145px"  />

                <br />
                <br />


            </div>
           <p>if you dont find the medicine in the search. You can order the medicine after the registration in navigation order tab.</p> 
        </div>
        </div>
    </form>
</body>
</html>
