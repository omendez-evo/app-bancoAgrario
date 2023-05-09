<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class incidente{
		private $id;
		private $descripcion;
		private $afectados;
		private $fecha_inicio;
		private $fecha_fin;
		private $responsable;
		private $id_grupo;
		private $id_area;
		private $id_prioridad;
		private $id_estado;
		private $grupo_otro;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("incidente");
			$this->con->setB("id,descripcion,afectados,fecha_inicio,fecha_fin,responsable,id_grupo,id_area,id_prioridad,id_estado,grupo_otro");
		}
		public function getId(){
			return $this->id;
		}
		public function setId($id){
			$this->id=$id;
		}
		public function setDescripcion($descripcion){
			$this->descripcion=$descripcion;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setAfectados($afectados){
			$this->afectados=$afectados;
		}
		public function getAfectados(){
			return $this->afectados;
		}
		public function setFecha_inicio($fecha_inicio){
			$this->fecha_inicio=$fecha_inicio;
		}
		public function getFecha_inicio(){
			return $this->fecha_inicio;
		}
		public function setFecha_fin($fecha_fin){
			$this->fecha_fin=$fecha_fin;
		}
		public function getFecha_fin(){
			return $this->fecha_fin;
		}
		public function setResponsable($responsable){
			$this->responsable=$responsable;
		}
		public function getResponsable(){
			return $this->responsable;
		}
		public function setId_grupo($id_grupo){
			$this->id_grupo=$id_grupo;
		}
		public function getId_grupo(){
			return $this->id_grupo;
		}
		public function setId_area($id_area){
			$this->id_area=$id_area;
		}
		public function getId_area(){
			return $this->id_area;
		}
		public function setId_prioridad($id_prioridad){
			$this->id_prioridad=$id_prioridad;
		}
		public function getId_prioridad(){
			return $this->id_prioridad;
		}
		public function setId_estado($id_estado){
			$this->id_estado=$id_estado;
		}
		public function getId_estado(){
			return $this->id_estado;
		}
		public function setgrupo_otro($grupo_otro){
			$this->grupo_otro=$grupo_otro;
		}
		public function getgrupo_otro(){
			return $this->grupo_otro;
		}
		public function registrar(){
			$this->con->setB("id,descripcion,afectados,fecha_inicio,responsable,id_grupo,id_area,id_prioridad,id_estado,grupo_otro,proyecto");
			$this->con->setC("$this->id,'$this->descripcion','$this->afectados','$this->fecha_inicio','$this->responsable','$this->id_grupo','$this->id_area','$this->id_prioridad','$this->id_estado','$this->grupo_otro',".$_SESSION['proyecto']."");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar_activos(){
			$sql= "SELECT incidente.id,incidente.descripcion,prioridad.prioridad,estado.estado,usuario.usuario AS responsable
						FROM incidente
						INNER JOIN prioridad ON incidente.id_prioridad=prioridad.id
						INNER JOIN estado ON incidente.id_estado=estado.id
						INNER JOIN usuario ON incidente.responsable=usuario.usuario
						WHERE estado.id NOT IN (3,4,5) AND incidente.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn["data"][]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla(){//funcion para exportar 
			$sql= "SELECT incidente.id,incidente.descripcion,incidente.afectados,prioridad.prioridad,estado.estado,area.area,grupo.grupo,usuario.usuario AS responsable,fecha_inicio,fecha_fin
						FROM incidente
						INNER JOIN prioridad ON incidente.id_prioridad=prioridad.id
						INNER JOIN estado ON incidente.id_estado=estado.id
						INNER JOIN usuario ON incidente.responsable=usuario.usuario
						INNER JOIN area ON incidente.id_prioridad=area.id
						INNER JOIN grupo ON incidente.id_grupo=grupo.id
						WHERE estado.id NOT IN (3,4,5) AND incidente.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_historial($fecha_inicio,$fecha_final){
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="AND incidente.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT incidente.id,incidente.descripcion,incidente.afectados,prioridad.prioridad,estado.estado,area.area,grupo.grupo,usuario.usuario AS responsable,fecha_inicio,fecha_fin
						FROM incidente
						INNER JOIN prioridad ON incidente.id_prioridad=prioridad.id
						INNER JOIN estado ON incidente.id_estado=estado.id
						INNER JOIN usuario ON incidente.responsable=usuario.usuario
						INNER JOIN area ON incidente.id_prioridad=area.id
						INNER JOIN grupo ON incidente.id_grupo=grupo.id
						WHERE incidente.id_estado IN (3,4,5) ".$extra." AND incidente.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_historial_documentacion($fecha_inicio,$fecha_final){
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="AND incidente.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT id_incidente as id,documentacion,fecha
						FROM documentacion_incidente
						INNER JOIN incidente ON incidente.id=documentacion_incidente.id_incidente
						INNER JOIN estado ON incidente.id_estado=estado.id
						WHERE incidente.id_estado IN (3,4,5) ".$extra." AND incidente.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_documentacion(){//funcion para exportar 
			$arrayReturn = array();
			$sql= "SELECT id_incidente as id,documentacion,fecha
					FROM documentacion_incidente
					INNER JOIN incidente ON incidente.id=documentacion_incidente.id_incidente
					INNER JOIN estado ON incidente.id_estado=estado.id
					WHERE incidente.id_estado NOT IN (3,4,5) AND incidente.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){     
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
		    	return $arrayReturn;
		    }
		}
		public function buscar_cant_meses($meses){
			$lista2 = explode(",",$meses);
			//var_dump($lista2);
			for ($i=0; $i<4 ; $i++) { 
				$fecha = explode("-",$lista2[$i]);
				//var_dump($fecha);
				$sql= "SELECT
						(SELECT COUNT(id)as cant FROM incidente WHERE EXTRACT(MONTH FROM incidente.fecha_inicio)='".$fecha[0]."' AND EXTRACT(YEAR FROM incidente.fecha_inicio)='".$fecha[1]."' AND incidente.proyecto=".$_SESSION['proyecto'].")AS total,
						(SELECT COUNT(id)as cant FROM incidente WHERE EXTRACT(MONTH FROM incidente.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM incidente.fecha_fin)='".$fecha[1]."' AND id_estado=3 AND incidente.proyecto=".$_SESSION['proyecto'].") AS cerrados,
						(SELECT COUNT(id)as cant FROM incidente WHERE EXTRACT(MONTH FROM incidente.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM incidente.fecha_fin)='".$fecha[1]."' AND id_estado=4 AND incidente.proyecto=".$_SESSION['proyecto'].") AS transferido,
						(SELECT COUNT(id)as cant FROM incidente WHERE EXTRACT(MONTH FROM incidente.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM incidente.fecha_fin)='".$fecha[1]."' AND id_estado=5 AND incidente.proyecto=".$_SESSION['proyecto'].") AS cancelado";
				$lista=$this->con->actualizar($sql);
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
				//var_dump($arrayReturn);
				
			}
	    	return $arrayReturn;
		}
		public function grafico_bar_usuarios($lista,$mes){//funcion para la grafica por usuarios
			$arrayReturn = array();
			foreach($lista as $d){
				$sql= "SELECT incidente.responsable,count(id) as cant FROM incidente WHERE EXTRACT(MONTH FROM incidente.fecha_inicio)='$mes' AND incidente.responsable='".$d['usuario']."' AND incidente.proyecto=".$_SESSION['proyecto']." GROUP BY(incidente.responsable)";
				
				$lista=$this->con->actualizar($sql);
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
			}
	    	return $arrayReturn;
		}
		public function buscar_mes($mes){
			//$arrayReturn = array();
			$sql= "SELECT
					(SELECT COUNT(id)FROM incidente WHERE EXTRACT(MONTH FROM incidente.fecha_inicio)='$mes' AND id_estado=1 AND incidente.proyecto=".$_SESSION['proyecto'].")AS abierto,
					(SELECT COUNT(id)FROM incidente WHERE EXTRACT(MONTH FROM incidente.fecha_inicio)='$mes' AND id_estado=2 AND incidente.proyecto=".$_SESSION['proyecto'].")AS en_proceso,
					(SELECT COUNT(id)FROM incidente WHERE EXTRACT(MONTH FROM incidente.fecha_inicio)='$mes' AND id_estado=3 AND incidente.proyecto=".$_SESSION['proyecto'].")AS cerrado,
					(SELECT COUNT(id)FROM incidente WHERE EXTRACT(MONTH FROM incidente.fecha_inicio)='$mes' AND id_estado=4 AND incidente.proyecto=".$_SESSION['proyecto'].")AS transferido,
					(SELECT COUNT(id)FROM incidente WHERE EXTRACT(MONTH FROM incidente.fecha_inicio)='$mes' AND id_estado=5 AND incidente.proyecto=".$_SESSION['proyecto'].")AS cancelado
					";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function consultar(){
			$sql= "SELECT id,descripcion,afectados,fecha_inicio,responsable,id_grupo,id_area,id_prioridad,id_estado,grupo_otro,fecha_fin
					FROM incidente
					WHERE id=".$this->id." AND incidente.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$this->id=$datos['id'];
					$this->descripcion=$datos['descripcion'];
					$this->afectados=$datos['afectados'];
					$this->fecha_inicio=$datos['fecha_inicio'];
					$this->responsable=$datos['responsable'];
					$this->id_grupo=$datos['id_grupo'];
					$this->id_area=$datos['id_area'];
					$this->id_prioridad=$datos['id_prioridad'];
					$this->id_estado=$datos['id_estado'];
					$this->grupo_otro=$datos['grupo_otro'];
					$this->fecha_fin=$datos['fecha_fin'];
				}
			}
		}
		public function actualizar($a,$b){
			$sql= "UPDATE incidente SET ".$a."='$b'
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
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="WHERE id_estado not in(1,2) and incidente.fecha_inicio BETWEEN '".$fecha_inicio."' AND '".$fecha_final."' AND incidente.proyecto=".$_SESSION['proyecto']."";
			}else{$extra="WHERE id_estado not in(1,2) AND incidente.proyecto=".$_SESSION['proyecto']."";}
			$sql= "SELECT incidente.id,incidente.descripcion,fecha_fin,estado.estado,usuario.usuario AS responsable
						FROM incidente
						INNER JOIN estado ON incidente.id_estado=estado.id
						INNER JOIN usuario ON incidente.responsable=usuario.usuario
						".$extra."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn["data"][]=$datos;
			}
	    	return $arrayReturn;
		}
	}
?>