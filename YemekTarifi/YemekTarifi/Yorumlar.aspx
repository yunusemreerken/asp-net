<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            background-color: #748B8A;
        }

        .auto-style6 {
            text-align: right;
        }

        .auto-style7 {
            width: 191px;
        }

        .auto-style8 {
            width: 100%;
            height: 30px;
        }

        .auto-style9 {
            width: 56px;
        }

        .auto-style12 {
            width: 45px;
        }

        .auto-style13 {
            font-size: large;
        }
        .auto-style16 {
            font-size: x-large;
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Text="+" Width="37px" OnClick="Button1_Click" />
                    </strong>
                </td>

                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16"  Text="-" Width="37px" OnClick="Button2_Click" />
                    </strong>
                </td>
                <td class="auto-style13"><strong>Onaylanan Yorumlar Listesi</strong></td>

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
                            <td class="auto-style7">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Yorum_AdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/resim/icons/del.png" Width="37px" />
                            </td>
                            <td class="auto-style6">
                               <a href="YorumDetay.aspx?Yorum_id=<%#Eval("Yorum_Id") %>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/resim/icons/update.png" Width="38px" /></a>
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Text="+" Width="37px" OnClick="Button3_Click" />
                    </strong>
                </td>

                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style16"  Text="-" Width="37px" OnClick="Button4_Click"  />
                    </strong>
                </td>
                <td class="auto-style13"><strong>Onaysız Yorumlar Listesi</strong></td>

            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <strong>
            <asp:DataList ID="DataList2" runat="server" Width="448px">
                <ItemTemplate>
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Yorum_AdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resim/icons/del.png" Width="37px" />
                            </td>
                            <td class="auto-style6">
                                <a href="YorumDetay.aspx?Yorum_id=<%#Eval("Yorum_Id") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resim/icons/update.png" Width="38px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </strong>
        <br />
    </asp:Panel>
</asp:Content>
