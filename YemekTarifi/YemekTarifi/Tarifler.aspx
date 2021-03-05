<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifi.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Text="+" Width="44px" OnClick="Button1_Click" style="font-weight: bold; font-size: x-large" />
                    </strong>
                </td>

                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" OnClick="Button2_Click" style="font-size: x-large" Text="-" Width="37px" />
                    </strong>
                </td>
                <td class="auto-style13"><strong>Onaysız Tarif Listesi</strong></td>

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
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tarif_Ad") %>'></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarif_Id") %>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/resim/icons/suggest.png" Width="44px" CssClass="auto-style10" style="margin-left: 251px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </strong>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Text="+" Width="44px"  style="font-weight: bold; font-size: x-large" OnClick="Button3_Click" />
                    </strong>
                </td>

                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style18"  style="font-size: x-large" Text="-" Width="37px" OnClick="Button4_Click" />
                    </strong>
                </td>
                <td class="auto-style13"><strong>Onaylı Tarif Listesi</strong></td>

            </tr>
        </table>
    </asp:Panel>


    <strong>


        <br />
    </strong>
    <asp:Panel ID="Panel4" runat="server">
        <strong>
            <asp:DataList ID="DataList2" runat="server" Width="448px">
                <ItemTemplate>
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style14">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tarif_Ad") %>'></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarif_Id") %>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/resim/icons/suggest.png" Width="44px" CssClass="auto-style10" style="margin-left: 251px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </strong>
        <br />
    </asp:Panel>
</asp:Content>
