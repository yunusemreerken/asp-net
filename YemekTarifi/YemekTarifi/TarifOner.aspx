<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        font-weight: bold;
        text-align: right;
    }
    .auto-style5 {
        font-weight: bold;
        height: 26px;
        text-align: right;
    }
    .auto-style6 {
        height: 26px;
    }
    .auto-style7 {
        text-align: right;
        width: 116px;
    }
    .auto-style8 {
        width: 116px;
    }
    .auto-style9 {
        margin-left: 44px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="auto-style1">
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7" style="font-weight: 700">Tarif Ad:</td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="247px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style1">
    <tr>
        <td class="auto-style5">Malzemeler:</td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px"  TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Yapılışı:</td>
        <td>
            <asp:TextBox ID="TxtYapilisi" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Resim:</td>
        <td>
            <asp:FileUpload ID="upload_tarifresim" runat="server" Width="250px" CssClass=" " />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Öneren:</td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mail Adres:</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1"  runat="server" BackColor="Aqua" CssClass="messageSubmit" Height="41px" OnClick="Button1_Click" Text="Tarif Öner" Width="169px" />
        </td>
    </tr>
</table>
<br />
</asp:Content>

