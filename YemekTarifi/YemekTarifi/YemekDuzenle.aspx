<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifi.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: large;
        }
    .auto-style10 {
        background-color: #4CAF50;
        color: white;
        border-radius: 4px;
        cursor: pointer;
        font-weight: bold;
        margin-left: 0px;
    }
    .auto-style11 {
        background-color: #4CAF50;
        color: white;
        border-radius: 4px;
        cursor: pointer;
        font-weight: bold;
    }
        .auto-style12 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style3">
            <tr>

                <td class="auto-style9">
                    <strong>Yemek Güncelle</strong></td>

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
                <td class="auto-style12"><strong>Yemeğin resmi:</strong></td>
                <td class="auto-style12">
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style10" Text="Güncelle" Width="124px" OnClick="BtnGuncelle_Click1" />
                    &nbsp;
                </strong>&nbsp;<strong><asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="Günün Yemeği Seç" Width="149px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
