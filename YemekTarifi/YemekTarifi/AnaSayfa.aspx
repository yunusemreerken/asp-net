<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifi.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }

        .auto-style5 {
            font-size: x-large;
        }

        .auto-style6 {
            font-size: large;
        }

        .auto-style7 {
            font-size: large;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td style="background-color: #FF3300"><strong>

                        
                        <a href="YemekDetay.aspx?yemekid=<%# Eval("Yemek_Id") %>"><asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text='<%# Eval("Yemek_Ad") %>'></asp:Label>
                        </a>    

                    </strong>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style6"><strong>Malzemeler :</strong></span>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yemek_Malzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style6"><strong>Yemek Tarifi:</strong></span>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Yemek_Tarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style6">Eklenme Tarihi:</span></strong> <strong><em>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text='<%# Eval("Yemek_Tarih") %>'></asp:Label>
                    </em></strong>&nbsp;- <strong><span class="auto-style5">Puan:</span></strong> <strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style5" Text='<%# Eval("Yemek_Puan") %>'></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: 6px; border-bottom-color: #003300">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
