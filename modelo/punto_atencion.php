<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class punto_atencion{
		private $id;
		private $descripcion;
		private $afectados;
		private $titulo;
		private $fecha_fin;
		private $fecha_creacion;
		private $estado;
		private $id_prioridad;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("punto_atencion");
			$this->con->setB("id,descripcion,afectado,titulo,fecha_fin,fecha_creacion,estado,id_prioridad");
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
		public function setAfectado($afectados){
			$this->afectados=$afectados;
		}
		public function getAfectado(){
			return $this->afectados;
		}
		public function setTitulo($titulo){
			$this->titulo=$titulo;
		}
		public function getTitulo(){
			return $this->titulo;
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
		public function setId_prioridad($id_prioridad){
			$this->id_prioridad=$id_prioridad;
		}
		public function getId_prioridad(){
			return $this->id_prioridad;
		}
		public function registrar(){
			$this->con->setB("id,descripcion,afectado,titulo,fecha_creacion,estado,id_prioridad,proyecto");
			$this->con->setC("$this->id,'$this->descripcion','$this->afectados','$this->titulo','$this->fecha_creacion','$this->estado','$this->id_prioridad',".$_SESSION['proyecto']."");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar_activos(){
			$sql= "SELECT punto_atencion.id as id,punto_atencion.titulo as titulo,punto_atencion.fecha_creacion as fecha_creacion,estado.estado as estado,prioridad.prioridad as prioridad
						FROM punto_atencion
						INNER JOIN estado ON punto_atencion.estado=estado.id
						INNER JOIN prioridad ON punto_atencion.id_prioridad=prioridad.id
						WHERE estado.id NOT IN (3,4,5) AND punto_atencion.proyecto=".$_SESSION['proyecto']."
						order by punto_atencion.id_prioridad desc";
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
		public function exportar_tabla(){//funcion para exportar 
			$sql= "SELECT 
					punto_atencion.id as id,punto_atencion.titulo as titulo,punto_atencion.descripcion as descripcion,afectado,fecha_fin,
					estado.estado as estado
						FROM punto_atencion
						INNER JOIN estado ON punto_atencion.estado=estado.id
						WHERE punto_atencion.proyecto=".$_SESSION['proyecto']." AND estado.id NOT IN (3,4,5)";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_documentacion(){//funcion para exportar 
			$sql= "SELECT 
					titulo,avances,fecha_avance,estado.estado as estado,usuario
						FROM traza_atencion
						INNER JOIN punto_atencion ON punto_atencion.id=traza_atencion.id_punto_atencion
						INNER JOIN estado ON punto_atencion.estado=estado.id
						WHERE punto_atencion.proyecto=".$_SESSION['proyecto']." and estado.id NOT IN (3,4,5)
						ORDER BY punto_atencion.id,fecha_avance ASC";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_historial($fecha_inicio,$fecha_final){
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="AND punto_atencion.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT punto_atencion.id as id,punto_atencion.titulo as titulo,punto_atencion.descripcion as descripcion,afectado,fecha_fin,estado.estado as estado
						FROM punto_atencion
						INNER JOIN estado ON punto_atencion.estado=estado.id
						WHERE punto_atencion.estado=3 ".$extra." AND punto_atencion.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_historial_documentacion($fecha_inicio,$fecha_final){
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="AND punto_atencion.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT titulo,avances,fecha_avance,estado.estado as estado,usuario
						FROM traza_atencion
						INNER JOIN punto_atencion ON punto_atencion.id=traza_atencion.id_punto_atencion
						INNER JOIN estado ON punto_atencion.estado=estado.id
						WHERE punto_atencion.estado=3 ".$extra." AND punto_atencion.proyecto=".$_SESSION['proyecto']."
						ORDER BY punto_atencion.id,fecha_avance ASC";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function consultar(){
			$sql= "SELECT id,descripcion,afectado,titulo,fecha_fin,fecha_creacion,estado,id_prioridad
					FROM punto_atencion
					WHERE id=".$this->id." AND punto_atencion.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$this->id=$datos['id'];
		 			$this->descripcion=$datos['descripcion'];
		 			$this->afectados=$datos['afectado'];
		 			$this->titulo=$datos['titulo'];
		 			$this->fecha_fin=$datos['fecha_fin'];
		 			$this->fecha_creacion=$datos['fecha_creacion'];
		 			$this->estado=$datos['estado'];
		 			$this->id_prioridad=$datos['id_prioridad'];
				}
			}
		}
		public function buscar_mes($mes){
			//$arrayReturn = array();
			$sql= "SELECT
					(SELECT COUNT(id)FROM punto_atencion WHERE EXTRACT(MONTH FROM punto_atencion.fecha_creacion)='$mes' AND estado=1 AND punto_atencion.proyecto=".$_SESSION['proyecto'].")AS abierto,
					(SELECT COUNT(id)FROM punto_atencion WHERE EXTRACT(MONTH FROM punto_atencion.fecha_creacion)='$mes' AND estado=2 AND punto_atencion.proyecto=".$_SESSION['proyecto'].")AS en_proceso,
					(SELECT COUNT(id)FROM punto_atencion WHERE EXTRACT(MONTH FROM punto_atencion.fecha_creacion)='$mes' AND estado=3 AND punto_atencion.proyecto=".$_SESSION['proyecto'].")AS cerrado,
					(SELECT COUNT(id)FROM punto_atencion WHERE EXTRACT(MONTH FROM punto_atencion.fecha_creacion)='$mes' AND estado=4 AND punto_atencion.proyecto=".$_SESSION['proyecto'].")AS transferido,
					(SELECT COUNT(id)FROM punto_atencion WHERE EXTRACT(MONTH FROM punto_atencion.fecha_creacion)='$mes' AND estado=5 AND punto_atencion.proyecto=".$_SESSION['proyecto'].")AS cancelado
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
						(SELECT COUNT(id)as cant FROM punto_atencion WHERE EXTRACT(MONTH FROM punto_atencion.fecha_creacion)='".$fecha[0]."' AND EXTRACT(YEAR FROM punto_atencion.fecha_creacion)='".$fecha[1]."' AND punto_atencion.proyecto=".$_SESSION['proyecto'].")AS total,
						(SELECT COUNT(id)as cant FROM punto_atencion WHERE EXTRACT(MONTH FROM punto_atencion.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM punto_atencion.fecha_fin)='".$fecha[1]."' AND estado=3 AND punto_atencion.proyecto=".$_SESSION['proyecto'].") AS cerrados,
						(SELECT COUNT(id)as cant FROM punto_atencion WHERE EXTRACT(MONTH FROM punto_atencion.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM punto_atencion.fecha_fin)='".$fecha[1]."' AND estado=4 AND punto_atencion.proyecto=".$_SESSION['proyecto'].") AS transferido,
						(SELECT COUNT(id)as cant FROM punto_atencion WHERE EXTRACT(MONTH FROM punto_atencion.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM punto_atencion.fecha_fin)='".$fecha[1]."' AND estado=5 AND punto_atencion.proyecto=".$_SESSION['proyecto'].") AS cancelado";
				$lista=$this->con->actualizar($sql);
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
				
			}
	    	return $arrayReturn;
		}
		public function actualizar($a,$b){
			$sql= "UPDATE punto_atencion SET ".$a."='$b'
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
				$extra="AND punto_atencion.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT punto_atencion.id,punto_atencion.titulo,fecha_fin,estado.estado,prioridad.prioridad as prioridad
						FROM punto_atencion
						INNER JOIN estado ON punto_atencion.estado=estado.id
						INNER JOIN prioridad ON punto_atencion.id_prioridad=prioridad.id
						WHERE punto_atencion.estado=3 ".$extra." AND punto_atencion.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn["data"][]=$datos;
				$_SESSION['array']=$_SESSION['array'].$datos['id'].'-';
			}
	    	return $arrayReturn;
		}
	}
?>