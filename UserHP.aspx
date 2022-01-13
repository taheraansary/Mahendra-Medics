<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHP.aspx.cs" Inherits="test_1.UserHP" %>

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
                </strong>
         
            </div>
            <div>
                <ul>
                   <li><a href="UserHP.aspx">Home</a></li>
                  <li><a href = "#Category">Category</a></li>
                     <li><a href="#contact">Contact us</a></li>
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
           <p>if you dont find the medicine in the search. You can order the medicine after the registration in order button.</p> 
        </div>

        </div>
        <div>
            </div>
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
     <%--       <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="60px" CellPadding="3" CellSpacing="2" CssClass="auto-style4" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" Width="893px">
                <FooterStyle BackColor="#F7DFB5" BorderWidth="60px" ForeColor="#8C4510" Width="60px" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
              //  <ItemTemplate>--%>
                <%--    <table class="auto-style3">
                        <tr>
                            <td class="auto-style1">Medicine ID
                //               <asp:Label ID="Label2" runat="server" Text='<%# Eval("medicineid") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("medicinename") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("medicineimage") %>' Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">MRP
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("mrp") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Quantity
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="addtocart" Height="40px" ImageUrl="~/image/addtocart.png" CommandArgument='<%# Eval("medicineid") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
                </div>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trialCS3 %>" SelectCommand="SELECT * FROM [Meddetails]"></asp:SqlDataSource>--%>

        </div>
    </form>
</body>
</html>
