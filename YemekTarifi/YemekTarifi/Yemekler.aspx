<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifi.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            background-color: #748B8A;
        }

        .auto-style9 {
            width: 56px;
        }

        .auto-style16 {
            font-size: x-large;
            font-weight: bold;
        }

        .auto-style12 {
            width: 45px;
        }

        .auto-style13 {
            font-size: large;
        }

        .auto-style8 {
            width: 100%;
            height: 30px;
        }

        .auto-style7 {
            width: 191px;
        }

        .auto-style6 {
            text-align: right;
        }
        .auto-style17 {
            height: 30px;
        }
        .auto-style18 {
            height: 23px;
        }
        .auto-style19 {
            font-size: medium;
            color: #CCFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Text="+" Width="37px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Text="-" Width="37px" />
                </strong></td>
                <td class="auto-style13"><strong>Yemek Listesi</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style5">
        <asp:DataList ID="DataList1" runat="server" Width="448px" >
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Yemek_Ad") %>' CssClass="auto-style19"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemek_Id") %>&islem=sil">
                                <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/resim/icons/del.png" Width="37px" /></a>
                        </td>
                        <td class="auto-style6">
                            <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemek_Id") %>&kategoriid=<%#Eval("Kategori_Id")%>">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/resim/icons/update.png" Width="38px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
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
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style16" Text="-" Width="37px" OnClick="Button4_Click" />
                    </strong>
                </td>
                <td class="auto-style13"><strong>Yemek Ekleme</strong></td>

            </tr>
        </table>
    </asp:Panel>

    <br />
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style14"><strong>Yemek Adı:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Yemek Malzeme:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="300px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarif:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="300px" Height="150px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Resim</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td><strong>Yemeğin Kategorisi:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="307px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style15" Text="Ekle" Width="146px" OnClick="BtnEkle_Click" style="margin-left: 65px" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>


</asp:Content>
