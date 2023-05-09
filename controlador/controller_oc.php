<?php 
	session_start();
	require_once '../modelo/categoria.php';
	require_once '../modelo/area.php';
	require_once '../modelo/estado.php';
	require_once '../modelo/prioridad.php';
	require_once '../modelo/sesion.php';
    require_once '../modelo/oc.php';
    require_once '../modelo/documentacion_oc.php';

	$categoria= new categoria();
	$area= new area();
	$estado= new estado();
	$prioridad= new prioridad();
	$sesion= new sesion();
    $oc= new oc();
    $documentacion= new  documentacion_oc();
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

        		#cargar select de usuarios responsables
        		$lista= $sesion->consultar_select();
        		$cadena="";
        		foreach($lista as $datos){
            		$cadena.='<option value="'.$datos['usuario'].'">'.$datos['nombre_completo'].'</option>';
            	}
        		
                echo "<script>";
                	echo "$('#selectResponsable').html('".$cadena."');";
                    echo "$('#selectPrioridad').html('".select($prioridad->consultar_activos(),"prioridad")."');";
                    echo "$('#selectCategoria').html('".select($categoria->consultar_activos(),"categoria")."');";
                    echo "$('#selectEstado').html('".select($estado->consultar_activos(),"estado")."');";
                echo "</script>";

        	break;
        case '2':#option for save data the oc
            # code...
                $oc->setId($_POST['inputOC']);
                $oc->setId_estado(1);
                $oc->setId_prioridad($_POST['selectPrioridad']);
                $oc->setFecha_inicio($_POST['fecha']." ".$_POST['hora']);

                $oc->setId_categoria($_POST['selectCategoria']);
                if($_POST['selectCategoria']==0){
                    $oc->setCategoria_otro($_POST['inputOtro']);
                }
                $oc->setDescripcion($_POST['inputDescripcion']);
                $oc->setId_area($_POST['selectArea']);
                $oc->setResponsable($_POST['selectResponsable']);
                $oc->setAfectados($_POST['inputAfectados']);
                echo $oc->registrar();
                   
            break;
        case '3':#function for data show
            # code...
                echo json_encode($oc->consultar_activos());  

            break;
        case '4':#function for 
            # code...
                function print_descrip($documentacion){
                    return str_replace("\n"," ",$documentacion);
                    
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
                    
                    return $total;
                }
                $oc->setId($_SESSION['seleccion']);
                $oc->consultar();
                $valida=true;
                if($oc->getFecha_fin()== null){ 
                    ini_set('date.timezone', 'America/Bogota');
                    $valida=false;
                    $time = time();
                    $final=date("Y-m-d H:i:s", $time);
                }else{
                    $final=$oc->getFecha_fin();
                }
                
                $total=calculodiferencia($oc->getFecha_inicio(),$final);
                
                $horas = floor($total / 3600);
                $minutos = floor(($total - ($horas * 3600)) / 60);
                $segundos = $total - ($horas * 3600) - ($minutos * 60);
                //$partes=explode(":", gmdate("H:i:s", $total));
                echo "<script>";
                echo"
                        var tiempo = {
                            hora: ".$horas.",
                            minuto: ".$minutos.",
                            segundo: ".$segundos."
                        };
                    ";
                if ($valida==true){
                    echo "
                        $('#inicio').show();
                        $('#horas').text(tiempo.hora < 10 ? '0' + tiempo.hora +' :' : tiempo.hora +' :');
                        $('#minutos').text(tiempo.minuto < 10 ? '0' + tiempo.minuto +' :' : tiempo.minuto +' :');
                        $('#segundos').text(tiempo.segundo < 10 ? '0' + tiempo.segundo : tiempo.segundo);
                        $('#btn-nuevo').hide();
                    ";
                    if($_SESSION["id_tipo_usuario"]==2 || $_SESSION["id_tipo_usuario"]==3){
                        echo"$('#btn-nuevo').hide();";
                    }
                }else{
                    echo "
                        $(document).ready(function(){

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
                    });    
                    ";
                }
                    echo "$('#identificador').html('".$_SESSION['seleccion']."');";
                    echo "$('#selectArea').val('".$oc->getId_area()."');";
                    echo "$('#inputDescripcion').val('".print_descrip($oc->getDescripcion())."');";
                    echo "$('#selectCategoria').val('".$oc->getId_categoria()."');";
                    echo "$('#selectPrioridad').val('".$oc->getId_prioridad()."');";
                    echo "$('#selectResponsable').val('".$oc->getResponsable()."');";
                    echo "$('#selectEstado').val('".$oc->getId_estado()."');";
                    echo "$('#inputAfectados').val('".$oc->getAfectados()."');";
                    if($oc->getId_categoria()==0){
                        echo '
                        $("#inputOtro").val("'.$oc->getCategoria_otro().'");
                        $("#selectCategoria").parent().removeClass("col-md-9");
                        $("#selectCategoria").parent().addClass("col-md-2");
                        $("#inputOtro").parent().show();';
                    }

                echo "</script>";
            break;
        case '5':#edit switch
                $oc->setId($_SESSION['seleccion']);
                echo "<script>";
                switch ($_POST['caso']) {
                    case '1':
                            if($oc->actualizar("descripcion",$_POST['inputDescripcion'])== true){
                                echo 'toastr.success("Descripción Actualizada");';
                            }
                        break;
                    case '2':
                            if($oc->actualizar("id_area",$_POST['selectArea'])== true){
                                echo 'toastr.success("Area Actualizada");';
                            }
                        break;
                    case '3':
                            if($oc->actualizar("id_prioridad",$_POST['selectPrioridad'])== true){
                                echo 'toastr.success("Prioridad Actualizada");';
                            }
                        break;
                    case '4':
                            if($oc->actualizar("id_estado",$_POST['selectEstado'])== true){
                                echo 'toastr.success("Estado Actualizado");';
                            }
                        break;
                    case '5':
                            if($oc->actualizar("responsable",$_POST['selectResponsable'])== true){
                                echo 'toastr.success("Responsable Actualizado");';
                            }
                        break;
                    case '6':
                            if($oc->actualizar("afectados",$_POST['inputAfectados'])== true){
                                echo 'toastr.success("Afectados Actualizado");';
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
                    case '1':// perfil adm
                        header("location: ../view/adm/detalle_oc.php");
                        break;
                    case '2':// perfil noc
                        header("location: ../view/agente/detalle_oc.php");
                        break;
                    case '3':// perfil visitante
                        header("location: ../view/visitante/detalle_oc.php");   
                        break;
                    case '4':// perfil visitante
                        header("location: ../view/n2/detalle_oc.php");   
                        break;
                    default:
                        # code...
                        break;
                }
            break;
        case '7':#registrar nueva documentacion
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $documentacion->setId();
                $documentacion->setId_oc($_SESSION['seleccion']);
                $documentacion->setDocumentacion(str_replace("'","\"",$_POST['documentacion']));
                $documentacion->setFecha(date("Y-m-d H:i:s", $time));
                echo "<script>";
                if($documentacion->registrar()==true){
                    echo 'toastr.success("Documentación Registrada");';
                    echo "cargarData(2);";
                }
                echo "</script>";
            break;
        case '8':#carga timeline
                function print_timeline($fecha,$documentacion){
                    $doc= str_replace("\n","<br>",$documentacion);
                    return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card shadow-sm\"><div class=\"card-body\">".$doc."</div></div></div></div>";
                }
                $documentacion->setId_oc($_SESSION['seleccion']);
                $lista=$documentacion->consultar();
                $cadena="";
                foreach($lista as $datos){
                    $cadena.=print_timeline($datos['fecha'],$datos['documentacion']);
                }
                echo "<script>";
                    echo "$('#timeline').html('".$cadena."');";
                echo "</script>";
            break;
        case '9':#option for close oc 
                $oc->setId($_SESSION['seleccion']);
                if($oc->actualizar("id_estado",$_POST['estado'])== true){
                    echo $oc->actualizar("fecha_fin",$_POST['fecha']." ".$_POST['hora']);
                }
            
            break;
        case '10':
            # code...
            echo json_encode($oc->historial($_POST['fecha_inicio'],$_POST['fecha_final']));
            break;
        default: print "Opcion no Disponible";
        	break;
    }


?>
