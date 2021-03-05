<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifi.Kategoriler" %>

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
        .auto-style14 {
            font-size: medium;
            text-align: right;
        }
        .auto-style15 {
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" OnClick="Button1_Click" Text="+" Width="37px" />
                    </strong>
                </td>

                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" OnClick="Button2_Click" Text="-" Width="37px" />
                    </strong>
                </td>
                <td class="auto-style13"><strong>Kategori Listesi</strong></td>

            </tr>
        </table>
    </asp:Panel>


    <strong>


        <br />
    </strong>
    <asp:Panel ID="Panel2" runat="server">
        <strong>
            <asp:DataList ID="DataList1" runat="server" Width="448px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Kategori_Ad") %>'></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategori_Id") %>&islem=sil"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/resim/icons/del.png" Width="37px" /></a>
                            </td>
                            <td class="auto-style6">
                                <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategori_Id") %>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/resim/icons/update.png" Width="38px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </strong>
        <br />
    </asp:Panel>


    <br />
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16"  Text="+" Width="37px" OnClick="Button3_Click1" />
                    </strong>
                </td>

                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style16"  Text="-" Width="37px" OnClick="Button4_Click" />
                    </strong>
                </td>
                <td class="auto-style13"><strong>Kategori Ekleme</strong></td>

            </tr>
        </table>
    </asp:Panel>


    <br />
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style3">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Kategori Adı:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Kategori İkon:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style15" Text="Ekle" Width="146px"  />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>


</asp:Content>
