﻿<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TrainManageWeb.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <table align="center" class="style1" style="text-align: left;">
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="15pt" Text="Đăng nhập vào hệ thống">
                </asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Text="Tên tài khoản:" Font-Bold="True">
                </asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtuser" runat="server" TabIndex="1" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label3" runat="server" Text="Mật khẩu: " Font-Bold="True" ></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtpass" runat="server" TabIndex="2" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
            <td>
                <input type="checkbox" id="pass" onclick="showpass(this);" />
                <script type="text/javascript">
                    function showpass(check_box) {
                        var spass = document.getElementById("txtpass");
                        if (check_box.checked)
                            spass.setAttribute("type", "text");
                        else
                            spass.setAttribute("type", "password");
                    }
                </script>
                Hiển thị mật khẩu
            </td>

        </tr>
        <tr>
            <td>&nbsp;
            </td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" onclick="btnLogin_Click" TabIndex="3" Height="30px" Width="100px"/>
            </td>
        </tr>
    </table>
</asp:Content>
