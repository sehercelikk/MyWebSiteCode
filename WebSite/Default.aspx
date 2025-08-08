<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSite.Default" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Web Site Admin</title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- Favicons -->
    <link href="Sablon/assets/img/favicon.png" rel="icon">
    <link href="Sablon/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="Sablon/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="Sablon/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="Sablon/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="Sablon/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="Sablon/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Main CSS File -->
    <link href="Sablon/assets/css/main.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: SnapFolio
  * Template URL: https://bootstrapmade.com/snapfolio-bootstrap-portfolio-template/
  * Updated: Jun 13 2025 with Bootstrap v5.3.6
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="index-page">

    <header id="header" class="header dark-background d-flex flex-column justify-content-center">
        <i class="header-toggle d-xl-none bi bi-list"></i>

        <div class="header-container d-flex flex-column align-items-start">
            <nav id="navmenu" class="navmenu">
                <ul>
                    <li><a href="#hakkimda" class="active"><i class="bi bi-house navicon"></i>Hakkımda</a></li>
                    <li><a href="#egitim"><i class="bi bi-person navicon"></i>Eğitim</a></li>
                    <li><a href="#deneyimler"><i class="bi bi-file-earmark-text navicon"></i>Deneyimler</a></li>
                    <li><a href="#beceriler"><i class="bi bi-images navicon"></i>Beceriler</a></li>
                    <li><a href="#hobiler"><i class="bi bi-hdd-stack navicon"></i>Hobiler</a></li>
                    <li><a href="#sertifikalar"><i class="bi bi-hdd-stack navicon"></i>Sertifikalar</a></li>
                    <li><a href="#projeler"><i class="bi bi-envelope navicon"></i>Projeler</a></li>
                    <li><a href="#iletisim"><i class="bi bi-envelope navicon"></i>İletişim</a></li>
                </ul>
            </nav>

            <div class="social-links text-center">
                <asp:HyperLink ID="Linkedln" runat="server"><i class="bi bi-linkedin"></i></asp:HyperLink>
                <asp:HyperLink ID="Github" runat="server"><i class="bi bi-github"></i></asp:HyperLink>
            </div>

        </div>

    </header>

    <main class="main">

        <!-- Hakkimda Section -->
        <section id="hakkimda" class="hero section">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="background-elements">
                        <div class="bg-circle circle-1"></div>
                        <div class="bg-circle circle-2"></div>
                    </div>

                    <div class="hero-content">

                        <div class="container">
                            <div class="row align-items-center">

                                <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">
                                    <div class="hero-text">
                                        <h1>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Ad") %>'></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Soyad") %>'></asp:Label></h1>

                                        <h2>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Unvan") %>'></asp:Label></h2>

                                        <% 
                                            var sesData = Session["GorevTanim"];
                                        %>
                                        <p class="lead">Ben <span class="typed" data-typed-items='<%=sesData%>'></span></p>

                                        <p class="description">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Aciklama") %>'></asp:Label>
                                        </p>

                                        <div class="hero-actions">
                                            <a href="#projeler" class="btn btn-primary">Çalışmalarım</a>
                                            <a href="#iletisim" class="btn btn-outline">İletişim</a>
                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-6" data-aos="fade-left" data-aos-delay="200">
                                    <div class="hero-visual">
                                        <div class="profile-container">
                                            <div class="profile-background"></div>
                                            <img src='<%# ResolveUrl(Eval("Foto").ToString()) %>' alt='<%# Eval("Ad") %>' class="profile-image">
                                            <div class="floating-elements">
                                                <div class="floating-icon icon-1"><i class="bi bi-palette"></i></div>
                                                <div class="floating-icon icon-2"><i class="bi bi-code-slash"></i></div>
                                                <div class="floating-icon icon-3"><i class="bi bi-lightbulb"></i></div>
                                                <div class="floating-icon icon-4"><i class="bi bi-graph-up"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <!-- /hakkimda Section -->

        <!-- Egitim Section -->
        <section id="egitim" class="resume section">
            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>EĞİTİM BİLGİLERİ</h2>
            </div>
            <!-- End Section Title -->
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class="container" data-aos="fade-up" data-aos-delay="100">
                        <div class="row gy-4">
                            <!-- Education Section -->
                            <div class="resume-section" data-aos="fade-up" data-aos-delay="100">
                                <h3><i class="bi bi-mortarboard me-2"></i>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("OkulAdi") %>'></asp:Label></h3>

                                <div class="resume-item">
                                    <h5>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Bolum") %>'></asp:Label></h5>
                                    <p class="company">
                                        <i class="bi bi-building"></i>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <!-- /Egitim Section -->

        <!-- Deneyim Section -->
        <section id="deneyimler" class="resume section">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>İŞ DENEYİMİ</h2>
            </div>
            <!-- End Section Title -->
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <div class="container" data-aos="fade-up" data-aos-delay="100">

                        <div class="row gy-4">
                            <!-- Right column with experience and education -->
                            <div class="col-lg-12 ps-4 ps-lg-5">
                                <!-- Experience Section -->
                                <div class="resume-section" data-aos="fade-up">
                                    <h3><i class="bi bi-briefcase me-2"></i>
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("KurumAdi") %>'></asp:Label></h3>

                                    <div class="resume-item">
                                        <h5>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label></h5>
                                        <h4>
                                            <i class="bi bi-building"></i>
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Unvan") %>'></asp:Label>
                                        </h4>
                                        <ul>
                                            <li>
                                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("Aciklama") %>'></asp:Label></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <!-- /Deneyim Section -->

        <!-- Beceriler Section -->
        <section id="beceriler" class="skills section">
            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>BECERİLER</h2>
            </div>
            <!-- End Section Title -->
            <div class="container" data-aos="fade-up" data-aos-delay="100">
                <div class="skills-category" data-aos="fade-up" data-aos-delay="300">
                    <h3>Full Stack Developer</h3>
                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                            <div class="skills-animation">
                                <div class="skill-item">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h4>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("BeceriAd") %>'></asp:Label></h4>
                                        <span class="skill-percentage">
                                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("YuzdeKac") %>'></asp:Label>%</span>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow='<%# Eval("YuzdeKac") %>' aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="skill-tooltip">
                                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("Aciklama") %>'></asp:Label>
                                    </div>
                                    <br />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <!-- End Backend Skills -->
            </div>

        </section>
        <!-- /Beceriler Section -->


        <!-- Stats Section -->
        <section id="hobiler" class="stats section">
            <div class="container section-title" data-aos="fade-up">
                <h2>HOBİLER</h2>
            </div>
            <div class="container mt-40">
                <div class="row mt-30">
                    <asp:Repeater ID="Repeater5" runat="server">
                        <ItemTemplate>
                            <div class="col-md-6 col-sm-12 mb-4">
                                <div class="box14">
                                    <div class="image-wrapper" style="height: 500px">
                                        <img class="pic-1" src='<%# ResolveUrl(Eval("ImagePath").ToString()) %>'>
                                    </div>
                                    <div class="box-content">
                                        <h3 class="title text-center">
                                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("HobiAd") %>'></asp:Label></h3>
                                        <p class="icon">
                                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("Aciklama") %>'></asp:Label>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>
        <!-- /Stats Section -->

        <!-- Services Section -->
        <section id="sertifikalar" class="services section">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>SERTİFİKA</h2>
            </div>
            <!-- End Section Title -->

            <div class="container" data-aos="fade-up" data-aos-delay="100">
                <div class="row justify-content-center">
                    <asp:Repeater ID="Repeater6" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
                                <div class="service-card position-relative z-1">
                                    <div class="service-icon">
                                        <i class="bi bi-award"></i>
                                    </div>
                                    <a href="#" class="card-action d-flex align-items-center justify-content-center rounded-circle">
                                        <i class="bi bi-arrow-up-right"></i>
                                    </a>
                                    <h2>
                                        <a href="#">
                                            <asp:Label ID="Label17" runat="server" Text='<%# Eval("SertifikaAd") %>'></asp:Label></a>
                                    </h2>
                                    <h4>
                                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("VerenKurum") %>'></asp:Label>
                                    </h4>
                                    <h6>
                                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label></h6>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>
        <!-- /Services Section -->


        <!-- Portfolio Section -->
        <section id="projeler" class="portfolio section">
            <div class="container section-title" data-aos="fade-up">
                <h2>PROJELER</h2>
            </div>

            <div class="container mt-3" data-aos="fade-up" data-aos-delay="100">
                <div class="row">
                    <asp:Repeater ID="Repeater7" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="our-team-main">
                                    <div class="team-front">
                                        <h3 class="text-black">
                                            <asp:Label ID="Label20" runat="server" Text='<%# Eval("ProjeName") %>'></asp:Label>
                                        </h3>
                                    </div>
                                    <div class="team-back">
                                        <p class="text-black text-center">
                                            <asp:Label ID="Label21" runat="server" Text='<%# Eval("Aciklama") %>'></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <div class="text-center mt-2">
                                    <a href='<%# Eval("Link") %>' class="btn btn-light">İncele</a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>


        <!-- /Portfolio Section -->


        <!-- Contact Section -->
        <section id="iletisim" class="contact section">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>İLETİŞİM</h2>
            </div>
            <!-- End Section Title -->

            <div class="container">
                <div class="row g-4 g-lg-5">
                    <div class="col-lg-5">
                        <div class="info-box">
                            <div class="info-item">
                                <div class="icon-box">
                                    <i class="bi bi-geo-alt"></i>
                                </div>
                                <div class="content">
                                    <h4>
                                        <asp:Label ID="Label22" runat="server" Text='<%# Eval("Adres") %>'></asp:Label></h4>
                                </div>
                            </div>
                            <div class="info-item">
                                <div class="icon-box">
                                    <i class="bi bi-envelope"></i>
                                </div>
                                <div class="content">
                                    <h4>
                                        <asp:Label ID="Label23" runat="server" Text='<%# Eval("Mail") %>'></asp:Label></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="contact-form">
                            <h4 class="text-center mb-4">İLETİŞİME GEÇİN</h4>
                            <form id="MesajGonder" runat="server" action="/#iletisim" method="post">
                                <div class="row gy-4">
                                    <div class="col-md-6">
                                        <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="form-control" placeholder="Ad Soyad"></asp:TextBox>
                                    </div>

                                    <div class="col-md-6 ">
                                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" placeholder="Mail Adresi"></asp:TextBox>
                                    </div>

                                    <div class="col-12">
                                        <asp:TextBox ID="TxtKonu" runat="server" CssClass="form-control" placeholder="Konu"></asp:TextBox>
                                    </div>

                                    <div class="col-12">
                                        <asp:TextBox ID="TxtMesaj" runat="server" CssClass="form-control" placeholder="Mesajınız" TextMode="MultiLine" Height="250px"></asp:TextBox>
                                    </div>

                                    <div class="col-12 text-center">
                                        <asp:Button ID="BtnMesajGonder" runat="server" Text="Mesaj Gönder" CssClass="btn" OnClick="BtnMesajGonder_Click" />

                                        <asp:Label ID="lblResult" runat="server" CssClass="text-success" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


        </section>
        <!-- /Contact Section -->


    </main>

    <footer id="footer" class="footer position-relative">

        <div class="container">
            <div class="copyright text-center ">

                <p>© <span>Copyright</span> <%: DateTime.Now.Year %> <span>Tüm Hakları Saklıdır</span></p>
            </div>
            <div class="credits">
                Geliştirici <a href="#">Seher ÇELİK</a>
            </div>
        </div>

    </footer>

    <!-- Scroll Top -->
    <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Preloader -->
    <div id="preloader"></div>

    <!-- Vendor JS Files -->
    <script src="Sablon/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="Sablon/assets/vendor/php-email-form/validate.js"></script>
    <script src="Sablon/assets/vendor/aos/aos.js"></script>
    <script src="Sablon/assets/vendor/typed.js/typed.umd.js"></script>
    <script src="Sablon/assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="Sablon/assets/vendor/waypoints/noframework.waypoints.js"></script>
    <script src="Sablon/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="Sablon/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="Sablon/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="Sablon/assets/vendor/swiper/swiper-bundle.min.js"></script>

    <!-- Main JS File -->
    <script src="Sablon/assets/js/main.js"></script>

</body>

</html>
