<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifi.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 119px;
    }
    .auto-style10 {
        width: 121px;
    }
    .auto-style11 {
        width: 548px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Text="+" Width="37px" OnClick="Button1_Click"   />
                    </strong>
                </td>

                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18"  Text="-" Width="37px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style13"><strong>Yemek  Listesi</strong></td>

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
                            <td class="auto-style11">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Yemek_Ad") %>'></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemek_Id") %>&kategoriid=<%#Eval("Kategori_Id")%>"><asp:Image ID="Image5" runat="server" Height="30px"
                                    ImageUrl="~/resim/icons/chekbox.png" Width="44px" CssClass="auto-style10" style="margin-left: 239px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </strong>
        <br />
    </asp:Panel>
</asp:Content>
