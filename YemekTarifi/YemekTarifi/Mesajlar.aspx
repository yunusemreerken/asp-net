<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifi.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            margin-left: 173px;
            width: 1px;
        }
        .auto-style10 {
            margin-left: 118px;
        }
        .auto-style12 {
            color: #009900;
            width: 119px;
        }
        .auto-style13 {
            color: #009900;
            width: 122px;
        }
        .auto-style14 {
            color: #009900;
            width: 260px;
        }
        .auto-style15 {
            font-size: xx-large;
            width: 169px;
        }
        .auto-style17 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style18 {
            width: 100%;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Text="+" Width="44px" OnClick="Button1_Click"  />
                    </strong>
                </td>

                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" OnClick="Button2_Click" Text="-" Width="37px" />
                </td>
                <td class="auto-style13"><strong>Mesajlar Listesi</strong></td>

            </tr>
        </table>
    </asp:Panel>


    <strong>


        <br />
    </strong>
    <asp:Panel ID="Panel2" runat="server">
        <strong>
            <asp:DataList ID="DataList1" runat="server" Width="448px">
                <ItemTemplate>
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style14">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <a href="MesajDetay.aspx?Mesaj_id=<%#Eval("Mesajid") %>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/resim/icons/read.png" Width="44px" CssClass="auto-style10" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </strong>
        <br />
    </asp:Panel>
</asp:Content>
