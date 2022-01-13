<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AAgent.aspx.cs" Inherits="test_1.AAgent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
           body {
          margin: 0;
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
          background-color:  #4b86b4;
          color: white;
        }
         .button4 {
          background-color: white; 
          color: black; 
          border: 2px solid #f44336;
        }
        
        .button4:hover {
          background-color: #2A4D69;
          color: white;
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
            height: 375px;
            width: 1002px;
        }
        .auto-style18 {
            text-align: center;
            height: 70px;
        }
        .auto-style19 {
            text-align: center;
        }
        .auto-style20 {
            height: 93px;
        }
        .auto-style21 {
            height: 93px;
            text-align: center;
        }
        .auto-style22 {
            width: 243px;
        }
        .auto-style23 {
            height: 93px;
            width: 243px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                           <ul class="auto-style1">
  <li class="auto-style15">
      <asp:Image class="imagealign" ID="Image1" runat="server" Height="196px" ImageUrl="~/image/admin3.png" Width="208px" /> </li>
        <li class="auto-style19">
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
      <asp:Label ID="lblAAgent" runat="server" Text="Add Agent" CssClass="auto-style5"></asp:Label>
      </strong>
    </div>
 <div class="auto-style6">
     <table align="center" class="auto-style17">
         <tr>
             <th class="auto-style22"> 
                 <asp:Label ID="AgID" runat="server" BackColor="#CCFFFF" Text="Agent ID :"></asp:Label>
             </th>
             <td>
                 <asp:TextBox ID="txtAID" runat="server" TextMode="Number" Font-Bold="True" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox></td>
             <th class="auto-style22">
                 <asp:Label ID="AgFN" runat="server" BackColor="#CCFFFF" Text="Agent Full Name :"></asp:Label>
             </th>
             <td>
                 <asp:TextBox ID="txtFN" runat="server" Font-Bold="True" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <th class="auto-style22">
                 <asp:Label ID="AgDOB" runat="server" BackColor="#CCFFFF" Text="Date Of Birth :"></asp:Label>
&nbsp;</th>
             <td>
                 <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox></td>
             <th class="auto-style22">
                 <asp:Label ID="AgEID" runat="server" BackColor="#CCFFFF" Text="Email ID :"></asp:Label>
             </th>
             <td> <asp:TextBox ID="txtEID" runat="server" TextMode="Email" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox></td>
         </tr>
         <tr>
             <th class="auto-style23"> 
                 <asp:Label ID="AgMNo" runat="server" BackColor="#CCFFFF" Text="Mobile No :"></asp:Label>
             </th>
             <td class="auto-style20">
                 <asp:TextBox ID="txtMNo" runat="server" TextMode="Phone" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox></td>
             <th class="auto-style23">
                 <asp:Label ID="AgAL" runat="server" BackColor="#CCFFFF" Text="Alternate No :"></asp:Label>
&nbsp;</th>
             <td class="auto-style20">
                 <asp:TextBox ID="txtAMN" runat="server" TextMode="Phone" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <th class="auto-style23"> 
                 &nbsp;</th>
             <td class="auto-style21">
                 <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="AgPwd" runat="server" BackColor="#CCFFFF" Text="Password :"></asp:Label>
                 </strong></td>
             <th class="auto-style23">
                 <asp:TextBox ID="txtPwd" runat="server" Font-Bold="True" ForeColor="Black" Height="23px" Width="257px" BorderStyle="Solid"></asp:TextBox>
             </th>
             <td class="auto-style20">
                 &nbsp;</td>
         </tr>
                
     </table>
     <div class="auto-style18">
         <asp:Button  class="button1" ID="btnADAgnt" runat="server" Text="Add Agent" Font-Bold="True" Height="45px" BorderStyle="Solid" OnClick="btnADAgnt_Click" />&nbsp;
         <asp:Button class="button4" ID="btnVA" runat="server" Text="View Agent" Font-Bold="True" Height="45px" OnClick="btnVA_Click" BorderStyle="Solid" BorderColor="#2A4D69" />&nbsp;
         <asp:Button  class="button3" ID="btnAdmin" runat="server" Text="View Admin" Font-Bold="True" Height="45px" OnClick="btnAdmin_Click" BorderStyle="Solid" BorderColor="#4B86B4" />
         <br />
         <asp:Label ID="lblAA" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
         <br />
         <asp:GridView ID="gvVA" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
             <Columns>
                 <asp:BoundField DataField="AgID" HeaderText="AgID" SortExpression="AgID" />
                 <asp:BoundField DataField="FullN" HeaderText="FullN" SortExpression="FullN" />
                 <asp:BoundField DataField="Mno" HeaderText="Mno" SortExpression="Mno" />
                 <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                 <asp:BoundField DataField="EID" HeaderText="EID" SortExpression="EID" />
                 <asp:BoundField DataField="AltMno" HeaderText="AltMno" SortExpression="AltMno" />
                 <asp:BoundField DataField="PSWD" HeaderText="PSWD" SortExpression="PSWD" />
             </Columns>
         </asp:GridView>
         
     
         
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trialCS %>" SelectCommand="SELECT DISTINCT [AgID], [FullN], [Mno], [DOB], [EID], [AltMno], [PSWD] FROM [AAgent]"></asp:SqlDataSource>
         
     
         
         <br />
         <asp:GridView ID="gvA" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
             <Columns>
                 <asp:BoundField DataField="FulNm" HeaderText="FulNm" SortExpression="FulNm" />
                 <asp:BoundField DataField="Mno" HeaderText="Mno" SortExpression="Mno" />
                 <asp:BoundField DataField="EID" HeaderText="EID" SortExpression="EID" />
             </Columns>
         </asp:GridView>
         
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:trialCS %>" SelectCommand="SELECT DISTINCT [FulNm], [Mno], [EID] FROM [P]"></asp:SqlDataSource>
         
     </div>

     
 </div>
            </div>
        </div>
    </form>
</body>
</html>
