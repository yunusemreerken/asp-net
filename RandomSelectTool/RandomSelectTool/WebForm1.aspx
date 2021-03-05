<%@ Page Title="" Language="C#" MasterPageFile="~/RST.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RandomSelectTool.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="random-form">
        <div class="form">
            <div class="head1">
            <h2 class="text-center heading-big">Random Seçim Aracı</h2>

            </div>
            <div class="list">
                <form id="form1" runat="server">
                    <ol>
                        <li>
                            <asp:TextBox id="TextBox1" runat="server" CssClass="textbox" ></asp:TextBox></li>
                        <li>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox></li>
                        <li>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox></li>
                        <li>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox></li>
                        <li>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox"></asp:TextBox></li>
                        <asp:Button ID="Button1" runat="server" Text="Seç" OnClick="Button1_Click" CssClass="textbox"/>
                    </ol>
                        <asp:Label ID="Label1" runat="server" Text="" CssClass="text-center"> </asp:Label>

                </form>
            </div>
        </div>
        

    </section>
</asp:Content>
