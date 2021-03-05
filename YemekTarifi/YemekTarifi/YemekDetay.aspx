<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: xx-large;
            color: #00FFFF;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            color: #CCCCCC;
            font-size: small;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            margin-left: 40px;
        }
        .auto-style10 {
            margin-left: 61px;
            font-weight: bold;
        }
        .auto-style11 {
            background-color: #eea4a4;
        }
        .auto-style12 {
            text-align: right;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong><em>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text='<%# Eval("Yemek_Ad") %>'></asp:Label>
    </em>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text='<%# Eval("Yorum_AdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("Yorum_Icerik") %>'></asp:Label>
                        <em>&nbsp;&nbsp; -&nbsp;
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text='<%# Eval("Yorum_Tarih") %>'></asp:Label>
                        </em></td>
                </tr>
                <tr>
                    <td style="border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
        <div class="auto-style11">Yorum yapma paneli<br />
    </div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style5">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </strong>
                <tr>
                    <td class="auto-style12"><strong>Ad Soyad:</strong></td>
                    <strong>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    </td>
                    </strong>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>Mail:</strong></td>
                    <td class="auto-style9">&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>Yorumunuz:</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="204px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style9">
                        <strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="Yorum Yap" Width="150px" />
                        </strong>
                    </td>
                </tr>
            </table>
    </asp:Panel>
    </asp:Content>
