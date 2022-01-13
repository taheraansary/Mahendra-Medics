<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="test_1.Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <style type="text/css">
        .auto-style1 {
            width: 8px;
        }
        .auto-style2 {
            width: 228px;
        }
        .auto-style4 {
            
            text-align: center;
        }
        .backimg {
            background-image:url(image/Regbg.jpg);
            background-repeat: no-repeat;
            background-attachment:fixed;
            background-size:cover;
             border:3px solid black;
            padding: 50px;
        
    
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
        .auto-style5 {
            text-align: center;
            width: 720px;
            height: 744px;
        }
        .auto-style6 {
            width: 696px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            text-align: justify;
        }
        .auto-style11 {
            width: 228px;
            text-align: left;
        }
    </style>
    <title></title>
</head>
<body class="backimg">
    <form id="form1" runat="server">
        <div align="center" >           
           <table class="auto-style5">
                <tr>
                    <td colspan="2" align="center"><h2 class="auto-style6">Registration Form</h2></td>
                </tr>
                <tr>
                    <td style="width:50%"><b>First Name:</b></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtFN" runat="server" Width="257px" Height="23px" CausesValidation="True" BorderStyle="Solid"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvFN" runat="server" ControlToValidate="txtFN" ErrorMessage="Please! Enter Your First Name." Font-Bold="True" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Last Name:</b></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtLN" runat="server" Width="257px" Height="23px" CausesValidation="True" BorderStyle="Solid" Font-Bold="False"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvEI" runat="server" ControlToValidate="txtEI" ErrorMessage="Please! Enter Your Last Name" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Email ID:</b></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEI" runat="server" Width="257px" Height="23px" CausesValidation="True" TextMode="Email" BorderStyle="Solid" Font-Bold="False"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rqvEI" runat="server" ControlToValidate="txtEI" ErrorMessage="Please Enter Your Email Id" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblbirth" runat="server" Text="Date of Birth :" Font-Bold="True"></asp:Label></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" BorderStyle="Solid" CausesValidation="True" CssClass="auto-style7" Height="23px" Width="257px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rqvDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Please! Enter Your Date Of Birth" Font-Bold="True" Font-Italic="False" ForeColor="Red" SetFocusOnError="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Gender:</b></td>
                    <td class="auto-style11">
                        <div class="auto-style9">
                            <asp:RadioButton ID="rdmale" runat="server" Text="Male" ValidationGroup="Gender" />
                            <asp:RadioButton ID="rdfemale" runat="server" Text="Female" ValidationGroup="Gender" />
                            <asp:RadioButton ID="rdothers" runat="server" Text="Others" ValidationGroup="Gender" />
                        </div>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Address:</b></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtAD" runat="server" Width="257px" TextMode="MultiLine" BorderStyle="Solid" CausesValidation="True" Font-Bold="True" Height="23px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rqvAD" runat="server" ControlToValidate="txtAD" ErrorMessage="Please! Enter Your Address" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Area Confirmation:</b></td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlAC" runat="server" Width="257px" CausesValidation="True" Font-Bold="False" Height="23px">
                            <asp:ListItem>Select Area</asp:ListItem>
                            <asp:ListItem>Mamledar Wadi</asp:ListItem>
                            <asp:ListItem>Liberty Garden</asp:ListItem>
                            <asp:ListItem>Orlem</asp:ListItem>
                            <asp:ListItem>Adarsh Dairy</asp:ListItem>
                            <asp:ListItem>Gate No. 01</asp:ListItem>
                            <asp:ListItem>Gate No. 03</asp:ListItem>
                            <asp:ListItem>Gate No. 05</asp:ListItem>
                            <asp:ListItem>Gate No. 06</asp:ListItem>
                            <asp:ListItem>Gate No. 07</asp:ListItem>
                            <asp:ListItem>Gate No. 08</asp:ListItem>
                            <asp:ListItem>Jankalyan Nagar</asp:ListItem>
                            <asp:ListItem>Mhada Colony</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="rqvAC" runat="server" ControlToValidate="ddlAC" ErrorMessage="Please Enter Your Area. If Your Area Does Not Fall Under The Category Kindly Contact Us" Font-Bold="True" Font-Italic="False" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Phone No.:</b></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPN" runat="server" Width="257px" Height="23px" TextMode="Phone" BorderStyle="Solid"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rqvPN" runat="server" ControlToValidate="txtPN" ErrorMessage="Please! Enter Your Phone Number" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Password:</b></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPwd" runat="server" Width="257px" Height="23px" TextMode="Password" BorderStyle="Solid"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please! Enter the password" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Confirm Password:</b></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtCPwd" runat="server" Width="257px" Height="23px" TextMode="Password" BorderStyle="Solid"></asp:TextBox>
                        <br />
                        <asp:CompareValidator ID="cvCPwd" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCPwd" ErrorMessage="Please! Check your Password" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td  class="auto-style4">
                        <asp:Button class="button3" ID="btnBack" runat="server" Text="Back" Font-Bold="True" Font-Size="Large" Height="35px" Width="170px" OnClick="btnBack_Click" CausesValidation="False" /></td> 
                    <td class="auto-style4"><asp:Button class="button button1" ID="btnReg" runat="server" Text="Register" Font-Bold="True" Font-Size="Large" Height="35px" Width="170px" OnClick="btnReg_Click" />
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
