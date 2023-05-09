
    <nav class="sb-topnav navbar navbar-expand shadow navbar-light bg-white" id="sidenavAccordion">
        <a class="navbar-brand d-none d-sm-block" href="index.php"><img src="../../assets/img/Evolution.png"/></a><button class="btn sb-btn-icon sb-btn-transparent-dark order-1 order-lg-0 mr-lg-2" id="sidebarToggle" href="#"><i data-feather="menu"></i></button>
        <form class="form-inline mr-auto d-none d-lg-block"></form>
        <ul class="navbar-nav align-items-center">
            <?php
                switch ($_SESSION['proyecto']) {
                    case '1':
                        echo '<img class="navbar-brand sb-dropdown-notifications" src="../../assets/img/logo-bancoAgrario.svg" style="width: 14rem;"/>';
                        break;
                }

            ?>
            <li class="nav-item dropdown no-caret mr-3 sb-dropdown-notifications">
                <a class="btn sb-btn-icon sb-btn-transparent-dark dropdown-toggle" id="navbarDropdownAlerts" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="notificacionActivar()"><i data-feather="bell"></i><span class="badge badge-green" id="indicador-notificacion" style="display: none;"></span></a>
                <div class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownAlerts">
                    <h6 class="dropdown-header sb-dropdown-notifications-header"><i class="mr-2" data-feather="bell"></i>Centro de Notificaciones</h6>
                   
                    <div id="alertaNotificacion"></div>
                    <a class="dropdown-item sb-dropdown-notifications-footer" href="notificaciones.php">Ver Todas</a>
                
                </div>
            </li>
            <li class="nav-item dropdown no-caret mr-3 sb-dropdown-notifications">
                <a class="btn sb-btn-icon sb-btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="mail"></i></a>
                <div class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownMessages">
                    <h6 class="dropdown-header sb-dropdown-notifications-header"><i class="mr-2" data-feather="mail"></i>En Construcción</h6>
                    <!--
                    <a class="dropdown-item sb-dropdown-notifications-item" href="javascript:void(0);"
                        ><img class="sb-dropdown-notifications-item-img" src="https://source.unsplash.com/vTL_qy03D1I/60x60" />
                        <div class="sb-dropdown-notifications-item-content">
                            <div class="sb-dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
                            <div class="sb-dropdown-notifications-item-content-details">Emily Fowler &#xB7; 58m</div>
                        </div></a>
                        <a class="dropdown-item sb-dropdown-notifications-footer" href="javascript:void(0);">Read All Messages</a>

                    -->
                </div>
            </li>
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
                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#modal-cuenta"
                        ><div class="sb-dropdown-item-icon"><i data-feather="settings"></i></div>
                        Cambio de Contraseña</a
                    ><a class="dropdown-item" href="../../proyecto.php"
                        ><div class="sb-dropdown-item-icon"><i data-feather="filter"></i></div>
                        Seleccionar Proyecto</a
                    >
                    <a class="dropdown-item" href="../../controlador/controlador_sesion.php?opcion=3"
                        ><div class="sb-dropdown-item-icon"><i data-feather="log-out"></i></div>
                        Cerrar Sesión</a
                    >
                </div>
            </li>
        </ul>
    </nav>

<div class="modal fade" id="modal-cuenta" tabindex="-1" role="dialog" aria-labelledby="Seleccionar" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Cambio de Contraseña</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label class="small mb-1" for="currentPassword">Contraseña Actual</label>
                        <input class="form-control" id="currentPassword" type="password" placeholder="Ingrese Contraseña Actual" />
                    </div>
                    <!-- Form Group (new password)-->
                    <div class="form-group">
                        <label class="small mb-1" for="newPassword">Nueva Contraseña</label>
                        <input class="form-control" id="newPassword" type="password" placeholder="Ingrese Nueva Contraseña" disabled/>
                    </div>
                    <!-- Form Group (confirm password)-->
                    <div class="form-group">
                        <label class="small mb-1" for="confirmPassword">Confirmar Contraseña</label>
                        <input class="form-control" id="confirmPassword" type="password" placeholder="Confirmar Nueva Contraseña"  disabled/>
                        <label class="small mb-1 text-danger" id="text-error"></label>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-danger" type="button" data-dismiss="modal">Cerrar</button>
                        <button class="btn btn-success" type="button" id="btn-a" disabled>Aceptar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php  $_SESSION['cantNotificacion']=0; ?>