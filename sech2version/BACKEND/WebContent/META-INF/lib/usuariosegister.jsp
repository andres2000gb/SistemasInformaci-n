<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">


    <link href="assets/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/registro.css">


    <script type="text/javascript">
        function enableSending() {
            // document.loginform.submit.disabled = !document.loginform.terms.checked;
            var valor = document.getElementById("boton1").disabled;
            document.getElementById("boton1").disabled = !valor;

        };
        function mostrar() {
            document.getElementById("politica1").style.display = "block";

        }
    </script>
</head>

<body>
    <header id="header" class="fixed-top">
        <nav class="navbar navbar-expand-lg navbar-light" style="padding-left: 4vh;">
            <h1 class="logo mr-auto"><a href="index.html">AppHospitales<span>.</span></a></h1>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin-left: 5vh;">
                <ul class="navbar-nav mr-auto" style="font-size: 2.5vh;font-weight: bold;">
                    <li class="nav-item itemfooter">
                        <a class="nav-link" href="indexpri.html">INICIO <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item itemfooter">
                        <a class="nav-link" href="#">BLOG</a>
                    </li>
                    <li class="nav-item active itemfooter">
                        <a class="nav-link" href="login.html">LOG IN</a>
                    </li>
                    <li class="nav-item dropdown itemfooter">
                        <a class="nav-link" href="index.html">COVID-19</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">BUSQUEDA</a>
                    </li>
                </ul>
            </div>
        </nav>

    </header>
    <section id="hero" class="d-flex align-items-center" style="height: 28vh;"></section>
    <section class="container">

        <div style="position: relative;">
            <form action="<%= request.getContextPath() %>/register" method="post">
                <fieldset class="container" style="width: 120vh;padding: 2vh;">
                    <legend class="text-left">
                        <h2>Crea tu cuenta</h2>
                    </legend>
                    <hr>
                    <div>  
                        <div class="row">
                            <div class="form-group text-left col-md-5">
                                <label for=""><strong>*Nombre</strong></label>
                                <input type="text" placeholder="&#128100  Nombre" id="firstName" name="firstName" class="form-control" required>
                            </div>
                            <div class="form-group text-left col-md-5">
                                <label for=""><strong>*Apellidos</strong></label>
                                <input type="text" placeholder="&#128100  Apellidos" id="lastName" name="lastName" class="form-control" required>
                            </div>
                            <div class="form-group text-left col-md-2">
                                <label for=""><strong>*DNI</strong></label>
                                <input type="text" placeholder="DNI" id="dni" name="dni" class="form-control" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group text-left col-md-6">
                                <label for=""><strong>*Hospital</strong></label>
                                <select class="form-control" name="hospital" id="hospital" required>

                                    <!-- Opciones de la lista -->
                                    <option value="0" id="0" selected>&#127973 Elige un Hospital</option>
                                    <option value="1" id="1">Miguel Servet</option>
                                    <option value="2" id="2">Clínico Universitario</option>
                                    <option value="3" id="3">Royo Villanova</option>
                                    <option value="4" id="4">General de la Defensa</option>
                                    <option value="5" id="5">Obispo Polanco</option>
                                    <option value="6" id="6">Hospital de Alcañiz</option>
                                    <option value="7" id="7">Hospital de Barbastro</option>
                                    <option value="8" id="8">San Jorge (Huesca)</option>
                                    <option value="9" id="9">Hospital Ernest Lluch</option>
                                    <option value="10" id="10">Sagrado Corazón de Jesús</option>
                                    <option value="11" id="11">Hospital Público San José</option>
                                    <option value="12" id="12">Hospital Ejea Cinco Villas</option>
                                </select>
                            </div>
                            <div style="z-index: 2 ; display: none;position: absolute;height: 30vh;" class="container" id="politica1">
                                <h1> <strong> Política de privacidad</strong></h1>
                                <p>La visita a este sitio Web no implica que el usuario esté obligado
                                    a facilitar ninguna información. En el caso de que el usuario facilite
                                    alguna información de carácter personal, los datos recogidos en este sitio web serán
                                    tratados de forma leal y lícita con sujeción en todo momento a los principios y
                                    derechos recogidos en el Reglamento (UE) 2016/679, de 27 de abril,
                                    General de Protección de Datos (RGPD) y demás normativa aplicable.
                                    .</p>
                            </div>
                            <div class="form-group text-left col-md-6">
                                <label for=""><strong>*Puesto de trabajo</strong></label>
                                <select class="form-control" name="trabajo" id="trabajo" required>

                                    <!-- Opciones de la lista -->
                                    <option value="0" id="0" selected>&#127973 Elija su puesto de trabajo</option>
                                    <option value="1" id="1">Enfermeros</option>
                                    <option value="2" id="2">TCAE(Axuliar de enfermería)</option>
                                    <option value="3" id="3">TEL(Técnico de laboratorio)</option>
                                    <option value="4" id="4">Director médico</option>
                                    <option value="5" id="5">Médicos facultativos</option>
                                    <option value="6" id="6">Director de enfermería</option>
                                    <option value="7" id="7">Subdirectores médicos</option>
                                    <option value="8" id="8">Supervisores de unidad</option>
                                    <option value="9" id="9">Supervisores de área</option>
                                    <option value="10" id="10">Ténico de prevención de riesgos</option>
                                    <option value="11" id="11">TER(Técnico de rayos)</option>
                                    <option value="12" id="12">Residentes</option>
                                    <option value="13" id="13">Celadores</option>
                                    <option value="14" id="14">Estudiantes</option>
                                    <option value="15" id="15">Administrativos</option>
                                    <option value="16" id="16">Estudiantes</option>
                                    <option value="17" id="17">Infórmaticos</option>
                                    <option value="18" id="18">Personal de mantenimento</option>
                                    <option value="19" id="19">Ingenieros</option>
                                    <option value="20" id="20">Cocineros y pinches</option>
                                    <option value="21" id="21">Choferes</option>
                                    <option value="22" id="22">Personal de lavandería</option>
                                    <option value="23" id="23">Personal de seguridad</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group text-left col-md-3">
                                <label for=""><strong>*Fecha de nacimiento</strong></label>
                                <input type="date" id="birthdate" name="birthdate" class="form-control" required>
                            </div>
                            <div class="form-group text-left col-md-5">
                                <label for=""><strong>Lugar de nacimiento</strong></label>
                                <input type="text" id="birthplace" name="birthplace" placeholder="&#8962  Zaragoza" class="form-control">
                            </div>
                            <div class="form-group text-left col-md-4">
                                <label for=""><strong>C.P</strong></label>
                                <input type="number" id="postalcode" name="postalcode" class="form-control" placeholder="Ej. 50002">
                            </div>
                        </div>
                        <div class="form-group-button text-center">

                            <div class="terms text-left" style="margin-bottom: 1vh;">
                                <input type="checkbox" name="terms" onclick="enableSending()">
                                <label for="terms" style="color: black;">He leido y acepto la
                                    <span style="color: blue;" class="politica"><a onclick="mostrar()">política de
                                            privacidad</a></span></label>
                            </div>
                            <input class="btn btn-primary form-control" type="submit" id="boton1" name="submit"
                                value="Enviar" disabled >
                        </div>
                    </div>
                    <div style="margin-top: 4vh;font-size: small;">
                        <p>
                            *<span style="font-weight: bold;">Campos Obligatorios</span> <br>
                        </p>
                    </div>
                </fieldset>
            </form>
        </div>

    </section>
    <footer id="footer">

        <div class="footer-newsletter">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-md-6 footer-contact">
                        <h3>AppHospitales<span>.</span></h3>
                        <p>
                            A108 Adam Street <br>
                            Fuentes de Ebro, 50740<br>
                            Zaragoza,Spain <br><br>
                            <strong>Telefono:</strong> +1 5589 55488 55<br>
                            <strong>Email:</strong> info@example.com<br>
                        </p>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Links Útiles</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Inicio</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Foro</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Log In</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Registro</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Informacion</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Nuestras Redes Sociales</h4>
                        <div class="social-links mt-3">
                            <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                            <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                            <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="container py-4">
            <div class="copyright">
                &copy; Copyright <strong><span>AppHospitales</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/bizland-bootstrap-business-template/ -->
                Designed by <a href="https://unizar.com/">BootstrapMade</a>
            </div>
        </div>
    </footer>



    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
    <script src="assets/vendor/counterup/counterup.min.js"></script>
    <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/venobox/venobox.min.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
</body>
</html>