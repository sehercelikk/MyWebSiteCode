<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebSite.Login" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="AdminSablon/vendors/iconfonts/font-awesome/css/all.min.css">

    <!--Custom styles-->
    <link href="Giris.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3 class="text-center mt-4">GİRİŞ YAP</h3>
                </div>
                <div class="card-body">
                    <form runat="server">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" PlaceHolder="Kullanıcı Adınız"></asp:TextBox>

                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <asp:TextBox ID="TextBox2" runat="server" cssClass="form-control" placeholder="Şifreniz" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="row align-items-center remember">
                            <input type="checkbox">Beni Hatırla
				
                        </div>
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn float-right login_btn" OnClick="Button1_Click"/>
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-center links">
                        Hesabın Yok mu?<a href="#">Kayıt Ol</a>
                    </div>
                    <div class="d-flex justify-content-center">
                        <a href="#">Şifremi Unuttum</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
