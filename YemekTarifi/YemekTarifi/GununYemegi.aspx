<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-right: 0px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:DataList ID="DataList2" runat="server" Width="450px" >
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" style="font-size: large; font-weight: 700" Text='<%# Eval("Yemek_Ad") %>'></asp:Label>
                    <table class="auto-style1">
                        <tr>
                            <td style="font-size: 14px"><strong>Malzemeler:</strong>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yemek_Malzeme") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>Tarif: </strong>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Yemek_Tarif") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="148px" style="text-align: center" Width="415px" ImageUrl='<%# Eval("Yemek_Resim") %>' CssClass="auto-style4" />
                                <table class="auto-style1">
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>Puan : </strong>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Yemek_Puan") %>'></asp:Label>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <table class="auto-style1">
                        <tr>
                            <td><strong>Tarih: </strong>
                                <asp:Label ID="Label8" runat="server" style="font-style: italic" Text='<%# Eval("Yemek_Tarih") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>


