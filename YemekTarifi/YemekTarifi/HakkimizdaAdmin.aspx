<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifi.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 43px;
        }
    .auto-style11 {
        text-align: center;
    }
    .auto-style10 {
        background-color: #4CAF50;
        color: white;
        border-radius: 4px;
        cursor: pointer;
        font-size: medium;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Text="+" Width="44px"  style="font-weight: bold; font-size: x-large" OnClick="Button1_Click" />
                    </strong>
                </td>

                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18"  style="font-size: x-large; font-weight: bold;" Text="-" Width="37px" OnClick="Button2_Click" />
                    </strong>
                </td>
                <td class="auto-style13"><strong>Hakkımızda</strong></td>

            </tr>
        </table>
    </asp:Panel>


    <strong>


        <br />
    </strong>
    <asp:Panel ID="Panel2" runat="server">
        <em>
        <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
        </em>
        <br />
        <table class="auto-style3">
            <tr>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style10" OnClick="Button3_Click" Text="Güncelle" Width="99px" />
                    </strong></td>
            </tr>
        </table>
        <br />
    </asp:Panel>

</asp:Content>
