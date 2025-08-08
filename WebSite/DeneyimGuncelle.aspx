<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="DeneyimGuncelle.aspx.cs" Inherits="WebSite.DeneyimGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="card shadow p-5" style="width: 100%; border: none; border-radius: 0;">
        <h4 class="text-center mb-4 text-primary">Deneyim Güncelle</h4>

        <form id="Form1" runat="server" class="w-75 mx-auto">
            <div class="form-group mb-3 row align-items-center">
                <label for="TextBox1" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Id</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TxtId" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
            <div class="form-group mb-3 row align-items-center">
                <label for="TextBox1" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Kurum Adı</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TxtKurumAdi" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
            <div class="form-group mb-3 row align-items-center">
                <label for="TextBox2" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Unvan</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TxtUnvan" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>

            <div class="form-group mb-3 row align-items-center">
                <label for="TextBox3" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Tarih</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TxtTarih" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
            <div class="form-group mb-3 row align-items-start">
                <label for="TextBox4" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Açıklama</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TxtAciklama" runat="server" CssClass="form-control form-control-lg" TextMode="MultiLine" Height="150px"></asp:TextBox>
                </div>
            </div>
            <div class="text-center">
                <asp:Button ID="BtnGuncelle" runat="server" Text="Kaydet" CssClass="btn btn-primary w-50" OnClick="BtnGuncelle_Click" />
            </div>
        </form>
    </div>


</asp:Content>
