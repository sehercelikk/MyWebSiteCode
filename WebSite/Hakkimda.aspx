<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Hakkimda.aspx.cs" Inherits="WebSite.Hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="card shadow p-5" style="width: 100%; border: none; border-radius: 0;">
        <h4 class="text-center mb-4 text-primary">Bilgileri Güncelle</h4>

        <form id="Form1" runat="server" class="w-75 mx-auto" enctype="multipart/form-data">
            <div class="form-group mb-3 row align-items-center">
                <label for="TextBox1" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Unvan</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
            <div class="form-group mb-3 row align-items-center">
                <label for="TextBox2" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Ad</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>

            <div class="form-group mb-3 row align-items-center">
                <label for="TextBox3" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Soyad</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
            <div class="form-group mb-3 row align-items-start">
                <label for="TextBox4" class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Açıklama</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control form-control-lg" TextMode="MultiLine" Height="150px"></asp:TextBox>
                </div>
            </div>

            <div class="form-group mb-3 row align-items-center">
                <label class="col-sm-2 col-form-label text-primary" style="font-size: 21px; font-weight: bold; text-align: end">Fotoğraf</label>
                <div class="col-sm-9">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control form-control-lg" />
                    <br />
                    <asp:Image ID="ProfilFoto" runat="server" Width="150" Height="200" />
                </div>
            </div>

            <asp:HiddenField ID="HiddenField1" runat="server" /> <!--Mevcut yol için saklama alanı -->

            <div class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary w-50" OnClick="Button1_Click" />
            </div>
        </form>
    </div>




</asp:Content>
