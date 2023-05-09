<?php 
	session_start();
	require_once '../modelo/grupo.php';
	require_once '../modelo/area.php';
	require_once '../modelo/estado.php';
	require_once '../modelo/prioridad.php';
	require_once '../modelo/sesion.php';
    require_once '../modelo/incidente.php';
    require_once '../modelo/documentacion_incidente.php';


	$grupo= new grupo();
	$area= new area();
	$estado= new estado();
	$prioridad= new prioridad();
	$sesion= new sesion();
    $incidente= new incidente();
    $documentacion= new documentacion_incidente();
    
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
                    echo "$('#selectGrupo').html('".select($grupo->consultar_activos(),"grupo")."');";
                    echo "$('#selectEstado').html('".select($estado->consultar_activos(),"estado")."');";
                    echo "$('#selectArea').html('".select($area->consultar_activos(),"area")."');";
                echo "</script>";

        	break;
        case '2':#option for save data the incidente
            # code...
                $incidente->setId($_POST['inputIncidente']);
                $incidente->setId_estado(1);
                $incidente->setId_prioridad($_POST['selectPrioridad']);
                $incidente->setFecha_inicio($_POST['fecha']." ".$_POST['hora']);

                $incidente->setId_grupo($_POST['selectGrupo']);
                if($_POST['selectGrupo']==0){
                    $incidente->setgrupo_otro($_POST['inputOtro']);
                }
                $incidente->setDescripcion($_POST['inputDescripcion']);
                $incidente->setId_area($_POST['selectArea']);
                $incidente->setResponsable($_POST['selectResponsable']);
                $incidente->setAfectados($_POST['inputAfectados']);
                echo $incidente->registrar();
                   
            break;
        case '3':#function for data show
            # code...
                echo json_encode($incidente->consultar_activos());  

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
                $incidente->setId($_SESSION['seleccion']);
                $incidente->consultar();
                $valida=true;
                if($incidente->getFecha_fin()== null){ 
                    ini_set('date.timezone', 'America/Bogota');
                    $valida=false;
                    $time = time();
                    $final=date("Y-m-d H:i:s", $time);
                }else{
                    $final=$incidente->getFecha_fin();
                }

                $total=calculodiferencia($incidente->getFecha_inicio(),$final);
                
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
                        };";
                if ($valida==true){
                    echo "
                        $('#inicio').show();
                        $('#horas').text(tiempo.hora < 10 ? '0' + tiempo.hora +' :' : tiempo.hora +' :');
                        $('#minutos').text(tiempo.minuto < 10 ? '0' + tiempo.minuto +' :' : tiempo.minuto +' :');
                        $('#segundos').text(tiempo.segundo < 10 ? '0' + tiempo.segundo : tiempo.segundo);
                        //$('#btn-edit').hide();
                        //$('#btn-nuevo').hide();

                    ";
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
                    echo "$('#selectArea').val('".$incidente->getId_area()."');";
                    echo "$('#inputDescripcion').val('".print_descrip($incidente->getDescripcion())."');";
                    echo "$('#selectGrupo').val('".$incidente->getId_grupo()."');";
                    echo "$('#selectPrioridad').val('".$incidente->getId_prioridad()."');";
                    echo "$('#selectResponsable').val('".$incidente->getResponsable()."');";
                    echo "$('#selectEstado').val('".$incidente->getId_estado()."');";
                    if($incidente->getId_estado()>2){
                        echo'$("#box-problem").hide();';
                    }
                    echo "$('#inputAfectados').val('".$incidente->getAfectados()."');";
                    if($incidente->getId_grupo()==0){
                        echo '
                        $("#inputOtro").val("'.$incidente->getgrupo_otro().'");
                        $("#selectGrupo").parent().removeClass("col-md-9");
                        $("#selectGrupo").parent().addClass("col-md-2");
                        $("#inputOtro").parent().show();';
                    }

                echo "</script>";
            break;
        case '5':#edit switch
                $incidente->setId($_SESSION['seleccion']);
                echo "<script>";
                switch ($_POST['caso']) {
                    case '1':
                            if($incidente->actualizar("descripcion",$_POST['inputDescripcion'])== true){
                                echo 'toastr.success("Descripción Actualizada");';
                            }
                        break;
                    case '2':
                            if($incidente->actualizar("id_area",$_POST['selectArea'])== true){
                                echo 'toastr.success("Area Actualizada");';
                            }
                        break;
                    case '3':
                            if($incidente->actualizar("id_prioridad",$_POST['selectPrioridad'])== true){
                                echo 'toastr.success("Prioridad Actualizada");';
                            }
                        break;
                    case '4':
                            if($incidente->actualizar("id_estado",$_POST['selectEstado'])== true){
                                echo 'toastr.success("Estado Actualizado");';
                            }
                        break;
                    case '5':
                            if($incidente->actualizar("responsable",$_POST['selectResponsable'])== true){
                                echo 'toastr.success("Responsable Actualizado");';
                            }
                        break;
                    case '6':
                            if($incidente->actualizar("afectados",$_POST['inputAfectados'])== true){
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
                        header("location: ../view/adm/detalle_incidente.php");
                        break;
                    case '2':// perfil noc
                        header("location: ../view/agente/detalle_incidente.php");
                        break;
                    case '3':// perfil visitante
                        header("location: ../view/visitante/detalle_incidente.php");   
                        break;
                    case '4':// perfil visitante
                        header("location: ../view/n2/detalle_incidente.php");   
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
                $documentacion->setId_incidente($_SESSION['seleccion']);
                $documentacion->setdocumentacion(str_replace("'","\"",$_POST['documentacion']));
                $documentacion->setFecha(date("Y-m-d H:i:s", $time));
                echo "<script>";
                if($documentacion->registrar()==true){
                    echo 'toastr.success("Documentación Registrada");';
                    echo "cargarData(4);";
                }
                echo "</script>";
            break;
        case '8':#carga timeline
                function print_timeline($fecha,$documentacion){
                    $dincidente= str_replace("\n","<br>",$documentacion);
                    return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card shadow-sm\"><div class=\"card-body\">".$dincidente."</div></div></div></div>";
                }
                $documentacion->setId_incidente($_SESSION['seleccion']);
                $lista=$documentacion->consultar();
                $cadena="";
                foreach($lista as $datos){
                    $cadena.=print_timeline($datos['fecha'],$datos['documentacion']);
                }
                echo "<script>";
                    echo "$('#timeline').html('".$cadena."');";
                echo "</script>";
            break;
        case '9':#option for close incidente 
                $incidente->setId($_SESSION['seleccion']);
                if($incidente->actualizar("id_estado",$_POST['estado'])== true){
                    echo $incidente->actualizar("fecha_fin",$_POST['fecha']." ".$_POST['hora']);
                }
            
            break;
        case '10':#option for close incidente and redirect controller problem 
                $incidente->setId($_SESSION['seleccion']);
                if($incidente->actualizar("id_estado",3)== true){
                    if($incidente->actualizar("fecha_fin",$_POST['fecha']." ".$_POST['hora'])){
                        header("location: controller_problem.php?opcion=10&id=".$_GET['id']);
                    }
                }
            
            break;
        case '11':#busqueda historial
            # code...
            echo json_encode($incidente->historial($_POST['fecha_inicio'],$_POST['fecha_final']));
            break;
        default: print "Opcion no Disponible";
        	break;
    }


?>
