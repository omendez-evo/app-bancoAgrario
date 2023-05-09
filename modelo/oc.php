<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class oc{
		private $id;
		private $descripcion;
		private $afectados;
		private $fecha_inicio;
		private $fecha_fin;
		private $responsable;
		private $id_categoria;
		private $id_area;
		private $id_prioridad;
		private $id_estado;
		private $categoria_otro;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("oc");
			$this->con->setB("id,descripcion,afectados,fecha_inicio,fecha_fin,responsable,id_categoria,id_area,id_prioridad,id_estado,categoria_otro");
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
		public function setId_categoria($id_categoria){
			$this->id_categoria=$id_categoria;
		}
		public function getId_categoria(){
			return $this->id_categoria;
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
		public function setCategoria_otro($categoria_otro){
			$this->categoria_otro=$categoria_otro;
		}
		public function getCategoria_otro(){
			return $this->categoria_otro;
		}
		public function registrar(){
			$this->con->setB("id,descripcion,afectados,fecha_inicio,responsable,id_categoria,id_area,id_prioridad,id_estado,categoria_otro,proyecto");
			$this->con->setC("$this->id,'$this->descripcion','$this->afectados','$this->fecha_inicio','$this->responsable','$this->id_categoria','$this->id_area','$this->id_prioridad','$this->id_estado','$this->categoria_otro',".$_SESSION['proyecto']."");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar_activos(){
			$sql= "SELECT oc.id,oc.descripcion,prioridad.prioridad,estado.estado,usuario.usuario AS responsable
						FROM oc
						INNER JOIN prioridad ON oc.id_prioridad=prioridad.id
						INNER JOIN estado ON oc.id_estado=estado.id
						INNER JOIN usuario ON oc.responsable=usuario.usuario
						WHERE estado.id NOT IN (3,4,5) AND oc.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn["data"][]=$datos;
			}
	    	return $arrayReturn;
		}
		public function historial($fecha_inicio,$fecha_final){
			$arrayReturn = array();
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra=" WHERE id_estado not in(1,2) and oc.fecha_inicio BETWEEN '".$fecha_inicio."' AND '".$fecha_final."' AND oc.proyecto=".$_SESSION['proyecto']."";
			}else{$extra="WHERE id_estado not in(1,2) AND oc.proyecto=".$_SESSION['proyecto']."";}
			$sql= "SELECT oc.id,oc.descripcion,fecha_fin,estado.estado,usuario.usuario AS responsable
						FROM oc
						INNER JOIN estado ON oc.id_estado=estado.id
						INNER JOIN usuario ON oc.responsable=usuario.usuario
						".$extra."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn["data"][]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla(){//funcion para exportar 
			$sql= "SELECT oc.id,oc.descripcion,oc.afectados,prioridad.prioridad,estado.estado,usuario.usuario AS responsable,fecha_inicio,fecha_fin
						FROM oc
						INNER JOIN prioridad ON oc.id_prioridad=prioridad.id
						INNER JOIN estado ON oc.id_estado=estado.id
						INNER JOIN usuario ON oc.responsable=usuario.usuario
						WHERE estado.id NOT IN (3,4,5) AND oc.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_documentacion(){//funcion para exportar 
			$arrayReturn = array();
			$sql= "SELECT id_oc as id,documentacion,fecha
					FROM documentacion_oc
					INNER JOIN oc ON oc.id=documentacion_oc.id_oc
					INNER JOIN estado ON oc.id_estado=estado.id
					WHERE oc.id_estado NOT IN (3,4,5) AND oc.proyecto=".$_SESSION['proyecto']."";
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
		public function exportar_tabla_historial($fecha_inicio,$fecha_final){
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="AND oc.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT oc.id,oc.descripcion,oc.afectados,prioridad.prioridad,estado.estado,usuario.usuario AS responsable,fecha_inicio,fecha_fin
						FROM oc
						INNER JOIN prioridad ON oc.id_prioridad=prioridad.id
						INNER JOIN estado ON oc.id_estado=estado.id
						INNER JOIN usuario ON oc.responsable=usuario.usuario
						WHERE oc.id_estado IN (3,4,5) ".$extra." AND oc.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_historial_documentacion($fecha_inicio,$fecha_final){
			if($fecha_inicio!="" && $fecha_final!=""){
				$extra="AND oc.fecha_fin BETWEEN '".$fecha_inicio."' AND '".$fecha_final."'";
			}else{$extra="";}
			$sql= "SELECT id_oc as id,documentacion,fecha
						FROM documentacion_oc
					INNER JOIN oc ON oc.id=documentacion_oc.id_oc
					INNER JOIN estado ON oc.id_estado=estado.id
						WHERE oc.id_estado IN (3,4,5) ".$extra." AND oc.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function consultar(){
			$sql= "SELECT id,descripcion,afectados,fecha_inicio,fecha_fin,responsable,id_categoria,id_area,id_prioridad,id_estado,categoria_otro
					FROM oc
					WHERE id=".$this->id." AND oc.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$this->id=$datos['id'];
					$this->descripcion=$datos['descripcion'];
					$this->afectados=$datos['afectados'];
					$this->fecha_inicio=$datos['fecha_inicio'];
					$this->fecha_fin=$datos['fecha_fin'];
					$this->responsable=$datos['responsable'];
					$this->id_categoria=$datos['id_categoria'];
					$this->id_area=$datos['id_area'];
					$this->id_prioridad=$datos['id_prioridad'];
					$this->id_estado=$datos['id_estado'];
					$this->categoria_otro=$datos['categoria_otro'];
				}
			}
		}
		public function actualizar($a,$b){
			$sql= "UPDATE oc SET ".$a."='$b'
			WHERE id='".$this->id."'";
			$resultado=$this->con->actualizar($sql);
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function cant_activos(){//funcion para cantidad activos
			$arrayReturn = array();
			$sql= "SELECT 
					(select COUNT(id) FROM incidente WHERE id_estado NOT IN (3,4,5) AND incidente.proyecto=".$_SESSION['proyecto'].")as incidente,
					(select COUNT(id) FROM oc WHERE id_estado NOT IN (3,4,5) AND oc.proyecto=".$_SESSION['proyecto'].")as oc,
					(select COUNT(id) FROM problema WHERE id_estado NOT IN (3,4,5) AND problema.proyecto=".$_SESSION['proyecto'].")as problema,
					(select COUNT(id) FROM punto_atencion WHERE estado NOT IN (3,4,5) AND punto_atencion.proyecto=".$_SESSION['proyecto'].")as punto_atencion";
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
						(SELECT COUNT(id)as cant FROM oc WHERE EXTRACT(MONTH FROM oc.fecha_inicio)='".$fecha[0]."' AND EXTRACT(YEAR FROM oc.fecha_inicio)='".$fecha[1]."' AND oc.proyecto=".$_SESSION['proyecto'].")AS total,
						(SELECT COUNT(id)as cant FROM oc WHERE EXTRACT(MONTH FROM oc.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM oc.fecha_fin)='".$fecha[1]."' AND id_estado=3 AND oc.proyecto=".$_SESSION['proyecto'].") AS cerrados,
						(SELECT COUNT(id)as cant FROM oc WHERE EXTRACT(MONTH FROM oc.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM oc.fecha_fin)='".$fecha[1]."' AND id_estado=4 AND oc.proyecto=".$_SESSION['proyecto'].") AS transferido,
						(SELECT COUNT(id)as cant FROM oc WHERE EXTRACT(MONTH FROM oc.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM oc.fecha_fin)='".$fecha[1]."' AND id_estado=5 AND oc.proyecto=".$_SESSION['proyecto'].") AS cancelado";
				$lista=$this->con->actualizar($sql);
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
				
			}
	    	return $arrayReturn;
		}
		public function grafico_bar_usuarios($lista,$mes){//funcion para la grafica por usuarios
			$arrayReturn = array();
			foreach($lista as $d){
				$sql= "SELECT oc.responsable,count(id) as cant FROM oc WHERE EXTRACT(MONTH FROM oc.fecha_inicio)='$mes' AND oc.responsable='".$d['usuario']."' AND oc.proyecto=".$_SESSION['proyecto']." GROUP BY(oc.responsable)";
				
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
					(SELECT COUNT(id)FROM oc WHERE EXTRACT(MONTH FROM oc.fecha_inicio)='$mes' AND id_estado=1 AND oc.proyecto=".$_SESSION['proyecto'].")AS abierto,
					(SELECT COUNT(id)FROM oc WHERE EXTRACT(MONTH FROM oc.fecha_inicio)='$mes' AND id_estado=2 AND oc.proyecto=".$_SESSION['proyecto'].")AS en_proceso,
					(SELECT COUNT(id)FROM oc WHERE EXTRACT(MONTH FROM oc.fecha_inicio)='$mes' AND id_estado=3 AND oc.proyecto=".$_SESSION['proyecto'].")AS cerrado,
					(SELECT COUNT(id)FROM oc WHERE EXTRACT(MONTH FROM oc.fecha_inicio)='$mes' AND id_estado=4 AND oc.proyecto=".$_SESSION['proyecto'].")AS transferido,
					(SELECT COUNT(id)FROM oc WHERE EXTRACT(MONTH FROM oc.fecha_inicio)='$mes' AND id_estado=5 AND oc.proyecto=".$_SESSION['proyecto'].")AS cancelado
					";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
	}
?>