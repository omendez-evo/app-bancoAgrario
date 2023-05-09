<?php
    session_start();
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
</head>
<nav class="sb-topnav navbar navbar-expand shadow navbar-light bg-white" id="sidenavAccordion">
    <a class="navbar-brand d-none d-sm-block" href="proyecto.php"><img src="assets/img/Evolution.png"/></a>
    <form class="form-inline mr-auto d-none d-lg-block"></form>
    <ul class="navbar-nav align-items-center">
        <li class="nav-item dropdown no-caret mr-3 sb-dropdown-user">
            <a class="btn sb-btn-icon sb-btn-transparent-dark dropdown-toggle" id="navbarDropdownUserImage" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <button class="btn btn-red btn-icon" type="button">
                <?php
                    $LetraNombre = str_split($_SESSION["nombre"], 1);
                    $LetraApellido = str_split($_SESSION["apellido"], 1);
                    //$LetrasApellido=explode(' ',$_SESSION["apellido"]);
                    echo $LetraNombre[0].$LetraApellido[0] ;
                ?>
                </button></a>
            <div class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownUserImage">
                <h6 class="dropdown-header d-flex align-items-center">

                <button class="btn btn-red btn-icon sb-dropdown-user-img" type="button"><?php echo $LetraNombre[0].$LetraApellido[0];?></button>
                    <div class="sb-dropdown-user-details">
                        <div class="sb-dropdown-user-details-name"><?php echo $_SESSION["nombre"]." ".$_SESSION["apellido"]; ?></div>
                        <div class="sb-dropdown-user-details-email"><?php echo $_SESSION["usuario"]; ?></div>
                    </div>
                </h6>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="controlador/controlador_sesion.php?opcion=3"
                    ><div class="sb-dropdown-item-icon"><i data-feather="log-out"></i></div>
                    Cerrar Sesión</a
                >
            </div>
        </li>
    </ul>
</nav>
<body class="bg-gradient-primary-to-secondary">
    <br><br><br><br>
    <div class="container">
        <div class="sb-page-header sb-page-header-dark">
            <div class="container-fluid">
                <div class="sb-page-header-content">
                    <h2 class="sb-page-header-title">
                        <span>Seleccione Proyecto</span>
                    </h2>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <!-- Create Organization-->
            <div class="col-xl-4 col-lg-6 col-md-8 col-sm-11 mt-4 mb-4">
                <div class="card text-center h-100">
                    <div class="card-body px-5 pt-5 d-flex flex-column">
                        <div>
                            <img class="img-fluid" src="assets/img/logo-bancoAgrario.svg"/>
                        </div>
                    </div>
                    <div class="card-footer bg-transparent px-5 py-4">
                        <div class="small text-center"><a class="btn btn-outline-success" href="controlador/controlador_sesion.php?opcion=2&proyecto=1">Entrar</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src="assets/js/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="assets/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="assets/js/scripts.js"></script>
</script>
</body>
</html>
