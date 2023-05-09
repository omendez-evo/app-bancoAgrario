<?php 
	session_start();
    
	require_once '../modelo/estado.php';
	require_once '../modelo/sesion.php';
    require_once '../modelo/iniciativas.php';
    require_once '../modelo/notificacion.php';
    require_once '../modelo/notificacion_receptor.php';
    require_once '../modelo/asignatario_iniciativas.php';
    require_once '../modelo/iniciativa_tarea.php';
    require_once '../modelo/tareas_fechas.php';


	$estado= new estado();
	$sesion= new sesion();
    $iniciativas= new iniciativas();
    $notificacion= new notificacion();
    $notificacionReceptor= new notificacionReceptor();
    $asignatario_iniciativas= new asignatario_iniciativas();
    $iniciativa_tarea= new iniciativa_tarea();
    $tareas_fechas= new tareas_fechas();
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
        case '2':#option for save data the iniciativa
            # code...
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $descripcion=str_replace("'","\"",$_POST['inputDescripcion']);
                $descripcion=preg_replace("/[\r\n|\n|\r]+/"," ",$descripcion);
                $iniciativas->setId();
                $iniciativas->setEstado(1);
                $iniciativas->setFecha_creacion(date("Y-m-d H:i:s", $time));
                $iniciativas->setDescripcion($descripcion);
                $iniciativas->setIniciativa($_POST['inputTitulo']);
                echo $iniciativas->registrar();
                   
            break;
        case '3':#function for data show
            # code...
                echo json_encode($iniciativas->consultar_activos());  

            break;
        case '4':#function for 
            # code...
                 function print_descrip($documentacion){
                    return str_replace("\n","<br>",$documentacion);
                    
                }
                function calculodiferencia($inicio,$final){
                    $ini = new DateTime($inicio);
                    $fin   = new DateTime($final);
                    $dteDiff  = $ini->diff($fin);
                    
                    $parte = explode(":", $dteDiff->format("%d:%H:%I:%S"));
                    $total=0;
                    $total += $parte[3] + $parte[2]*60 + $parte[1]*3600;
                    if($parte[0]>=1){

                        $total +=$parte[0]*86400;
                    }
                //print($dteDiff->format("%H:%I:%S"));
                
                    return $total;
                }
                $iniciativas->setId2($_SESSION['seleccion']);
                $iniciativas->consultar();
                $asignatario_iniciativas->setIdIniciativa($_SESSION['seleccion']);
                $lista_asignatario=$asignatario_iniciativas->consultar();


                $iniciativa_tarea->setIdiniciativa($_SESSION['seleccion']);
                $lista=$iniciativa_tarea->consultar3();
                $arreglo = array();
                $valida=true;
                foreach($lista as $datos){
                    $tareas_fechas->setIdtarea($datos['id']);
                    $lista2=$tareas_fechas->buscar_fecha();
                    foreach($lista2 as $datos2){
                        if($datos2['fecha_fin'] == null){
                            $valida=false;
                            ini_set('date.timezone', 'America/Bogota');
                            $time = time();
                            $final=date("Y-m-d H:i:s", $time);
                            $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$final);
                        }else{
                            $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$datos2['fecha_fin']);
                        }
                    }
                }
                $total=0;
                foreach($arreglo as $h) {
                    $total += $h;  
                }
                $horas = floor($total / 3600);
                $minutos = floor(($total - ($horas * 3600)) / 60);
                $segundos = $total - ($horas * 3600) - ($minutos * 60);

                echo"
                    <script>
                        var tiempo = {
                            hora: ".$horas.",
                            minuto: ".$minutos.",
                            segundo: ".$segundos."
                        };
                        $(document).ready(function(){
                            $('#identificador').html('".$_SESSION['seleccion']."');
                            $('#titulo').html('".$iniciativas->getIniciativa()."');
                            $('#selectEstado').val('".$iniciativas->getEstado()."');
                            $('#selectAsignatarios').val(".$lista_asignatario.").trigger('change');
                            $('#descripcion').html('".$iniciativas->getDescripcion()."');
                    ";
                    if($iniciativas->getEstado()>=3){
                        echo "$('#selectEstado').attr('disabled','disabled');";
                        echo "$('#selectAsignatarios').attr('disabled','disabled');";
                    }
                    if ($valida==true){
                        echo "
                            $('#horas').text(tiempo.hora < 10 ? '0' + tiempo.hora +' :' : tiempo.hora +' :');
                            $('#minutos').text(tiempo.minuto < 10 ? '0' + tiempo.minuto +' :' : tiempo.minuto +' :');
                            $('#segundos').text(tiempo.segundo < 10 ? '0' + tiempo.segundo : tiempo.segundo);
                        ";
                    }else{
                        echo "
                            var tiempo_corriendo = null;
                            tiempo_corriendo = setInterval(function(){
                                // Segundos
                                tiempo.segundo++;
                                if(tiempo.segundo >= 60)
                                {
                                    tiempo.segundo = 0;
                                    tiempo.minuto++;
                                }      

                                // Minutos
                                if(tiempo.minuto >= 60)
                                {
                                    tiempo.minuto = 0;
                                    tiempo.hora++;
                                }
                                $('#horas').text(tiempo.hora < 10 ? '0' + tiempo.hora +' :' : tiempo.hora +' :');
                                $('#minutos').text(tiempo.minuto < 10 ? '0' + tiempo.minuto +' :' : tiempo.minuto +' :');
                                $('#segundos').text(tiempo.segundo < 10 ? '0' + tiempo.segundo : tiempo.segundo);
                            }, 1000);
                            sessionStorage.tiempo_corriendo = tiempo_corriendo;
                            ";
                    }
                
                echo "  })
                    </script>";
            break;
        case '5':#edit switch
                $iniciativas->setId2($_SESSION['seleccion']);
                echo "<script>";
                switch ($_POST['caso']) {
                    case '3':
                            if($iniciativas->actualizar("id_prioridad",$_POST['selectPrioridad'])== true){
                                echo 'toastr.success("Prioridad Actualizada");';
                            }
                        break;
                    case '4':
                            if($iniciativas->actualizar("estado",$_POST['selectEstado'])== true){
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
                        header("location: ../view/adm/detalle_iniciativa.php");  
                        break;
                    case '3':// perfil
                        header("location: ../view/visitante/detalle_iniciativa.php");    
                        break;
                    case '4':// perfil
                        header("location: ../view/n2/detalle_iniciativa.php");    
                        break;
                    default:
                        # code...
                        break;
                }
            break;
        case '7':#registrar nueva tarea de iniciativa
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $iniciativa_tarea->setId();
                $iniciativa_tarea->setEstado(2);
                $iniciativa_tarea->setUsuario($_SESSION["usuario"]);
                $iniciativa_tarea->setIdiniciativa($_SESSION['seleccion']);
                $iniciativa_tarea->setDescripcion(str_replace("'","\"",$_POST['documentacion']));
                $iniciativa_tarea->setFechacreacion(date("Y-m-d H:i:s", $time));
                echo "<script>";
                if($iniciativa_tarea->registrar()==true){
                    ini_set('date.timezone', 'America/Bogota');
                    $time = time();
                    $asignatario_iniciativas->setIdIniciativa($_SESSION['seleccion']);
                    $asignatario_iniciativas->setEstatus(1);
                    $lista=$asignatario_iniciativas->consultar2();
                    $notificacion->setId();
                    $notificacion->setUsuarioRemitente($_SESSION["usuario"]);
                    $notificacion->setEstatus(1);
                    $notificacion->setFecha(date("Y-m-d H:i:s", $time));
                    $notificacion->setAsunto("Nuevo Tarea en iniciativa nro:".$_SESSION["seleccion"]);
                    $notificacion->registrar();
                    $enviados = array();
                    if($lista!=false){
                        $notificacionReceptor->setId($notificacion->getId());
                        $notificacionReceptor->setEstatus(1);
                        foreach($lista as $datos){//envia a asignatarios asignados
                            $notificacionReceptor->setUsuarioReceptor($datos['usuario']);
                            $notificacionReceptor->registrar();
                            array_push($enviados,$datos['usuario']);
                        }
                    }
                    $sesion->setId_tipo_usuario(1);
                    $lista=$sesion->listar();
                    if($lista!=false){
                        $notificacionReceptor->setId($notificacion->getId());
                        $notificacionReceptor->setEstatus(1);
                        foreach($lista as $datos){
                            if(in_array($datos['usuario'], $enviados) == false){
                                $notificacionReceptor->setUsuarioReceptor($datos['usuario']);
                                $notificacionReceptor->registrar();
                            }
                        }
                    }

                        echo 'toastr.success("Nueva Tarea Registrada");';
                    echo "cargarData(10);";
                    echo "$('#modal-nuevo').modal('hide');";

                }
                echo "</script>";
            break;
        case '8':#carga tarea
                function print_timeline($fecha,$iniciativa_tarea,$id,$usuario,$tareas_fechas){
                    $iniciativas= str_replace("\n","<br>",$iniciativa_tarea);
                    $tareas_fechas->setIdtarea($id);
                    switch ($_SESSION["id_tipo_usuario"]) {
                    case '1':// perfil     
                        if($tareas_fechas->validar_reloj()==true){
                            $reloj="<strong><span id=\"horas-".$id."\"></span><span id=\"minutos-".$id."\"></span><span id=\"segundos-".$id."\"></span></strong><button id=\"stop-".$id."\" class=\"btn btn-outline-default btn-icon\" onclick=\"detener_reloj(".$id.")\"><i class=\"fas fa-pause\" style=\"color:red\"></i></button><button id=\"start-".$id."\" class=\"btn btn-outline-default btn-icon\" onclick=\"iniciar_reloj(".$id.")\" disabled><i class=\"fas fa-play\"></i></button>";
                        }else{
                            $reloj="<strong><span id=\"horas-".$id."\"></span><span id=\"minutos-".$id."\"></span><span id=\"segundos-".$id."\"></span></strong><button id=\"stop-".$id."\" class=\"btn btn-outline-default btn-icon\" onclick=\"detener_reloj(".$id.")\" disabled><i class=\"fas fa-pause\"></i></button><button id=\"start-".$id."\" class=\"btn btn-outline-default btn-icon\" onclick=\"iniciar_reloj(".$id.")\"><i class=\"fas fa-play\" style=\"color:green\"></i></button>";
                        }      
                       return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."<br>".$usuario."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card shadow-sm\"><div class=\"row\"><div class=\"col-md-7\"></div><div class=\"col-md-5\">".$reloj."<button class=\"btn btn-outline-default btn-icon\" id=\"tarea-edit-".$id."\" onclick=\"edit_avances(".$id.")\"><i class=\"far fa-edit\"></i></button><select onchange=\"estado_avances(".$id.")\" id=\"tarea-estado-".$id."\"><option value=1>Abierto</option><option value=2>En proceso</option><option value=3>Cerrado</option><option value=4>Transferido</option><option value=5>Cancelado</option></select></div></div><div class=\"card-body\">".$iniciativas."</div></div></div></div>";
                    case '4':// perfil
                        if($tareas_fechas->validar_reloj()==true){
                            $reloj="<strong><span id=\"horas-".$id."\"></span><span id=\"minutos-".$id."\"></span><span id=\"segundos-".$id."\"></span></strong><button id=\"stop-".$id."\" class=\"btn btn-outline-default btn-icon\" onclick=\"detener_reloj(".$id.")\"><i class=\"fas fa-pause\" style=\"color:red\"></i></button><button id=\"start-".$id."\" class=\"btn btn-outline-default btn-icon\" onclick=\"iniciar_reloj(".$id.")\" disabled><i class=\"fas fa-play\"></i></button>";
                        }else{
                            $reloj="<strong><span id=\"horas-".$id."\"></span><span id=\"minutos-".$id."\"></span><span id=\"segundos-".$id."\"></span></strong><button id=\"stop-".$id."\" class=\"btn btn-outline-default btn-icon\" onclick=\"detener_reloj(".$id.")\" disabled><i class=\"fas fa-pause\"></i></button><button id=\"start-".$id."\" class=\"btn btn-outline-default btn-icon\" onclick=\"iniciar_reloj(".$id.")\"><i class=\"fas fa-play\" style=\"color:green\"></i></button>";
                        }   
                        /*
                        "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."<br>".$usuario."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card shadow-sm\"><div class=\"row\"><div class=\"col-md-8\"></div><div class=\"col-md-4\">".$reloj."<button class=\"btn btn-outline-default btn-icon\" onclick=\"edit_avances(".$id.")\"><i class=\"far fa-edit\"></i><select onchange=\"estado_avances(".$id.")\" id=\"tarea-estado-".$id."\"><option value=1>Abierto</option><option value=2>En proceso</option><option value=3>Cerrado</option><option value=4>Transferido</option><option value=5>Cancelado</option></select></div></div><div class=\"card-body\">".$iniciativas."</div></div></div></div>";*/   
                      return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."<br>".$usuario."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card shadow-sm\"><div class=\"row\"><div class=\"col-md-7\"></div><div class=\"col-md-5\">".$reloj."<button class=\"btn btn-outline-default btn-icon\" id=\"tarea-edit-".$id."\" onclick=\"edit_avances(".$id.")\"><i class=\"far fa-edit\"></i></button><select onchange=\"estado_avances(".$id.")\" id=\"tarea-estado-".$id."\"><option value=1>Abierto</option><option value=2>En proceso</option><option value=3>Cerrado</option><option value=4>Transferido</option><option value=5>Cancelado</option></select></div></div><div class=\"card-body\">".$iniciativas."</div></div></div></div>";
                    case '3':// perfil
                        $reloj="<strong>Tiempo: <span id=\"horas-".$id."\"></span><span id=\"minutos-".$id."\"></span><span id=\"segundos-".$id."\"></span></strong>";     
                        return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card shadow-sm\"><div class=\"row\"><div class=\"col-md-8\"></div><div class=\"col-md-4\">".$reloj."</div></div><div class=\"card-body\">".$iniciativas."</div></div></div></div>";    
                        break;
                    default:
                        # code...
                        break;
                }
                    
                }
                $iniciativa_tarea->setIdiniciativa($_SESSION['seleccion']);
                $lista=$iniciativa_tarea->consultar();
                $cadena="";
                foreach($lista as $datos){
                    $cadena.=print_timeline($datos['fecha_creacion'],$datos['descripcion'],$datos['id'],$datos['usuario'],$tareas_fechas);
                    $cadena.= "<script>
                        $('#tarea-estado-".$datos['id']."').val(".$datos['estado'].");
                    ";
                    if($datos['estado']>=3){
                        $cadena.="
                            $('#stop-".$datos['id']."').attr('disabled','disabled');
                            $('#start-".$datos['id']."').attr('disabled','disabled');
                            $('#tarea-edit-".$datos['id']."').attr('disabled','disabled');
                            $('#tarea-estado-".$datos['id']."').attr('disabled','disabled');
                        ";
                    }
                        
                    $cadena.="</script>";
                }
                if($cadena == ""){
                    $cadena="<br><br><h5 style=\"text-align: center;\">Sin Información</h5>";
                }
                echo $cadena;
            break;
        case '9':#option for close iniciativas 
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $iniciativas->setId2($_SESSION['seleccion']);
                if($iniciativas->actualizar("estado",$_POST['estado'])== true){
                    echo $iniciativas->actualizar("fecha_fin",date("Y-m-d H:i:s", $time));
                    ini_set('date.timezone', 'America/Bogota');
                    $time = time();
                    $asignatario_iniciativas->setIdIniciativa($_SESSION['seleccion']);
                    $asignatario_iniciativas->setEstatus(1);
                    $lista=$asignatario_iniciativas->consultar2();
                    $notificacion->setId();
                    $notificacion->setUsuarioRemitente($_SESSION["usuario"]);
                    $notificacion->setEstatus(1);
                    $notificacion->setFecha(date("Y-m-d H:i:s", $time));
                    $notificacion->setAsunto("Cerrado Iniciativa nro:".$_SESSION["seleccion"]);
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
                        $ruta="location: ../view/adm/detalle_iniciativa.php";  
                        break;
                    case '3':// perfil
                        $ruta="location: ../view/visitante/detalle_iniciativa.php";    
                        break;
                    case '4':// perfil
                        $ruta="location: ../view/n2/detalle_iniciativa.php";    
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
                        $ruta="location: ../view/adm/detalle_iniciativa.php";  
                        break;
                    case '3':// perfil
                        $ruta="location: ../view/visitante/detalle_iniciativa.php";    
                        break;
                    case '4':// perfil
                        $ruta="location: ../view/n2/detalle_iniciativa.php";    
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
                echo json_encode($iniciativas->historial($_POST['fecha_inicio'],$_POST['fecha_final']));

            break;
        case '13':#function for show data comment 
            # code...
                function print_timeline($fecha,$iniciativa_tarea){
                    $iniciativas= str_replace("\n","<br>",$iniciativa_tarea);
                    return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card-body\">".$iniciativas."</div></div></div></div>";
                }
                $comentario_iniciativa_tarea->setId_iniciativa_tarea($_POST['id']);
                $lista=$comentario_iniciativa_tarea->consultar();
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
                $comentario_iniciativa_tarea->setId();
                $comentario_iniciativa_tarea->setId_iniciativas($_POST['id_patencion']);
                $comentario_iniciativa_tarea->setId_iniciativa_tarea($_POST['id_traza']);
                $comentario_iniciativa_tarea->setAvances(str_replace("'","\"",$_POST['documentacion']));
                $comentario_iniciativa_tarea->setFecha_avance(date("Y-m-d H:i:s", $time));
                $comentario_iniciativa_tarea->setEstatus(1);
                echo "<script>";
                if($comentario_iniciativa_tarea->registrar()==true){
                    echo 'toastr.success("Nuevo Comentario Registrado");';
                    echo "$('#form-comment').hide();";
                    echo "cargar_comentario(".$_POST['id_traza'].");";
                    echo "cargarData(8);";
                }
                echo "</script>";
            break;
        case '15':#function for 
            # code...
                $iniciativa_tarea->setIdiniciativa($_SESSION['seleccion']);
                $iniciativa_tarea->setId2($_POST['id']);
                $iniciativa_tarea->consultar2();
                
                echo $iniciativa_tarea->getDescripcion();
            break;
        case '16':
            # code...
                echo "<script>";
                    $iniciativa_tarea->setId2($_POST['id_tarea2']);
                    if($iniciativa_tarea->actualizar("descripcion",str_replace("'","\"",$_POST['documentacion4'])) == true){
                        echo "cargarData(10);";
                        echo 'toastr.success("Descripcion Actualizada");';
                    }
                echo "</script>";
            break;
        case '17':
            # code...
                echo "<script>";
                    $iniciativa_tarea->setId2($_POST['tarea']);
                    if($iniciativa_tarea->actualizar("estado",2) == true){
                        echo "cargarData(10);";
                        echo 'toastr.success("Tarea Eliminada");';
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
                $asignatario_iniciativas->setIdIniciativa($_SESSION['seleccion']);
                $asignatario_iniciativas->setEstatus(1);
                $lista=$asignatario_iniciativas->consultar2();
                $usuario=$_POST['selectAsignatarios'];
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $notificacion->setId();
                $notificacion->setUsuarioRemitente($_SESSION["usuario"]);
                $notificacion->setEstatus(1);
                $notificacion->setFecha(date("Y-m-d H:i:s", $time));
                $notificacion->setAsunto("Asignado iniciativa nro:".$_SESSION["seleccion"]);
                $notificacion->registrar();
                echo "<script>";
                for ($i=0;$i<count($usuario);$i++){   
                    $asignatario_iniciativas->setUsuario($usuario[$i]); 
                    if(validar($lista,$usuario[$i])==true){
                        if($asignatario_iniciativas->registrar()==true){
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
                $asignatario_iniciativas->setIdIniciativa($_SESSION['seleccion']);
                $asignatario_iniciativas->setUsuario($_POST['usuario']);  
                echo "<script>";
                
                if($asignatario_iniciativas->eliminar()==true){
                    echo 'toastr.success("Asignatario '.$_POST['usuario'].' Eliminado");';
                }else{
                    echo 'toastr.error("No se pudo eliminar Asignatario '.$_POST['usuario'].'");';
                }
                  
                echo "</script>";
            break;
        case '21':
            $asignatario_iniciativas->setUsuario($_SESSION['usuario']);  
            echo json_encode($asignatario_iniciativas->buscar_caso()); 
            break;
        case '22':#funcion para agregar nueva hora a tarea.
            function calculodiferencia($inicio,$final){
                $ini = new DateTime($inicio);
                $fin   = new DateTime($final);
                $dteDiff  = $ini->diff($fin);
                
                $parte = explode(":", $dteDiff->format("%d:%H:%I:%S"));
                $total=0;
                $total += $parte[3] + $parte[2]*60 + $parte[1]*3600;
                if($parte[0]>=1){

                    $total +=$parte[0]*86400;
                }
                //print($dteDiff->format("%H:%I:%S"));
                
                return $total;
            }#funcion para calcular tiempo transcurrido
            $tareas_fechas->setUsuario($_SESSION['usuario']); 
            $tareas_fechas->setIdtarea($_POST['id']);
            $tareas_fechas->setId();
            ini_set('date.timezone', 'America/Bogota');
            $time = time();
            $tareas_fechas->setFechaInicio(date("Y-m-d H:i:s", $time));
            echo '<script>';
            if($tareas_fechas->registrar_inicio()==true){
                echo 'toastr.success("Reloj Iniciado");';
                echo '$("#start-'.$_POST['id'].'").attr("disabled","true");';
                echo '$("#start-'.$_POST['id'].' > svg").css("color", "#373c45");';
                echo '$("#stop-'.$_POST['id'].'").removeAttr("disabled");';
                echo '$("#stop-'.$_POST['id'].'").css("color", "red");';
                $valida=true;
                $arreglo = array();
                $lista2=$tareas_fechas->buscar_fecha();
                foreach($lista2 as $datos2){
                    if($datos2['fecha_fin'] == null){
                        $valida=false;
                        ini_set('date.timezone', 'America/Bogota');
                        $time = time();
                        $final=date("Y-m-d H:i:s", $time);
                        $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$final);
                    }else{
                        $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$datos2['fecha_fin']);
                    }
                }
                $total=0;
                foreach($arreglo as $h) {
                    $total += $h;  
                }
                $horas = floor($total / 3600);
                $minutos = floor(($total - ($horas * 3600)) / 60);
                $segundos = $total - ($horas * 3600) - ($minutos * 60);
                echo"
                    var tiempo".$_POST['id']." = {
                        hora: ".$horas.",
                        minuto: ".$minutos.",
                        segundo: ".$segundos."
                    };
                    var regex = /(\d+)/g;
                    var tiempo = {
                        hora: parseInt($('#horas').text().match(regex)),
                        minuto: parseInt($('#minutos').text().match(regex)),
                        segundo: parseInt($('#segundos').text().match(regex))
                    };
                    console.log($('#horas').val());
                
                    $(document).ready(function(){

                        var tiempo_corriendo".$_POST['id']." = null;
                        var tiempo_corriendo = null;
                        //tiempo general
                        tiempo_corriendo = setInterval(function(){
                            // Segundos
                            tiempo.segundo++;
                            if(tiempo.segundo >= 60)
                            {
                                tiempo.segundo = 0;
                                tiempo.minuto++;
                            }      

                            // Minutos
                            if(tiempo.minuto >= 60)
                            {
                                tiempo.minuto = 0;
                                tiempo.hora++;
                            }
                            $('#horas').text(tiempo.hora < 10 ? '0' + tiempo.hora +' :' : tiempo.hora +' :');
                            $('#minutos').text(tiempo.minuto < 10 ? '0' + tiempo.minuto +' :' : tiempo.minuto +' :');
                            $('#segundos').text(tiempo.segundo < 10 ? '0' + tiempo.segundo : tiempo.segundo);
                        }, 1000);
                        sessionStorage.tiempo_corriendo = tiempo_corriendo;
                        //tiempo tarea
                        tiempo_corriendo".$_POST['id']." = setInterval(function(){
                            // Segundos
                            tiempo".$_POST['id'].".segundo++;
                            if(tiempo".$_POST['id'].".segundo >= 60)
                            {
                                tiempo".$_POST['id'].".segundo = 0;
                                tiempo".$_POST['id'].".minuto++;
                            }      

                            // Minutos
                            if(tiempo".$_POST['id'].".minuto >= 60)
                            {
                                tiempo".$_POST['id'].".minuto = 0;
                                tiempo".$_POST['id'].".hora++;
                            }
                            $('#horas-".$_POST['id']."').text(tiempo".$_POST['id'].".hora < 10 ? '0' + tiempo".$_POST['id'].".hora +' :' : tiempo".$_POST['id'].".hora +' :');
                            $('#minutos-".$_POST['id']."').text(tiempo".$_POST['id'].".minuto < 10 ? '0' + tiempo".$_POST['id'].".minuto +' :' : tiempo".$_POST['id'].".minuto +' :');
                            $('#segundos-".$_POST['id']."').text(tiempo".$_POST['id'].".segundo < 10 ? '0' + tiempo".$_POST['id'].".segundo : tiempo".$_POST['id'].".segundo);
                        }, 1000);
                        sessionStorage.tiempo_corriendo".$_POST['id']." = tiempo_corriendo".$_POST['id'].";
                        })
                    ";
            }else{
                echo 'toastr.error("No se pudo inicar Reloj");';
            }
            echo '</script>';
            break;
        case '23':#funcion para detener reloj.
            ini_set('date.timezone', 'America/Bogota');
            $time = time();
            echo '<script>';
            if($tareas_fechas->actualizar("fecha_fin",date("Y-m-d H:i:s", $time),$_POST['id'])==true){
                echo 'toastr.success("Reloj Detenido");';
                echo '$("#stop-'.$_POST['id'].'").attr("disabled","true");';
                echo '$("#stop-'.$_POST['id'].' > svg").css("color", "#373c45");';
                echo '$("#start-'.$_POST['id'].'").removeAttr("disabled");';
                echo '$("#start-'.$_POST['id'].'").css("color", "green");';
                echo 'clearInterval(sessionStorage.tiempo_corriendo'.$_POST['id'].');';
                echo 'clearInterval(sessionStorage.tiempo_corriendo);';
            }else{
                echo 'toastr.error("No se pudo Detener Reloj");';
            }
            echo '</script>';
            break;
        case '24':
                function calculodiferencia($inicio,$final){
                    $ini = new DateTime($inicio);
                    $fin   = new DateTime($final);
                    $dteDiff  = $ini->diff($fin);
                    
                    $parte = explode(":", $dteDiff->format("%d:%H:%I:%S"));
                    $total=0;
                    $total += $parte[3] + $parte[2]*60 + $parte[1]*3600;
                    if($parte[0]>=1){

                        $total +=$parte[0]*86400;
                    }
                    //print($dteDiff->format("%H:%I:%S"));
                    
                    return $total;
                }#funcion para calcular tiempo transcurrido
                $iniciativa_tarea->setIdiniciativa($_SESSION['seleccion']);
                $lista=$iniciativa_tarea->consultar3();
                foreach($lista as $datos){
                    $valida=true;
                    $arreglo = array();
                    $tareas_fechas->setIdtarea($datos['id']);
                    $lista2=$tareas_fechas->buscar_fecha();
                    foreach($lista2 as $datos2){
                        if($datos2['fecha_fin'] == null){
                            $valida=false;
                            ini_set('date.timezone', 'America/Bogota');
                            $time = time();
                            $final=date("Y-m-d H:i:s", $time);
                            $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$final);
                        }else{
                            $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$datos2['fecha_fin']);
                        }
                    }
                    $total=0;
                    foreach($arreglo as $h) {
                        $total += $h;  
                    }
                    $horas = floor($total / 3600);
                    $minutos = floor(($total - ($horas * 3600)) / 60);
                    $segundos = $total - ($horas * 3600) - ($minutos * 60);
                    echo"
                    <script>
                        var tiempo".$datos['id']." = {
                            hora: ".$horas.",
                            minuto: ".$minutos.",
                            segundo: ".$segundos."
                        };
                    ";
                    if ($valida==true){
                        echo "
                            $('#horas-".$datos['id']."').text(tiempo".$datos['id'].".hora < 10 ? '0' + tiempo".$datos['id'].".hora +' :' : tiempo".$datos['id'].".hora +' :');
                            $('#minutos-".$datos['id']."').text(tiempo".$datos['id'].".minuto < 10 ? '0' + tiempo".$datos['id'].".minuto +' :' : tiempo".$datos['id'].".minuto +' :');
                            $('#segundos-".$datos['id']."').text(tiempo".$datos['id'].".segundo < 10 ? '0' + tiempo".$datos['id'].".segundo : tiempo".$datos['id'].".segundo);
                        ";
                    }else{
                        echo "
                                $(document).ready(function(){

                            var tiempo_corriendo".$datos['id']." = null;
                            
                            tiempo_corriendo".$datos['id']." = setInterval(function(){
                                // Segundos
                                tiempo".$datos['id'].".segundo++;
                                if(tiempo".$datos['id'].".segundo >= 60)
                                {
                                    tiempo".$datos['id'].".segundo = 0;
                                    tiempo".$datos['id'].".minuto++;
                                }      

                                // Minutos
                                if(tiempo".$datos['id'].".minuto >= 60)
                                {
                                    tiempo".$datos['id'].".minuto = 0;
                                    tiempo".$datos['id'].".hora++;
                                }
                                $('#horas-".$datos['id']."').text(tiempo".$datos['id'].".hora < 10 ? '0' + tiempo".$datos['id'].".hora +' :' : tiempo".$datos['id'].".hora +' :');
                                $('#minutos-".$datos['id']."').text(tiempo".$datos['id'].".minuto < 10 ? '0' + tiempo".$datos['id'].".minuto +' :' : tiempo".$datos['id'].".minuto +' :');
                                $('#segundos-".$datos['id']."').text(tiempo".$datos['id'].".segundo < 10 ? '0' + tiempo".$datos['id'].".segundo : tiempo".$datos['id'].".segundo);
                            }, 1000);
                            sessionStorage.tiempo_corriendo".$datos['id']." = tiempo_corriendo".$datos['id'].";
                            })
                        ";
                    }
                    echo"</script>";
                }
            break;
        case '25':#Opcion para mostrar en tablero cantidad horas iniciativas 
                function calculodiferencia($inicio,$final){
                    $ini = new DateTime($inicio);
                    $fin   = new DateTime($final);
                    $dteDiff  = $ini->diff($fin);
                    
                    $parte = explode(":", $dteDiff->format("%d:%H:%I:%S"));
                    $total=0;
                    $total += $parte[3] + $parte[2]*60 + $parte[1]*3600;
                    if($parte[0]>=1){

                        $total +=$parte[0]*86400;
                    }
                    //print($dteDiff->format("%H:%I:%S"));
                    
                    return $total;
                }#funcion para calcular tiempo transcurrido
                $lista2=$tareas_fechas->horas_total();
                $valida=true;
                $arreglo = array();
                foreach($lista2 as $datos2){
                    if($datos2['fecha_fin'] == null){
                        $valida=false;
                        ini_set('date.timezone', 'America/Bogota');
                        $time = time();
                        $final=date("Y-m-d H:i:s", $time);
                        $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$final);
                    }else{
                        $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$datos2['fecha_fin']);
                    }
                }
                $total=0;
                foreach($arreglo as $h) {
                    $total += $h;  
                }
                $horas = floor($total / 3600);
                $minutos = floor(($total - ($horas * 3600)) / 60);
                $segundos = $total - ($horas * 3600) - ($minutos * 60);
                #calculo horas restantes
                $horasContratadas = 756;
                $conversionSegundos= $horasContratadas * 3600;
                echo "<script>";
                if($total<=$conversionSegundos){
                    $total_a=$conversionSegundos-$total;
                    $horas_a = floor($total_a / 3600);
                    $minutos_a = floor(($total_a - ($horas_a * 3600)) / 60);
                    $segundos_a = $total_a - ($horas_a * 3600) - ($minutos_a * 60);
                    echo "
                        $('#indicador-hora').addClass('badge badge-success');
                        $('#horas_messages').html('Horas Restantes:');

                    ";
                }else{
                    $total_a=$total-$conversionSegundos;
                    $horas_a = floor($total_a / 3600);
                    $minutos_a = floor(($total_a - ($horas_a * 3600)) / 60);
                    $segundos_a = $total_a - ($horas_a * 3600) - ($minutos_a * 60);
                    echo "
                        $('#indicador-hora').addClass('badge badge-danger');
                        $('#horas_messages').html('Horas excedidas');

                    ";

                }
                echo"
                    var tiempo = {
                        hora: ".$horas.",
                        minuto: ".$minutos.",
                        segundo: ".$segundos.",
                        hora_a: ".$horas_a.",
                        minuto_a: ".$minutos_a.",
                        segundo_a: ".$segundos_a."
                    };
                    $('#horas').text(tiempo.hora < 10 ? '0' + tiempo.hora +' :' : tiempo.hora +' :');
                    $('#minutos').text(tiempo.minuto < 10 ? '0' + tiempo.minuto +' :' : tiempo.minuto +' :');
                    $('#segundos').text(tiempo.segundo < 10 ? '0' + tiempo.segundo : tiempo.segundo);
                    $('#horas_a').text(tiempo.hora_a < 10 ? '0' + tiempo.hora_a +' :' : tiempo.hora_a +' :');
                    $('#minutos_a').text(tiempo.minuto_a < 10 ? '0' + tiempo.minuto_a +' :' : tiempo.minuto_a +' :');
                    $('#segundos_a').text(tiempo.segundo_a < 10 ? '0' + tiempo.segundo_a : tiempo.segundo_a);
                    ";
                echo"</script>";
            break;
        case '26':#function for data show
            # code...
                echo json_encode($iniciativas->consultar_horas());  
            break;
        case '27':
                $iniciativa_tarea->setId2($_POST['tarea-id']);
                if($iniciativa_tarea->actualizar("estado",(int) $_POST['tarea-estado']) == true){
                    $iniciativa_tarea->actualizar("observacion",$_POST['observacion']);
                }
            break;
        default: print "Opcion no Disponible";
        	break;
    }



?>
