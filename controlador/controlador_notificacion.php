<?php 
	session_start();
	require_once '../modelo/notificacion.php';
	require_once '../modelo/usuario.php';
    require_once '../modelo/notificacion_receptor.php';

//read leido
	// unread
	$notificacion= new notificacion();
	$usuario = new usuario();
    $notificacionReceptor= new notificacionReceptor();
	# 1-sin leer, 2-leido 3-papelera	
	switch ($_GET['opcion']) {
        case '1':// mostrar notificacion en el navtop
            if(!isset($_SESSION['id_tipo_usuario'])){
                echo '
                    <script>
                        window.location.href="../../index.php";
                    </script>
                ';
            }else{
            setlocale(LC_ALL , 'spanish');
            function imprimir($id,$nombre,$asunto,$fecha,$marca){
            ob_start();
                echo'<a class=\'dropdown-item sb-dropdown-notifications-item\' href=\'javascript:void(0);\'><div class=\'sb-dropdown-notifications-item-content\'><div class=\'sb-dropdown-notifications-item-content-details\'>'.$nombre.'<br>'.ucwords(strftime("%d %b, %Y,%H:%M:%S",strtotime($fecha))).'</div><div class=\'sb-dropdown-notifications-item-content-text\'>'.$asunto.'</div></div></a>';
            return ob_get_clean();
            }
            $lista=$notificacion->buscar($_SESSION['usuario']);
            echo '<script>';
            if($lista!=false){
                $cantidad=$c=0;
                $cadena="";
                if(count($lista)!=$_SESSION['cantNotificacion']){
                    foreach ($lista as $datos) {
                        if($datos['estatus']==1){
                            $c++; 
                        }
                        if($cantidad<3){
                            if($datos['estatus']!=3){
                                if($datos['estatus']==2){$marca="Leido";}else{$marca="Sin Leer";}
                                $cantidad++;
                                $cadena.=imprimir($datos['id'],$datos['usuario_remitente'],$datos['asunto'],$datos['fecha'],$marca);
                            }
                        }
                    }
                    $_SESSION['cantNotificacion']=count($lista);
                   echo' $("#alertaNotificacion").html("'.$cadena.'");';
                    if($c>0){
                        if($c==1){$mensaje="Tienes ".$c." Notificación Nueva";}else{$mensaje="Tienes ".$c." Notificaciones Nuevas";}
                        echo'$("#indicador-notificacion").html("'.$c.'");
                            $("#indicador-notificacion").show();
                             toastr.success("'.$mensaje.'");';
                    }else{
                        echo'$("#indicador-notificacion").hide();';
                    }
                }
            }else{
                if($_SESSION['cantNotificacion']==0){ 
                    echo' $("#alertaNotificacion").html("<a class=\'dropdown-item sb-dropdown-notifications-item\' href=\'javascript:void(0);\'><div class=\'sb-dropdown-notifications-item-content\'><div class=\'sb-dropdown-notifications-item-content-details\'></div><div class=\'sb-dropdown-notifications-item-content-text\'>No tienes notificaciones</div></div></a>");';
                    $_SESSION['cantNotificacion']=-1;
                }
            }
            echo '</script>';
            }
            //080002262200 5914280 6725
            break;
        case '2'://listar 
                $notificacionReceptor->setUsuarioReceptor($_SESSION['usuario']);
                if(isset($_POST['inicio']) && isset($_POST['final'])){
                    $lista=$notificacionReceptor->buscar2($_POST['inicio'],$_POST['final']);  
                }else{
                    $lista=$notificacionReceptor->buscar();   
                }
                if($lista!=false){
                    echo json_encode($lista);

                }else{
                    echo'
                        </br></br><h3 style="text-align:center;">No hay notificaciones que mostrar<h3/>
                    ';
                }
            break;
        case '3'://activar estatus
                $notificacionReceptor->setUsuarioReceptor($_SESSION['usuario']);
                $lista=$notificacionReceptor->buscar_notificacion();
                $val=false;
                if($lista!=false){
                    foreach($lista as $datos){
                        if($datos['estatus']!=2){
                            $notificacionReceptor->setId($datos['id']);
                            $notificacionReceptor->actualizar("estatus",2);
                            $val=true;
                        }
                    }
                }
                if($val==true){
                    echo'<script>$("#indicador-notificacion").hide();</script>';
                }
            break;
	}

// codigo verificacion ptp javier N5U02X, orestes 360S3U
 ?>
