<?php
    session_start();
if(isset($_SESSION['usuario']))
{
   header("location: controlador/controlador_sesion.php?opcion=2");
}else{
 ?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content />
        <meta name="author" content />
        <title>App-Banco Agrario</title>
        <link href="assets/css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <!--<script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>-->
        <script src="assets/js/feather.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-gradient-primary-to-secondary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header justify-content-center" style="background-color: #fff;">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="assets/img/Evolution.png"/>
                                            </div>
                                            <div class="col-md-12">
                                                <h3 class="font-weight-light my-4" style="margin-bottom: 0 !important;text-align: center;color: #6d6e6f;">Acceder</h3>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="card-body">
                                        <form name="formulario_registro" id="formularioRegistrar" method="post">
                                            <div class="form-group"><label class="small mb-1" for="inputEmailAddress">Usuario</label><input class="form-control py-4" name="usuario" type="text" placeholder="Ingrese Usuario" /></div>
                                            <div class="form-group"><label class="small mb-1" for="inputPassword">Contraseña</label><input class="form-control py-4" name="contraseña" type="password" placeholder="Ingrese Contraseña" /></div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <button class="btn btn-primary" type="button" id="entrar">Entrar</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <h4 id="mensaje" class="text-center" style="color: red;"></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="footer mt-auto footer-dark">
                    <div class="container-fluid">
                        <!--<div class="row">
                            <div class="col-md-6 small">Copyright &#xA9; Your Website 2020</div>
                            <div class="col-md-6 text-md-right small">
                                <a href="#!">Privacy Policy</a>
                                &#xB7;
                                <a href="#!">Terms &amp; Conditions</a>
                            </div>
                        </div>-->
                    </div>
                </footer>
            </div>
        </div>
        <script src="assets/js/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="assets/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="assets/js/scripts.js"></script>
        <script type="text/javascript">
        $(document).ready(function() {
            $('#entrar').click(function(){
                $.ajax({
                    type: 'POST',
                    url: 'controlador/controlador_sesion.php?opcion=1',
                    data:  $("#formularioRegistrar").serialize(),
                    success:function(data){
                        console.log(data);
                        switch(data){
                            case '1':
                                location.href="proyecto.php";
                                break;
                            case '2':
                                location.href="controlador/controlador_sesion.php?opcion=2";
                                break;
                            default:
                                $('#mensaje').html('Usuario o Contrasena Incorrecta');  
                                break;
                        }    
                    } 
                });
                
            })
         })
    </script>
    </body>
</html>
<?php
}
?>