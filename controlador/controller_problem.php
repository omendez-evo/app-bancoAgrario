<?php 
	session_start();
	require_once '../modelo/estado.php';
	require_once '../modelo/sesion.php';
    require_once '../modelo/problema.php';
    require_once '../modelo/incidente.php';

    require_once '../modelo/documentacion_problema.php';


	$estado= new estado();
	$sesion= new sesion();
    $problema= new problema();
    $documentacion= new documentacion_problema();
    
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
                    
                echo "</script>";

        	break;
        case '2':#option for save data the problema
            # code...
                $problema->setId($_POST['inputID']);
                $problema->setId_estado(1);
                $problema->setFecha_creacion($_POST['fecha']." ".$_POST['hora']);
                $problema->setDescripcion($_POST['inputDescripcion']);
                $problema->setResponsable($_POST['selectResponsable']);
                echo $problema->registrar();
                   
            break;
        case '3':#function for data show
            # code...
                echo json_encode($problema->consultar_activos());  

            break;
        case '4':#function for 
            # code...
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
                $problema->setId($_SESSION['seleccion']);
                $problema->consultar();

                $estimada = explode(" ",$problema->getFecha_estimada_solucion());
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $final=date("Y-m-d H:i:s", $time);
                $total=calculodiferencia($problema->getFecha_creacion(),$final);
                
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
                        
                    ";
                
                    echo "$('#identificador').html('".$_SESSION['seleccion']."');";
                    echo "$('#inputDescripcion').val('".$problema->getDescripcion()."');";
                    echo "$('#selectResponsable').val('".$problema->getResponsable()."');";
                    echo "$('#selectEstado').val('".$problema->getId_estado()."');";
                    echo "$('#inputCaso').val('".$problema->getCaso_fabricante()."');";
                    if($problema->getFecha_estimada_solucion()!=""){
                        echo "$('#fecha2').val('".$estimada[0]."');";
                        echo "$('#hora2').val('".$estimada[1]."');";
                    }
                    if($problema->getId_incidente()!=""){
                        echo "$('#box-incidente').show();";
                        echo "$('#incindente').html('<a href=\"../../controlador/controller_incidente.php?opcion=6&id=".$problema->getId_incidente()."\">".$problema->getId_incidente()."</a>');";

                    }
                    echo "});";


                echo "</script>";
            break;
        case '5':#edit switch
                $problema->setId($_SESSION['seleccion']);
                echo "<script>";
                switch ($_POST['caso']) {
                    case '1':
                            if($problema->actualizar("descripcion",$_POST['inputDescripcion'])== true){
                                echo 'toastr.success("Descripción Actualizada");';
                            }
                        break;
                    case '2':
                            if($problema->actualizar("caso_fabricante",$_POST['inputCaso'])== true){
                                echo 'toastr.success("Caso Fabricante Actualizado");';
                            }
                        break;

                    case '3':
                            if($problema->actualizar("fecha_estimada_solucion",$_POST['fecha']." ".$_POST['hora'])== true){
                                echo 'toastr.success("Fecha Solución Actualizado");';
                            }
                        break;
        
                    case '4':
                            if($problema->actualizar("id_estado",$_POST['selectEstado'])== true){
                                echo 'toastr.success("Estado Actualizado");';
                            }
                        break;
                    case '5':
                            if($problema->actualizar("responsable",$_POST['selectResponsable'])== true){
                                echo 'toastr.success("Responsable Actualizado");';
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
                        header("location: ../view/adm/detalle_problema.php");
                        break;
                    case '2':// perfil noc
                        header("location: ../view/agente/detalle_problema.php");
                        break;
                    case '3':// perfil visitante
                        header("location: ../view/visitante/detalle_problema.php");   
                        break;
                    case '4':// perfil visitante
                        header("location: ../view/n2/detalle_problema.php");   
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
                $documentacion->setId_problema($_SESSION['seleccion']);
                $documentacion->setdocumentacion(str_replace("'","\"",$_POST['documentacion']));
                $documentacion->setFecha(date("Y-m-d H:i:s", $time));
                echo "<script>";
                if($documentacion->registrar()==true){
                    echo 'toastr.success("Documentación Registrada");';
                    echo "cargarData(6);";
                }
                echo "</script>";
            break;
        case '8':#carga timeline
                function print_timeline($fecha,$documentacion){
                    $dproblema= str_replace("\n","<br>",$documentacion);
                    return "<div class=\"timeline-item\"><div class=\"timeline-item-marker\"><div class=\"timeline-item-marker-text\">".$fecha."</div><div class=\"timeline-item-marker-indicator bg-secondary-soft text-secondary\"><i class=\"fas fa-check\"></i></div></div><div class=\"timeline-item-content pt-0\"><div class=\"card shadow-sm\"><div class=\"card-body\">".$dproblema."</div></div></div></div>";
                }
                $documentacion->setId_problema($_SESSION['seleccion']);
                $lista=$documentacion->consultar();
                $cadena="";
                foreach($lista as $datos){
                    $cadena.=print_timeline($datos['fecha'],$datos['documentacion']);
                }
                echo "<script>";
                    echo "$('#timeline').html('".$cadena."');";
                echo "</script>";
            break;
        case '9':#option for close problema 
                $problema->setId($_SESSION['seleccion']);
                if($problema->actualizar("id_estado",$_POST['estado'])== true){
                    echo $problema->actualizar("fecha_fin",$_POST['fecha']." ".$_POST['hora']);
                }
            break;
        case '10':
                $incidente= new incidente();
                ini_set('date.timezone', 'America/Bogota');
                $time = time();
                $incidente->setId($_SESSION['seleccion']);
                $incidente->consultar();

                $problema->setId($_GET['id']);
                $problema->setId_estado(1);
                $problema->setFecha_creacion(date("Y-m-d H:i:s", $time));
                $problema->setId_incidente($_SESSION['seleccion']);
                $problema->setDescripcion($incidente->getDescripcion());
                $problema->setResponsable($incidente->getResponsable());
                echo $problema->registrar2();
            break;
        case '11':#caso para traer historial 
            # code...
                 echo json_encode($problema->historial($_POST['fecha_inicio'],$_POST['fecha_final']));
            break;
        default: print "Opcion no Disponible";
        	break;
    }


?>
