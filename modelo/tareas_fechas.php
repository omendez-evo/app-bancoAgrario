<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class tareas_fechas{
		private $id;
		private $usuario;
		private $fecha_inicio;
		private $fecha_fin;
		private $id_tarea;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("tareas_fechas");
			$this->con->setB("id,usuario,fecha_inicio,fecha_fin,id_tarea");
		}
		public function setId(){
			$this->con->setB("id");
			$this->id=$this->con->contar()+1;
		}
		public function getId(){
			return $this->id;
		}
		public function setId2($id){
			$this->id=$id;
		}
		public function setUsuario($usuario){
			$this->usuario=$usuario;
		}
		public function getUsuario(){
			return $this->usuario;
		}
		public function setFechaInicio($fecha_inicio){
			$this->fecha_inicio=$fecha_inicio;
		}
		public function getFechaInicio(){
			return $this->fecha_inicio;
		}
		public function setFechaFin($fecha_fin){
			$this->fecha_fin=$fecha_fin;
		}
		public function geFechaFin(){
			return $this->fecha_fin;
		}
		public function setIdtarea($id_tarea){
			$this->id_tarea=$id_tarea;
		}
		public function getIdtarea(){
			return $this->id_tarea;
		}
		public function registrar_inicio(){
			$this->con->setB("id,usuario,fecha_inicio,id_tarea");//funcion que registra inicio de reloj
			$this->con->setC("'$this->id','$this->usuario','$this->fecha_inicio','$this->id_tarea'");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function buscar2(){
			$this->con->setB("id");
			$this->con->setC($this->id);
			$lista=$this->con->buscar2();
			if(empty($lista)==true){
				return false;
			}else{
				foreach($lista as $datos){
					$this->id=$datos['id'];
					$this->usuario=$datos['usuario'];
					$this->fecha_inicio=$datos['fecha_inicio'];
					$this->fecha_fin=$datos['fecha_fin'];
					$this->id_tarea=$datos['id_tarea'];
				}
			}
		}
		public function buscar_fecha(){
			$sql= "SELECT fecha_inicio,fecha_fin
					FROM tareas_fechas
					WHERE id_tarea=".$this->id_tarea."";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				$arrayReturn = array();
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
				return $arrayReturn;
			}
			
		}
		public function horas_mes(){
			ini_set('date.timezone', 'America/Bogota');
		    $time = time();
		    $a=(date("m", $time));
		    $y=(date("Y", $time));

			$sql= "SELECT t.id_tarea,t.fecha_inicio,t.fecha_fin
					FROM tareas_fechas as t
					INNER JOIN iniciativa_tarea as i ON i.id=t.id_tarea 
					WHERE EXTRACT(MONTH FROM t.fecha_inicio)=".$a." and EXTRACT(YEAR FROM t.fecha_inicio)=".$y;
	
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
				return $arrayReturn;
			}
			
		}
		public function horas_total(){
			
			$sql= "SELECT t.id_tarea,t.fecha_inicio,t.fecha_fin
					FROM tareas_fechas as t
					INNER JOIN iniciativa_tarea as i ON i.id=t.id_tarea";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
				return $arrayReturn;
			}
			
		}
		public function buscar_horas_meses($meses){
			$lista2 = explode(",",$meses);
			//var_dump($lista2);
			for ($i=0; $i<4 ; $i++) { 
				$fecha = explode("-",$lista2[$i]);
				//var_dump($fecha);
				$sql= "select sum(extract(epoch from (fecha_fin::timestamp - fecha_inicio::timestamp))) / 3600 as horas
				from tareas_fechas
				where 
				EXTRACT(MONTH FROM tareas_fechas.fecha_inicio)='".$fecha[0]."' AND EXTRACT(YEAR FROM tareas_fechas.fecha_inicio)='".$fecha[1]."'";
				$lista=$this->con->actualizar($sql);
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
				//var_dump($arrayReturn);
				
			}
	    	return $arrayReturn;
		}
		public function validar_reloj(){
			$sql= "SELECT count(t.id) as num FROM tareas_fechas as t INNER JOIN iniciativa_tarea as i ON i.id=t.id_tarea WHERE t.id_tarea=".$this->id_tarea." AND t.fecha_fin is NULL";
			$lista=$this->con->actualizar($sql);
			while ($row = pg_fetch_row($lista)) {
				if($row[0]==0){
					return false;
				}else{
					return true;
				}
			}
		}
		public function buscar_id_tarea(){
			$sql= "SELECT usuario.usuario,nombres,apellidos,id_id_tarea,usuarios_id_tareas.fecha,fecha 
						FROM usuarios_id_tareas 
						RIGHT JOIN usuario ON usuario.usuario=usuarios_id_tareas.usuario 
						LEFT JOIN id_tareas ON usuarios_id_tareas.id_id_tarea=id_tareas.id 
						WHERE usuario.usuario='".$this->usuario."' 
						ORDER BY usuarios_id_tareas.fecha DESC LIMIT 1";
			$lista=$this->con->actualizar($sql);
			foreach($lista as $datos){
				$this->id_tarea=$datos['id_id_tarea'];
			}
		}
		public function id_tarea_inicio($fecha,$usuario){
			$sql= "SELECT * FROM tareas_fechas WHERE fecha_inicio LIKE '%".$fecha."%' AND usuario='".$usuario."' order by id asc LIMIT 1";
			$lista=$this->con->actualizar($sql);
			foreach($lista as $datos){
				$this->id=$datos['id'];
				$this->usuario=$datos['usuario'];
				$this->fecha_inicio=$datos['fecha_inicio'];
				$this->fecha_fin=$datos['fecha_fin'];
				$this->id_tarea=$datos['id_tarea'];
			}
		}
		public function actualizar($a,$b,$id){
			$sql= "UPDATE tareas_fechas SET ".$a."='$b'
			WHERE id_tarea='".$id."' AND fecha_fin is null";
			$resultado=$this->con->actualizar($sql);
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
	}
?>