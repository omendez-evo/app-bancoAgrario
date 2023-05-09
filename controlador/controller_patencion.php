<?php 
	session_start();
    
	require_once '../modelo/estado.php';
	require_once '../modelo/sesion.php';
    require_once '../modelo/punto_atencion.php';
    require_once '../modelo/traza_atencion.php';
    require_once '../modelo/prioridad.php';
    require_once '../modelo/comentario_traza_atencion.php';
    require_once '../modelo/asignatario_punto_atencion.php';
    require_once '../modelo/notificacion.php';
    require_once '../modelo/notificacion_receptor.php';
    require_once '../modelo/sesion.php';


	$estado= new estado();
	$sesion= new sesion();
    $punto_atencion= new punto_atencion();
    $traza_atencion = new traza_atencion();
    $prioridad = new prioridad();
    $comentario_traza_atencion = new comentario_traza_atencion();
    $asignatario_punto_atencion = new asignatario_punto_atencion();
    $sesion = new Sesion();
    $notificacion= new notificacion();
    $notificacionReceptor= new notificacionReceptor();
	switch ($_GET['opcion']) {
        case '1':
        		#cargar select
                function select($lista,$busqueda){
                    $cadena="";
                    foreach($lista as $datos){
                        $cadena.='<option value="'.$datos['id'].'">'.$datos[$busqueda].'</option>';
                    }
                    return $cadena;
                }
                $lista= $sesion->consultar_select();
                $cadena="";
                foreach($lista as $datos){
                    $cadena.='<option value="'.$datos['usuario'].'">'.$datos['nombre_completo'].'</option>';
                }
                echo "<script>";
                    echo "$('#selectAsignatarios').html('".$cadena."');";
                    echo "$('#selectPrioridad').html('".select($prioridad->consultar_activos(),"prioridad")."');";
                echo "</script>";

        	break;
        case '2':#option for save data the punto_atencion
            # code...
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $descripcion=str_replace("'","\"",$_POST['inputDescripcion']);
                $descripcion=preg_replace("/[\r\n|\n|\r]+/"," ",$descripcion);
                $punto_atencion->setId();
                $punto_atencion->setEstado(1);
                $punto_atencion->setId_prioridad($_POST['selectPrioridad']);
                $punto_atencion->setFecha_creacion(date("Y-m-d H:i:s", $time));
                $punto_atencion->setDescripcion($descripcion);
                $punto_atencion->setAfectado($_POST['inputAfectados']);
                $punto_atencion->setTitulo($_POST['inputTitulo']);
                echo $punto_atencion->registrar();
                   
            break;
        case '3':#function for data show
            # code...
                echo json_encode($punto_atencion->consultar_activos());  

            break;
        case '4':#function for 
            # code...
                 function print_descrip($documentacion){
                    return str_replace("\n","<br>",$documentacion);
                    
                }
                $punto_atencion->setId2($_SESSION['seleccion']);
                $punto_atencion->consultar();
                $asignatario_punto_atencion->setId_punto_atencion($_SESSION['seleccion']);
                $lista=$asignatario_punto_atencion->consultar();

                echo "<script>";
                
                    echo "$('#identificador').html('".$_SESSION['seleccion']."');";
                    echo "$('#titulo').html('".$punto_atencion->getTitulo()."');";
                    echo "$('#afectado').html('".$punto_atencion->getAfectado()."');";
                    echo "$('#selectEstado').val('".$punto_atencion->getEstado()."');";
                    #foreach($lista as $datos){
                        echo' $("#selectAsignatarios").val('.$lista.').trigger("change");';
                    #}
                    #echo' $("#selectAsignatarios").val(["epereda","bpereda"]).trigger("change");';
                    echo "$('#selectPrioridad').val('".$punto_atencion->getId_prioridad()."');";
                    echo "$('#descripcion').html('".$punto_atencion->getDescripcion()."');";

                echo "</script>";
            break;
        case '5':#edit switch
                $punto_atencion->setId2($_SESSION['seleccion']);
                echo "<script>";
                switch ($_POST['caso']) {
                    case '3':
                            if($punto_atencion->actualizar("id_prioridad",$_POST['selectPrioridad'])== true){
                                echo 'toastr.success("Prioridad Actualizada");';
                            }
                        break;
                    case '4':
                            if($punto_atencion->actualizar("estado",$_POST['selectEstado'])== true){
                                echo 'toastr.success("Estado Actualizado");';
                            }
                        break;
                    default:
                        # code...
                        break;
                }
                echo "</script>";
            break;
        
        case '6':#cargar informacion y enrutar 
                $_SESSION['seleccion']=$_GET['id'];
                switch ($_SESSION["id_tipo_usuario"]) {
                    case '1':// perfil
                        header("location: ../view/adm/detalle_patencion.php");  
                        break;
                    case '3':// perfil
                        header("location: ../view/visitante/detalle_patencion.php");    
                        break;
                    case '4':// perfil
                        header("location: ../view/n2/detalle_patencion.php");    
                        break;
                    default:
                        # code...
                        break;
                }
            break;
        case '7':#registrar nueva traza atencion
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $traza_atencion->setId();
                $traza_atencion->setEstado(1);
                $traza_atencion->setusuario($_SESSION["usuario"]);
                $traza_atencion->setId_punto_atencion($_SESSION['seleccion']);
                $traza_atencion->setAvances(str_replace("'","\"",$_POST['documentacion']));
                $traza_atencion->setFecha_avance(date("Y-m-d H:i:s", $time));
                echo "<script>";
                if($traza_atencion->registrar()==true){
                    ini_set('date.timezone', 'America/Bogota');
                    $time = time();
                    $asignatario_punto_atencion->setId_punto_atencion($_SESSION['seleccion']);
                    $asignatario_punto_atencion->setEstatus(1);
                    $lista=$asignatario_punto_atencion->consultar2();
                    $notificacion->setId();
                    $notificacion->setUsuarioRemitente($_SESSION["usuario"]);
                    $notificacion->setEstatus(1);
                    $notificacion->setFecha(date("Y-m-d H:i:s", $time));
                    $notificacion->setAsunto("Nuevo Avance en Punto de Atencion nro:".$_SESSION["seleccion"]);
                    $notificacion->registrar();
                    if($lista!=false){
                        $notificacionReceptor->setId($notificacion->getId());
                        $notificacionReceptor->setEstatus(1);
                        foreach($lista as $datos){//envia a asignatarios asignados
                            $notificacionReceptor->setUsuarioReceptor($datos['usuario']);
                            $notificacionReceptor->registrar();
                        }
                    }
                    $sesion->setId_tipo_usuario(1);
                    $lista=$sesion->listar();
                    if($lista!=false){
                        $notificacionReceptor->setId($notificacion->getId());
                        $notificacionReceptor->setEstatus(1);
                        foreach($lista as $datos){
                            $notificacionReceptor->setUsuarioReceptor($datos['usuario']);
                            $notificacionReceptor->registrar();
                        }
                    }

                        echo 'toastr.success("Nuevo avance Registrado");';
                    echo "cargarData(8);";
                    echo "$('#modal-nuevo').modal('hide');";

                }
                echo "</script>";
            break;
        case '8':#carga timeline
                function print_timeline($fecha,$traza_atencion,$id,$n_notificacion,$usuario){
                    $punto_atencion= str_replace("\n","<br>",$traza_atencion);
                    switch ($_SESSION["id_tipo_usuario"]) {
                    case '1':// perfil
                        if($n_notificacion>0){
                            $notificacion="<span class=\"badge badge-green\">".$n_notificacion."</span>";
                        }else{
                            $notificacion="";
                        }
                       
                       return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."<br>".$usuario."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card shadow-sm\"><div class=\"row\"><div class=\"col-md-9\"></div><div class=\"col-md-3\"><button class=\"btn btn-outline-default btn-icon\" onclick=\"cargar_comentario(".$id.")\"><i class=\"far fa-comment\"></i>".$notificacion."</button><button class=\"btn btn-outline-default btn-icon\" onclick=\"edit_avances(".$id.")\"><i class=\"far fa-edit\"></i></button><button class=\"btn btn-outline-default btn-icon\" onclick=\"delet_avances(".$id.")\"><i class=\"far fa-times-circle\"></i></button></div></div><div class=\"card-body\">".$punto_atencion."</div></div></div></div>";
                    case '4':// perfil
                        if($n_notificacion>0){
                            $notificacion="<span class=\"badge badge-green\">".$n_notificacion."</span>";
                        }else{
                            $notificacion="";
                        }
                       
                       return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."<br>".$usuario."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card shadow-sm\"><div class=\"row\"><div class=\"col-md-9\"></div><div class=\"col-md-3\"><button class=\"btn btn-outline-default btn-icon\" onclick=\"cargar_comentario(".$id.")\"><i class=\"far fa-comment\"></i>".$notificacion."</button><button class=\"btn btn-outline-default btn-icon\" onclick=\"edit_avances(".$id.")\"><i class=\"far fa-edit\"></i></button><button class=\"btn btn-outline-default btn-icon\" onclick=\"delet_avances(".$id.")\"><i class=\"far fa-times-circle\"></i></button></div></div><div class=\"card-body\">".$punto_atencion."</div></div></div></div>";
                    case '3':// perfil
                        return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card shadow-sm\"><div class=\"card-body\">".$punto_atencion."</div></div></div></div>";    
                        break;
                    default:
                        # code...
                        break;
                }
                    
                }
                $traza_atencion->setId_punto_atencion($_SESSION['seleccion']);
                $lista=$traza_atencion->consultar();
                $cadena="";
                foreach($lista as $datos){
                    $cadena.=print_timeline($datos['fecha_avance'],$datos['avances'],$datos['id'],$comentario_traza_atencion->cant_comentario($datos['id']),$datos['usuario']);
                }
                if($cadena == ""){
                    $cadena="<br><br><h5 style=\"text-align: center;\">Sin Información</h5>";
                }
                echo $cadena;
            break;
        case '9':#option for close punto_atencion 
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $punto_atencion->setId2($_SESSION['seleccion']);
                if($punto_atencion->actualizar("estado",$_POST['estado'])== true){
                    echo $punto_atencion->actualizar("fecha_fin",date("Y-m-d H:i:s", $time));
                    ini_set('date.timezone', 'America/Bogota');
                    $time = time();
                    $asignatario_punto_atencion->setId_punto_atencion($_SESSION['seleccion']);
                    $asignatario_punto_atencion->setEstatus(1);
                    $lista=$asignatario_punto_atencion->consultar2();
                    $notificacion->setId();
                    $notificacion->setUsuarioRemitente($_SESSION["usuario"]);
                    $notificacion->setEstatus(1);
                    $notificacion->setFecha(date("Y-m-d H:i:s", $time));
                    $notificacion->setAsunto("Cerrado Punto de Atencion nro:".$_SESSION["seleccion"]);
                    $notificacion->registrar();
                    if($lista!=false){
                        $notificacionReceptor->setId($notificacion->getId());
                        $notificacionReceptor->setEstatus(1);
                        foreach($lista as $datos){//envia a asignatarios asignados
                            $notificacionReceptor->setUsuarioReceptor($datos['usuario']);
                            $notificacionReceptor->registrar();
                        }
                    }
                    $sesion->setId_tipo_usuario(1);
                    $lista=$sesion->listar();
                    if($lista!=false){
                        foreach($lista as $datos){
                            $notificacionReceptor->setUsuarioReceptor($datos['usuario']);
                            $notificacionReceptor->registrar();
                        }
                    }
                }
            break;
        case '10':
                $lista=explode("-",$_SESSION['array']);
                switch ($_SESSION["id_tipo_usuario"]) {
                    case '1':// perfil
                        $ruta="location: ../view/adm/detalle_patencion.php";  
                        break;
                    case '3':// perfil
                        $ruta="location: ../view/visitante/detalle_patencion.php";    
                        break;
                    case '4':// perfil
                        $ruta="location: ../view/n2/detalle_patencion.php";    
                        break;
                    default:
                        # code...
                        break;
                }
                for ($i=0; $i<count($lista) ; $i++) { 
                    if($lista[$i]==$_SESSION['seleccion']){
                        $i++;
                        if($lista[$i]!=""){
                            $_SESSION['seleccion']=$lista[$i];
                            header($ruta);
                        }
                        else{
                            header($ruta);
                        }
                    }
                }
            break;
        case '11':
                $lista=explode("-",$_SESSION['array']);
                switch ($_SESSION["id_tipo_usuario"]) {
                    case '1':// perfil
                        $ruta="location: ../view/adm/detalle_patencion.php";  
                        break;
                    case '3':// perfil
                        $ruta="location: ../view/visitante/detalle_patencion.php";    
                        break;
                    case '4':// perfil
                        $ruta="location: ../view/n2/detalle_patencion.php";    
                        break;
                    default:
                        # code...
                        break;
                }
                for ($i=0; $i<count($lista) ; $i++) { 
                    if($lista[$i]==$_SESSION['seleccion']){
                        $i--;
                        if($lista[$i]!=""){
                            $_SESSION['seleccion']=$lista[$i];
                            header($ruta);
                        }
                        else{
                            header($ruta);
                        }
                    }
                }
            break;
        case '12':#function for data show
            # code...
                echo json_encode($punto_atencion->historial($_POST['fecha_inicio'],$_POST['fecha_final']));

            break;
        case '13':#function for show data comment 
            # code...
                function print_timeline($fecha,$traza_atencion){
                    $punto_atencion= str_replace("\n","<br>",$traza_atencion);
                    return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card-body\">".$punto_atencion."</div></div></div></div>";
                }
                $comentario_traza_atencion->setId_traza_atencion($_POST['id']);
                $lista=$comentario_traza_atencion->consultar();
                $cadena="";
                foreach($lista as $datos){
                    $cadena.=print_timeline($datos['fecha_avance'],$datos['avances']);
                }
                if($cadena == ""){
                    $cadena="<br><br><h5 style=\"text-align: center;\">Sin Información</h5>";
                }
                echo "<script>";
                    echo "$('#id_traza').val('".$_POST['id']."');";
                    echo "$('#id_patencion').val('". $_SESSION['seleccion']."');";
                    echo "$('#timeline2').html('".$cadena."');";
                echo "</script>";
            break;
        case '14':
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $comentario_traza_atencion->setId();
                $comentario_traza_atencion->setId_punto_atencion($_POST['id_patencion']);
                $comentario_traza_atencion->setId_traza_atencion($_POST['id_traza']);
                $comentario_traza_atencion->setAvances(str_replace("'","\"",$_POST['documentacion']));
                $comentario_traza_atencion->setFecha_avance(date("Y-m-d H:i:s", $time));
                $comentario_traza_atencion->setEstatus(1);
                echo "<script>";
                if($comentario_traza_atencion->registrar()==true){
                    echo 'toastr.success("Nuevo Comentario Registrado");';
                    echo "$('#form-comment').hide();";
                    echo "cargar_comentario(".$_POST['id_traza'].");";
                    echo "cargarData(8);";
                }
                echo "</script>";
            break;
        case '15':#function for 
            # code...
                $traza_atencion->setId_punto_atencion($_SESSION['seleccion']);
                $traza_atencion->setId2($_POST['id']);
                $traza_atencion->consultar2();
                
                echo $traza_atencion->getAvances();
            break;
        case '16':
            # code...
                echo "<script>";
                    $traza_atencion->setId2($_POST['id_traza2']);
                    if($traza_atencion->actualizar("avances",str_replace("'","\"",$_POST['documentacion4'])) == true){
                        echo "cargarData(8);";
                        echo 'toastr.success("Avance Actualizado");';
                    }
                echo "</script>";
            break;
        case '17':
            # code...
                echo "<script>";
                    $traza_atencion->setId2($_POST['traza']);
                    if($traza_atencion->actualizar("estado",2) == true){
                        echo "cargarData(8);";
                        echo 'toastr.success("Avance Eliminado");';
                    }
                echo "</script>";
            break;
        case '18':#opcion para agregar asignatarios
            # code...
                function validar($lista,$usuario){
                    reset($lista);
                    if($lista!=false){
                        foreach($lista as $datos){

                            if($usuario==$datos['usuario']){
                              
                                return false;
                            }else{
                                 
                                return true;
                            }
                        }
                    }else{
                        return true;
                    }
                }
                $asignatario_punto_atencion->setId_punto_atencion($_SESSION['seleccion']);
                $asignatario_punto_atencion->setEstatus(1);
                $lista=$asignatario_punto_atencion->consultar2();
                $usuario=$_POST['selectAsignatarios'];
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $notificacion->setId();
                $notificacion->setUsuarioRemitente($_SESSION["usuario"]);
                $notificacion->setEstatus(1);
                $notificacion->setFecha(date("Y-m-d H:i:s", $time));
                $notificacion->setAsunto("Asignado Punto de Atencion nro:".$_SESSION["seleccion"]);
                $notificacion->registrar();
                echo "<script>";
                for ($i=0;$i<count($usuario);$i++){   
                    $asignatario_punto_atencion->setUsuario($usuario[$i]); 
                    if(validar($lista,$usuario[$i])==true){
                        if($asignatario_punto_atencion->registrar()==true){
                            echo 'toastr.success("Asignatario '.$usuario[$i].' Registrado");';                            
                            $notificacionReceptor->setId($notificacion->getId());
                            $notificacionReceptor->setEstatus(1);
                            $notificacionReceptor->setUsuarioReceptor($usuario[$i]);
                            $notificacionReceptor->registrar();
                        }else{
                            echo 'toastr.error("No se pudo registrar Asignatario '.$usuario[$i].'");';
                        }
                    }else{
                        echo 'toastr.error("No se pudo registrar Asignatario '.$usuario[$i].'");';
                    }   
                } 
                echo "</script>";
                    
            break;
        case '19':
            # code...
            echo json_encode($sesion->consultar_select2());  
            break;
        case '20':
            # code...
                $asignatario_punto_atencion->setId_punto_atencion($_SESSION['seleccion']);
                $asignatario_punto_atencion->setUsuario($_POST['usuario']);  
                echo "<script>";
                
                if($asignatario_punto_atencion->eliminar()==true){
                    echo 'toastr.success("Asignatario '.$_POST['usuario'].' Eliminado");';
                }else{
                    echo 'toastr.error("No se pudo eliminar Asignatario '.$_POST['usuario'].'");';
                }
                  
                echo "</script>";
            break;
        case '21':
            $asignatario_punto_atencion->setUsuario($_SESSION['usuario']);  
            echo json_encode($asignatario_punto_atencion->buscar_caso()); 
            break;
        default: print "Opcion no Disponible";
        	break;
    }



?>
