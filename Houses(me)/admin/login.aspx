<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Houses_me_.admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 730px;
            background-color:#318ce7;
            margin:0px;
            padding-top:20px;
            padding-left:200px;
        }
        .auto-style2 {
            height: 378px;
            background-color:white;
             width:753px;
            margin-top:100px;
            margin-left:100px;
        }
        .auto-style3 {
            width: 100%;
            height: 370px;
        }
        .auto-style4 {
            width: 270px;
        }
        .auto-style5 {
            width: 270px;
            height: 41px;
        }
        .auto-style6 {
            height: 41px;
        }
        .auto-style7 {
            width: 254px;
            height: 325px;
            margin-top: 0px;
        }
        .auto-style8 {
            width: 270px;
            text-align: center;
        }
        .auto-style9 {
            height: 41px;
            width: 502px;
        }
        .auto-style10 {
            width: 502px;
        }
        .auto-style11 {
            height: 332px;
            text-align: center;
        }
        .auto-style12 {
            color: #0000FF;
            font-size: large;
        }
        .auto-style13 {
            color: #000000;
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1">
                <div class="auto-style2">
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style5"></td>
                            <td class="auto-style9"></td>
                            <td class="auto-style6"></td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <img alt="lock" class="auto-style7" src="css-images/login-icon.png" /></td>
                            <td class="auto-style10">
                                <div class="auto-style11">
                                    <br />
&nbsp; <span class="auto-style12"><strong>Login As Admin User<br />
                                    <br />
                                    <br />
                                    </strong>
                                    <br />
                                    <asp:TextBox ID="txtemail" runat="server" Height="27px" Width="161px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="txtpassword" runat="server" Height="27px" Width="157px" TextMode="Password"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="txtError" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" BorderColor="Blue" BorderStyle="Double" Font-Bold="True" Font-Size="Large" ForeColor="Blue" Height="28px" OnClick="Button1_Click" Text="Login" Width="159px" />
                                    <br />
                                    <br />
                                    </span><span class="auto-style13"><strong>Forget your password?</strong></span><span class="auto-style12"><br />
                                    </span>
                                </div>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
