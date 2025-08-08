<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="BeceriEkle.aspx.cs" Inherits="WebSite.BeceriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <div class="card shadow p-5" style="width: 100%; border: none; border-radius: 0;">
        <h4 class="text-center mb-4 text-primary">Beceri Ekle</h4>

        <form id="Form1" runat="server" class="w-75 mx-auto">
            <div class="form-group mb-3 row align-items-center">
                <label for="TextBox1" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Beceri Adı</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
            <div class="form-group mb-3 row align-items-center">
                <label for="TextBox2" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Yüzdelik Dilim</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TxtYuzde" runat="server" TextMode="Number" min="0" max="100" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
            <div class="form-group mb-3 row align-items-center">
                <label for="TextBox3" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Açıklama</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TxtAciklama" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>

            <div class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-primary w-50" OnClick="Button1_Click" />
            </div>
        </form>
    </div>

</asp:Content>
