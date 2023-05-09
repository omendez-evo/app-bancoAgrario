<?php  
	session_start();
	require_once '../modelo/oc.php';
	require_once '../modelo/incidente.php';
	require_once '../modelo/problema.php';
	require_once '../modelo/punto_atencion.php';
	require_once '../modelo/usuario.php';
	require_once '../modelo/tareas_fechas.php';

	$oc=new oc();
	$usuario=new usuario();
	$incidente=new incidente();
	$problema=new problema();
	$punto_atencion=new punto_atencion();
	$tareas_fechas=new tareas_fechas();

	
	switch ($_GET['opcion']) {
		case '1'://opcion que imprime grafico peso por usuario
				ini_set('date.timezone', 'America/Bogota');
			    $time = time();
			    $a=(date("m", $time));
			    switch ($_GET['valor']) {
					case 1:
						$lista=$incidente->grafico_bar_usuarios($usuario->consultarTodos(),$a);
						break;
					case 2:
						$lista=$oc->grafico_bar_usuarios($usuario->consultarTodos(),$a);
						break;
					case 3:
						$lista=$problema->grafico_bar_usuarios($usuario->consultarTodos(),$a);
						break;
				}
				print json_encode($lista);	
			break;
		case '2'://
				ini_set('date.timezone', 'America/Bogota');
			    $time = time();
			    $a=(date("m", $time));
			    switch ($_GET['valor']) {
					case 1:
						$lista=$incidente->buscar_mes($a);
						break;
					case 2:
						$lista=$oc->buscar_mes($a);
						break;
					case 3:
						$lista=$problema->buscar_mes($a);
						break;
					case 4:
						$lista=$punto_atencion->buscar_mes($a-1);
						break;
				}
				print json_encode($lista);
			break;
		case '3'://opcion que imprime cantidades en tablero
				//print json_encode($oc->cant_activos());
				
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
                $lista2=$tareas_fechas->horas_mes();
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
                if($total<=$conversionSegundos){
                    $total_a=$conversionSegundos-$total;
                    $horas_a = floor($total_a / 3600);
                    $minutos_a = floor(($total_a - ($horas_a * 3600)) / 60);
                    $segundos_a = $total_a - ($horas_a * 3600) - ($minutos_a * 60);
                }else{
                    $total_a=$total-$conversionSegundos;
                    $horas_a = floor($total_a / 3600);
                    $minutos_a = floor(($total_a - ($horas_a * 3600)) / 60);
                    $segundos_a = $total_a - ($horas_a * 3600) - ($minutos_a * 60);
                }
				/*
                echo"
				<script>
                    var tiempo_mes = {
                        hora: ".$horas.",
                        minuto: ".$minutos.",
                        segundo: ".$segundos.",
                    };
                    $('#horas_mes').text(tiempo_mes.hora < 10 ? '0' + tiempo_mes.hora +' :' : tiempo_mes.hora +' :');
                    $('#minutos_mes').text(tiempo_mes.minuto < 10 ? '0' + tiempo_mes.minuto +' :' : tiempo_mes.minuto +' :');
					$('#segundos_mes').text(tiempo_mes.segundo < 10 ? '0' + tiempo_mes.segundo : tiempo_mes.segundo);
                </script>";*/
				echo json_encode(array(
					"horas" => $horas,
					"minutos" => $minutos,
					"segundos" => $segundos
				));
			break;
		case '4'://opcion que imprime cantidades de backups realizado
				print json_encode($usuarios_backup->cantidad_backup_realizado());
			break;
		case '5':
			$fecha = '01-'.$_GET['mes'].'-2020'; //Fecha de la que queramos saber el número de días que tiene el mes.

			$final= date( 't', strtotime( $fecha ) );
			$period = new DatePeriod(
				new DateTime($fecha), // Donde empezamos a contar el periodo
				new DateInterval('P1D'), // Definimos el periodo a 1 día
			$final-1 // Aplicamos el intervalo 6 veces
			);

			$i=0;
			$logico_inicio=false;
			$logico_final=false;
			$arreglo = array();
			$cadena="";
			foreach ($period as $date) {
				if($i==0){
			    	//echo "Inicio: ". $date->format('l d-m-Y')."|";
			    	$cadena.=$date->format('Y-m-d');
			    	$i++;
			    	$logico_inicio=true;
			    	$logico_final=false;
			    }else{
			    	$i++;
			    	if($logico_inicio==false){
						if(($date->format('l')=="Monday")){
					    	//echo "Inicio: ".$date->format('l d-m-Y')."|";
					    	$cadena.=$date->format('Y-m-d');
					    	$logico_inicio=true;
					    	$logico_final=false;
					    }
					}
					if($logico_final==false){
						if($date->format('l')=="Sunday"){
					    	//echo "Final: ".$date->format('l d-m-Y')."<br>";
					    	$cadena.=" Al ".$date->format('Y-m-d');
					    	$logico_inicio=false;
					    	$logico_final=true;
					    	$arreglo[]=$cadena;
					    	$cadena="";
					    }
					}
					if($logico_final==false){
					    if ($i==$final) {
					    	//echo "Final: ".$date->format('l d-m-Y')."<br>";
					    	$cadena.=" Al ".$date->format('Y-m-d');
					    	$logico_inicio=false;
					    	$logico_final=true;
					    	$arreglo[]=$cadena;
					    	$cadena="";
					    }
					}
				}
			}
			
    		//print json_encode($arreglo);
    			print json_encode($tiempo->cant_backup_mes($arreglo));
			break;
		case '6':
				function busqueda($mes,$anio){
					$fecha = '01-'.$mes.'-'.$anio.''; //Fecha de la que queramos saber el número de días que tiene el mes.
					$final= date( 't', strtotime( $fecha ) );
					$period = new DatePeriod(
						new DateTime($fecha), // Donde empezamos a contar el periodo
						new DateInterval('P1D'), // Definimos el periodo a 1 día
					$final-1 // Aplicamos el intervalo 6 veces
					);

					$i=0;
					$logico_inicio=false;
					$logico_final=false;
					$arreglo = array();
					$cadena="";
					foreach ($period as $date) {
						if($i==0){
					    	$cadena.=$date->format('Y-m-d');
					    	$i++;
					    	$logico_inicio=true;
					    	$logico_final=false;
					    }else{
					    	$i++;
					    	if($logico_inicio==false){
								if(($date->format('l')=="Monday")){
							    	$cadena.=$date->format('Y-m-d');
							    	$logico_inicio=true;
							    	$logico_final=false;
							    }
							}
							if($logico_final==false){
								if($date->format('l')=="Sunday"){
							    	$cadena.=" Al ".$date->format('Y-m-d');
							    	$logico_inicio=false;
							    	$logico_final=true;
							    	$arreglo[]=$cadena;
							    	$cadena="";
							    }
							}
							if($logico_final==false){
							    if ($i==$final) {
							    	//echo "Final: ".$date->format('l d-m-Y')."<br>";
							    	$cadena.=" Al ".$date->format('Y-m-d');
							    	$logico_inicio=false;
							    	$logico_final=true;
							    	$arreglo[]=$cadena;
							    	$cadena="";
							    }
							}
						}
					}
					return $arreglo;
				}

				$lista=$tiempo->buscar_meses();
				$lista2 = array();
				$total=0;
				$semanas=0;
				$arrayName = array();
				foreach($lista as $datos){
					if($datos['mes']!= null and $datos['anio']!= null){
						$lista2=$tiempo->peso_backup_semana(busqueda($datos['mes'],$datos['anio']));
						foreach($lista2 as $datos){
						if($datos['correo']!= null and $datos['one_drive']!= null and $datos['sharepoint']!= null){
							if($datos['correo']!= 0 and $datos['one_drive']!= 0 and $datos['sharepoint']!= 0){
								$total+=$datos['correo']+$datos['one_drive']+$datos['sharepoint'];
								$semanas++;
								$arrayName[]=$datos;
							}
						}
					
					}	
					}
				}
				//$semanas++;
				$promedio=$total/$semanas;
				$peso_falta= 80000 - $total;
				$faltan_semanas= $peso_falta/$promedio;
				
				$semana_anio=52-$semanas;
				if($semana_anio<0){//en caso q semanas supere a las semanas restante
					$semana_anio=$semana_anio*-1;
				}
				
				echo $total."<br>";
				echo $promedio."<br>";

				echo $peso_falta."<br>";
				echo $faltan_semanas."<br>";


				echo "<script>";
				echo "$('#tiempo_estimado_txt').html('".round($faltan_semanas)." Semanas');";
				if (round($faltan_semanas)>round($semana_anio)) {
					$retraso=$faltan_semanas-$semana_anio;
					echo "$('#indicador-tiempo').html('Retraso ".round($retraso)." Semanas');";
					echo "$('#indicador-tiempo').addClass('badge-red');";
				}else{
					echo "$('#indicador-tiempo').html('A tiempo');";
					echo "$('#indicador-tiempo').addClass('badge-success');";
				}
				echo "</script>";

			break;
		case '7':
				switch ($_GET['valor']) {
					case 2:
						$lista=$tareas_fechas->buscar_horas_meses($_GET['meses']);
						break;
				}
				print json_encode($lista);
			break;
		case '8'://opcion que imprime cantidades en tablero
				print json_encode($tamano->cant_backup_());
			break;
		case '9'://opcion que imprime cantidades en tablero
				print json_encode($tamano->cant_backup_proceso());
			break;
		case '10':
			# \\192.168.9.98\
				print json_encode($tamano->tamano_nas($_POST['nas']));
			break;
		case '11'://cargar datos index analista
				$horarioSesion->setUsuario($_SESSION["usuario"]);
				$horarioSesion->buscar_horario();
    			$horarios->setId2($horarioSesion->getHorario());
    			$horarios->buscar2();
				$tamano->cant_backup_usuario();

				echo "<script>";
				echo "$('#horario_txt').html('Desde ".$horarios->gethoraInicio()." Hasta ".$horarios->gethoraFinal()."');";
				echo "$('#cant_correo').html('".$tamano->getCorreo()."');";
				echo "$('#cant_one_drive').html('".$tamano->getOne_drive()."');";
				echo "$('#cant_sharepoint').html('".$tamano->getSharepoint()."');";
				echo "$('#cant_total').html('".$usuarios_backup->cantidad_backup_realizado_usuario()."');";

				echo "</script>";

			break;
		case '12':
				print json_encode($tamano->grafico_Doughnut_peso_usuario());
			break;
		case '13'://grafica dia por fecha
				$horarioSesion->setId2($_GET['id']);
				$horarioSesion->buscar2();
				print json_encode($tamano->grafico_Doughnut_peso_usuario_dia(date("Y-m-d", strtotime($horarioSesion->getHoraInicio())),$horarioSesion->getUsuario()));

			break;
		case '14'://cargar datos 
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
				$horarioSesion->setId2($_POST['id']);
				$horarioSesion->buscar2();
				$fecha=date("Y-m-d", strtotime($horarioSesion->getHoraInicio()));
				$horarios->setId2($horarioSesion->getHorario());
				$horarios->buscar2();
				$horarioSesion->horario_inicio($fecha,$horarioSesion->getUsuario());
				$inicio=date("H:i:s", strtotime($horarioSesion->getHoraInicio()));
				
				echo "<script>";
					//echo '$("#id-horario").html("'.$horarioSesion->getHorario().'");';
					echo '$("#horario").html("'.$horarios->gethoraInicio().' A '.$horarios->gethoraFinal().'");';
					echo '$("#sesion").html("'.$inicio.'");';

					//calculo de diferencia
					ini_set('date.timezone', 'America/Bogota');
					$time = time();
					$total=calculodiferencia($fecha." ".$horarios->gethoraInicio(),$horarioSesion->getHoraInicio());
					if($inicio > $horarios->gethoraInicio()){
						$horas = floor($total / 3600);
					    $minutos = floor(($total - ($horas * 3600)) / 60);
					    $segundos = $total - ($horas * 3600) - ($minutos * 60);
						echo"
							var tiempo = {
						        hora: ".$horas.",
						        minuto: ".$minutos.",
						        segundo: ".$segundos."
						    };
						    $('#horas').text(tiempo.hora < 10 ? '0' + tiempo.hora +' :' : tiempo.hora +' :');
			                $('#minutos').text(tiempo.minuto < 10 ? '0' + tiempo.minuto +' :' : tiempo.minuto +' :');
			                $('#segundos').text(tiempo.segundo < 10 ? '0' + tiempo.segundo : tiempo.segundo);
			                $('#indicador-retraso').show();
							";
					}


				echo "</script>";
			break;
	}
?>