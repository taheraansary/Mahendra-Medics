<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VCheck.aspx.cs" Inherits="test_1.VCheck" %>

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
            .auto-style15 {
                height: 196px;
            text-align: center;
        }
            .auto-style16 {
                text-align: left;
          }
          .auto-style17 {
            text-align: center;
        }
          </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

         <ul class="auto-style1">
  <li class="auto-style15">
      <asp:Image class="imagealign" ID="Image1" runat="server" Height="196px" ImageUrl="~/image/pharmacy_100px.png" Width="208px" /> </li>
        <li class="auto-style17">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="Agent Dashboard"></asp:Label>
            </strong><a class="active" href="AGdashboard.aspx" style="height: 47px; margin-top: 0px">
            <div class="auto-style16">
                <asp:Image ID="Image3" runat="server" Height="36px" ImageUrl="~/image/dashbord.png" Width="59px" />
                <strong><span class="auto-style13">Dashboard</span></strong></div>
            </a> </li>
  <li class="auto-style16"><a href="AG_AddMed.aspx" class="auto-style10"><strong>Add Medicine</strong></a></li>
  <li class="auto-style16"><a href="VCheck.aspx" class="auto-style11"><strong>View Medicine</strong></a></li>
  <li class="auto-style16"><a href="AG_UpdMed.aspx" class="auto-style10"><strong> Update Medicine</strong></a></li>
  <li class="auto-style16"><a href="VO.aspx" class="auto-style12"><strong>View Orders</strong></a></li>
  <li class="auto-style16"><a href="ACF.aspx" class="auto-style12"><strong>View Complain/Feedback</strong></a></li>
  <li class="auto-style16"><a href="AGlogin.aspx"><strong>Logout</strong></a></li>

</ul>
        <div style="margin-left:25%;padding:1px 16px;" class="auto-style7">
  <div class="auto-style3">
      <strong>
      <asp:Label ID="lbldash" runat="server" Text="View Medicine" CssClass="auto-style5"></asp:Label>
      </strong>
    </div>
 <div class="auto-style6">

     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
 
        <div align="center">
            <asp:Button ID="btnVAM" runat="server" Text="All Medicine" OnClick="btnVAM_Click" /><hr />
            <asp:Button ID="btnVM" runat="server" Text="Valid Medicine" />     
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
            <asp:Button ID="btnEM" runat="server" Text="Expired Medicine"/>
            

            <br />
            <asp:GridView ID="gvAm" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </div>
     </div>
        </div>
    </form>
</body>
</html>
