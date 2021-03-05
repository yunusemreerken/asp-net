<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifi.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style9 {
            margin-left: 40px;
        }
        .auto-style10 {
            margin-left: 61px;
            font-weight: bold;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            text-align: right;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </strong>
            <tr>
                <td class="auto-style12">Tarif Ad<strong>:</strong></td>
                <strong>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
                </strong>
            </tr>
            <tr>
                <td class="auto-style12">Tarif Malzemeler<strong>:</strong></td>
                <td class="auto-style9">&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Yapılışı:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="204px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Resim:</td>
                <td class="auto-style9">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Öneren:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Mail:</td>
                <td class="auto-style9"><strong>
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style12">Kategori:</td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="204px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10"  Text="Onayla" Width="150px" OnClick="Button1_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
