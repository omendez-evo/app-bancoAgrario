<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class iniciativas{
		private $id;
		private $descripcion;
		private $iniciativa;
		private $fecha_fin;
		private $fecha_creacion;
		private $estado;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("iniciativas");
			$this->con->setB("id,descripcion,iniciativa,fecha_fin,fecha_creacion,estado");
		}
		public function getId(){
			return $this->id;
		}
		public function setId2($id){
			$this->id=$id;
		}
		public function setId(){
			$this->con->setB("id");
			$this->id=$this->con->contar()+1;
		}
		public function setDescripcion($descripcion){
			$this->descripcion=$descripcion;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setIniciativa($iniciativa){
			$this->iniciativa=$iniciativa;
		}
		public function getIniciativa(){
			return $this->iniciativa;
		}
		public function setFecha_fin($fecha_fin){
			$this->fecha_fin=$fecha_fin;
		}
		public function getFecha_fin(){
			return $this->fecha_fin;
		}
		public function setFecha_creacion($fecha_creacion){
			$this->fecha_creacion=$fecha_creacion;
		}
		public function getFecha_creacion(){
			return $this->fecha_creacion;
		}
		public function setEstado($estado){
			$this->estado=$estado;
		}
		public function getEstado(){
			return $this->estado;
		}
		public function registrar(){
			$this->con->setB("id,descripcion,iniciativa,fecha_creacion,estado,proyecto");
			$this->con->setC("$this->id,'$this->descripcion','$this->iniciativa','$this->fecha_creacion','$this->estado',".$_SESSION['proyecto']."");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar_activos(){
			$sql= "SELECT iniciativas.id as id,iniciativas.iniciativa as titulo,iniciativas.fecha_creacion as fecha_creacion,estado.estado as estado
						FROM iniciativas
						INNER JOIN estado ON iniciativas.estado=estado.id
						WHERE estado.id NOT IN (3,4,5) AND iniciativas.proyecto=".$_SESSION['proyecto']."
						order by iniciativas.estado desc";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			$_SESSION['array']="";
			//var_dump($lista);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn["data"][]=$datos;
				$_SESSION['array']=$_SESSION['array'].$datos['id'].'-';
			}
	    	return $arrayReturn;
		}
		public function consultar_horas(){
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
            #obtiene iniciativas activas
			$sql= "SELECT iniciativas.id as id,iniciativas.iniciativa as titulo,iniciativas.fecha_creacion as fecha_creacion,estado.estado as estado
						FROM iniciativas
						INNER JOIN estado ON iniciativas.estado=estado.id
						WHERE estado.id NOT IN (3,4,5)
						order by iniciativas.estado desc";
			$lista=$this->con->actualizar($sql);

			#obtiene tareas en el mes.
			ini_set('date.timezone', 'America/Bogota');
		    $time = time();
		    $a=(date("m", $time));
			$sql= "SELECT i.id_iniciativa,t.fecha_inicio,t.fecha_fin
					FROM tareas_fechas as t
					INNER JOIN iniciativa_tarea as i ON i.id=t.id_tarea 
					WHERE EXTRACT(MONTH FROM t.fecha_inicio)=".$a."
					order by i.id_iniciativa desc";
			$lista2=$this->con->actualizar($sql);
			$num = pg_num_rows($lista);
			$arrayReturn = array();
			$_SESSION['array']="";

			if(empty($lista2)==true){
				return false;
			}else{
				$i=0;
				$id=0;
				$c=0;
				while($datos2=pg_fetch_assoc($lista2)){
					$c++;
					if($id!=$datos2['id_iniciativa']){
						if($i==1){
							$total=0;
			                foreach($arreglo as $h) {
			                    $total += $h;  
			                }
			                unset($arreglo);
			                $horas = floor($total / 3600);
			                $minutos = floor(($total - ($horas * 3600)) / 60);
			                $segundos = $total - ($horas * 3600) - ($minutos * 60);
			                $i=0;

			                if($segundos<10){$segundos="0".$segundos;}
			                if($minutos<10){$minutos="0".$minutos;}
			                if($horas<10){$horas="0".$horas;}
		                	#print($horas.":".$minutos.":".$segundos."----------------");
		                	$array_horas[]= ["id_iniciativa" => $id,"horas" => $horas.":".$minutos.":".$segundos];
			            }
					}
					if($i==0){
						$i=1;
						$arreglo = array();
						if($datos2['fecha_fin'] == null){
	                        $final=date("Y-m-d H:i:s", $time);
	                        $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$final);
	                    }else{
	                        $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$datos2['fecha_fin']);
	                    }
					}else{
						if($datos2['fecha_fin'] == null){
	                        $final=date("Y-m-d H:i:s", $time);
	                        $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$final);
	                    }else{
	                        $arreglo[]=calculodiferencia($datos2['fecha_inicio'],$datos2['fecha_fin']);
	                    }
					}
					$id=$datos2['id_iniciativa'];
					if($num==$c){
						$total=0;						

		                foreach($arreglo as $h) {
		                    $total += $h;  
		                }
		                unset($arreglo);
		                $horas = floor($total / 3600);
		                $minutos = floor(($total - ($horas * 3600)) / 60);
		                $segundos = $total - ($horas * 3600) - ($minutos * 60);
		                $i=0;
		               	if($segundos<10){$segundos="0".$segundos;}
			            if($minutos<10){$minutos="0".$minutos;}
		                if($horas<10){$horas="0".$horas;}
	                	#print($horas.":".$minutos.":".$segundos."----------------");
	                	$array_horas[]= ["id_iniciativa" => $id,"horas" => $horas.":".$minutos.":".$segundos];
					}
					#print(next($datos2['id_iniciativa']));
				}
			}

			while($datos=pg_fetch_assoc($lista)){
				foreach($array_horas as $h) {
					if($h['id_iniciativa']==$datos['id']){
						$arrayReturn["data"][]=["id" => $datos['id'],"titulo" => $datos['titulo'],"fecha_creacion" => $datos['fecha_creacion'],"estado" => $datos['estado'],"horas" => $h['horas']];
						$_SESSION['array']=$_SESSION['array'].$datos['id'].'-';
					}
				}
			}
			return($arrayReturn);
		}
		public function exportar_tabla(){//funcion para exportar 
			$sql= "SELECT  
						iniciativas.id,
						iniciativas.iniciativa,
						iniciativas.descripcion,
						to_char ((sum(extract(epoch from (tareas_fechas.fecha_fin::timestamp - tareas_fechas.fecha_inicio::timestamp))) ||' seconds')::interval, 'HH24:MI:SS' ) as tiempo
					FROM iniciativas
					INNER JOIN iniciativa_tarea ON iniciativas.id=iniciativa_tarea.id_iniciativa
					INNER JOIN tareas_fechas ON iniciativa_tarea.id=tareas_fechas.id_tarea
					WHERE iniciativas.proyecto=".$_SESSION['proyecto']." AND iniciativas.estado NOT IN (3,4,5)
					GROUP BY iniciativas.id";

			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_documentacion(){//funcion para exportar 
			$sql= "SELECT 
						iniciativas.iniciativa,
						iniciativa_tarea.id,
						iniciativa_tarea.descripcion,
						iniciativa_tarea.usuario,
						iniciativa_tarea.fecha_creacion,
						to_char ((sum(extract(epoch from (tareas_fechas.fecha_fin::timestamp - tareas_fechas.fecha_inicio::timestamp))) ||' seconds')::interval, 'HH24:MI:SS' ) as tiempo,
						estado.estado,
						iniciativa_tarea.observacion
					FROM iniciativas
					INNER JOIN iniciativa_tarea ON iniciativas.id=iniciativa_tarea.id_iniciativa
					INNER JOIN estado ON iniciativa_tarea.estado=estado.id
					INNER JOIN tareas_fechas ON iniciativa_tarea.id=tareas_fechas.id_tarea
					WHERE iniciativas.proyecto=".$_SESSION['proyecto']." AND iniciativas.estado NOT IN (3,4,5)
					GROUP BY iniciativas.iniciativa,iniciativa_tarea.id,estado.estado";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_historial($fecha_inicio,$fecha_final){
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="AND iniciativas.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT  
						iniciativas.id,
						iniciativas.iniciativa,
						iniciativas.descripcion,
						to_char ((sum(extract(epoch from (tareas_fechas.fecha_fin::timestamp - tareas_fechas.fecha_inicio::timestamp))) ||' seconds')::interval, 'HH24:MI:SS' ) as tiempo
						FROM iniciativas
						INNER JOIN iniciativa_tarea ON iniciativas.id=iniciativa_tarea.id_iniciativa
						INNER JOIN tareas_fechas ON iniciativa_tarea.id=tareas_fechas.id_tarea
						WHERE iniciativas.estado=3 ".$extra." AND iniciativas.proyecto=".$_SESSION['proyecto']."
						GROUP BY iniciativas.id";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_historial_documentacion($fecha_inicio,$fecha_final){
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="AND iniciativas.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT 
						iniciativas.iniciativa,
						iniciativa_tarea.id,
						iniciativa_tarea.descripcion,
						iniciativa_tarea.usuario,
						iniciativa_tarea.fecha_creacion,
						to_char ((sum(extract(epoch from (tareas_fechas.fecha_fin::timestamp - tareas_fechas.fecha_inicio::timestamp))) ||' seconds')::interval, 'HH24:MI:SS' ) as tiempo,
						estado.estado,
						iniciativa_tarea.observacion
						FROM iniciativas
						INNER JOIN iniciativa_tarea ON iniciativas.id=iniciativa_tarea.id_iniciativa
						INNER JOIN estado ON iniciativa_tarea.estado=estado.id
						INNER JOIN tareas_fechas ON iniciativa_tarea.id=tareas_fechas.id_tarea
						WHERE iniciativas.estado=3 ".$extra." AND iniciativas.proyecto=".$_SESSION['proyecto']."
						GROUP BY iniciativas.iniciativa,iniciativa_tarea.id,estado.estado";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}

		public function exportar_tabla_demanda($fecha_inicio,$fecha_final){
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="tareas_fechas.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT  
						iniciativas.id,
						iniciativas.iniciativa,
						iniciativas.descripcion,
						to_char ((sum(extract(epoch from (tareas_fechas.fecha_fin::timestamp - tareas_fechas.fecha_inicio::timestamp))) ||' seconds')::interval, 'HH24:MI:SS' ) as tiempo
						FROM iniciativas
						INNER JOIN iniciativa_tarea ON iniciativas.id=iniciativa_tarea.id_iniciativa
						INNER JOIN tareas_fechas ON iniciativa_tarea.id=tareas_fechas.id_tarea
						WHERE ".$extra." AND iniciativas.proyecto=".$_SESSION['proyecto']."
						GROUP BY iniciativas.id";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_demanda_documentacion($fecha_inicio,$fecha_final){
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="tareas_fechas.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT 
						iniciativas.iniciativa,
						iniciativa_tarea.id,
						iniciativa_tarea.descripcion,
						iniciativa_tarea.usuario,
						iniciativa_tarea.fecha_creacion,
						to_char ((sum(extract(epoch from (tareas_fechas.fecha_fin::timestamp - tareas_fechas.fecha_inicio::timestamp))) ||' seconds')::interval, 'HH24:MI:SS' ) as tiempo,
						estado.estado,
						iniciativa_tarea.observacion
						FROM iniciativas
						INNER JOIN iniciativa_tarea ON iniciativas.id=iniciativa_tarea.id_iniciativa
						INNER JOIN estado ON iniciativa_tarea.estado=estado.id
						INNER JOIN tareas_fechas ON iniciativa_tarea.id=tareas_fechas.id_tarea
						WHERE ".$extra." AND iniciativas.proyecto=".$_SESSION['proyecto']."
						GROUP BY iniciativas.iniciativa,iniciativa_tarea.id,estado.estado";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}

		public function consultar(){
			$sql= "SELECT id,descripcion,iniciativa,fecha_fin,fecha_creacion,estado
					FROM iniciativas
					WHERE id=".$this->id." AND iniciativas.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$this->id=$datos['id'];
		 			$this->descripcion=$datos['descripcion'];
		 			$this->iniciativa=$datos['iniciativa'];
		 			$this->fecha_fin=$datos['fecha_fin'];
		 			$this->fecha_creacion=$datos['fecha_creacion'];
		 			$this->estado=$datos['estado'];
				}
			}
		}
		public function buscar_mes($mes){
			//$arrayReturn = array();
			$sql= "SELECT
					(SELECT COUNT(id)FROM iniciativas WHERE EXTRACT(MONTH FROM iniciativas.fecha_creacion)='$mes' AND estado=1 AND iniciativas.proyecto=".$_SESSION['proyecto'].")AS abierto,
					(SELECT COUNT(id)FROM iniciativas WHERE EXTRACT(MONTH FROM iniciativas.fecha_creacion)='$mes' AND estado=2 AND iniciativas.proyecto=".$_SESSION['proyecto'].")AS en_proceso,
					(SELECT COUNT(id)FROM iniciativas WHERE EXTRACT(MONTH FROM iniciativas.fecha_creacion)='$mes' AND estado=3 AND iniciativas.proyecto=".$_SESSION['proyecto'].")AS cerrado,
					(SELECT COUNT(id)FROM iniciativas WHERE EXTRACT(MONTH FROM iniciativas.fecha_creacion)='$mes' AND estado=4 AND iniciativas.proyecto=".$_SESSION['proyecto'].")AS transferido,
					(SELECT COUNT(id)FROM iniciativas WHERE EXTRACT(MONTH FROM iniciativas.fecha_creacion)='$mes' AND estado=5 AND iniciativas.proyecto=".$_SESSION['proyecto'].")AS cancelado
					";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function buscar_cant_meses($meses){
			$lista2 = explode(",",$meses);
			//var_dump($lista2);
			for ($i=0; $i<4 ; $i++) { 
				$fecha = explode("-",$lista2[$i]);
				$sql= "SELECT
						(SELECT COUNT(id)as cant FROM iniciativas WHERE EXTRACT(MONTH FROM iniciativas.fecha_creacion)='".$fecha[0]."' AND EXTRACT(YEAR FROM iniciativas.fecha_creacion)='".$fecha[1]."' AND iniciativas.proyecto=".$_SESSION['proyecto'].")AS total,
						(SELECT COUNT(id)as cant FROM iniciativas WHERE EXTRACT(MONTH FROM iniciativas.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM iniciativas.fecha_fin)='".$fecha[1]."' AND estado=3 AND iniciativas.proyecto=".$_SESSION['proyecto'].") AS cerrados,
						(SELECT COUNT(id)as cant FROM iniciativas WHERE EXTRACT(MONTH FROM iniciativas.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM iniciativas.fecha_fin)='".$fecha[1]."' AND estado=4 AND iniciativas.proyecto=".$_SESSION['proyecto'].") AS transferido,
						(SELECT COUNT(id)as cant FROM iniciativas WHERE EXTRACT(MONTH FROM iniciativas.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM iniciativas.fecha_fin)='".$fecha[1]."' AND estado=5 AND iniciativas.proyecto=".$_SESSION['proyecto'].") AS cancelado";
				$lista=$this->con->actualizar($sql);
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
				
			}
	    	return $arrayReturn;
		}
		public function actualizar($a,$b){
			$sql= "UPDATE iniciativas SET ".$a."='$b'
			WHERE id='".$this->id."'";
			$resultado=$this->con->actualizar($sql);
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function historial($fecha_inicio,$fecha_final){
			$arrayReturn = array();
			$_SESSION['array']="";
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="AND iniciativas.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT iniciativas.id,iniciativas.iniciativa as titulo,fecha_fin,estado.estado
						FROM iniciativas
						INNER JOIN estado ON iniciativas.estado=estado.id
						WHERE iniciativas.estado=3 ".$extra." AND iniciativas.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn["data"][]=$datos;
				$_SESSION['array']=$_SESSION['array'].$datos['id'].'-';
			}
	    	return $arrayReturn;
		}
	}
?>