<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class problema{
		private $id;
		private $descripcion;
		private $caso_fabricante;
		private $fecha_estimada_solucion;
		private $fecha_creacion;
		private $responsable;
		private $id_incidente;
		private $id_estado;
		private $fecha_fin;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("problema");
			$this->con->setB("id,caso_fabricante,fecha_estimada_solucion,fecha_creacion,responsable,id_incidente,descripcion,id_estado");
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
		public function setCaso_fabricante($caso_fabricante){
			$this->caso_fabricante=$caso_fabricante;
		}
		public function getCaso_fabricante(){
			return $this->caso_fabricante;
		}
		public function setFecha_estimada_solucion($fecha_estimada_solucion){
			$this->fecha_estimada_solucion=$fecha_estimada_solucion;
		}
		public function getFecha_estimada_solucion(){
			return $this->fecha_estimada_solucion;
		}
		public function setFecha_creacion($fecha_creacion){
			$this->fecha_creacion=$fecha_creacion;
		}
		public function getFecha_creacion(){
			return $this->fecha_creacion;
		}
		public function setResponsable($responsable){
			$this->responsable=$responsable;
		}
		public function getResponsable(){
			return $this->responsable;
		}
		public function setId_incidente($id_incidente){
			$this->id_incidente=$id_incidente;
		}
		public function getId_incidente(){
			return $this->id_incidente;
		}
		public function setId_estado($id_estado){
			$this->id_estado=$id_estado;
		}
		public function getId_estado(){
			return $this->id_estado;
		}
		public function setFecha_fin($fecha_fin){
			$this->fecha_fin=$fecha_fin;
		}
		public function getFecha_fin(){
			return $this->fecha_fin;
		}
		public function registrar(){
			$this->con->setB("id,descripcion,responsable,id_estado,fecha_creacion,proyecto");
			$this->con->setC("$this->id,'$this->descripcion','$this->responsable','$this->id_estado','$this->fecha_creacion',".$_SESSION['proyecto']."");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function registrar2(){
			$this->con->setB("id,descripcion,responsable,id_estado,fecha_creacion,id_incidente,proyecto");
			$this->con->setC("$this->id,'$this->descripcion','$this->responsable','$this->id_estado','$this->fecha_creacion','$this->id_incidente',".$_SESSION['proyecto']."");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar_activos(){
			$sql= "SELECT problema.id,problema.descripcion,fecha_estimada_solucion as f_solucion,estado.estado,usuario.usuario AS responsable
						FROM problema
						INNER JOIN estado ON problema.id_estado=estado.id
						INNER JOIN usuario ON problema.responsable=usuario.usuario
						WHERE estado.id NOT IN (3,4,5) AND problema.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn["data"][]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla(){//funcion para exportar 
			$sql= "SELECT
					problema.id,id_incidente,caso_fabricante,descripcion,fecha_creacion,fecha_estimada_solucion,responsable,estado.estado,fecha_fin
					FROM problema
					INNER JOIN estado ON problema.id_estado=estado.id
					WHERE problema.id_estado NOT IN (3,4,5) AND problema.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function exportar_tabla_documentacion(){//funcion para exportar 
			$sql= "SELECT
						id_problema as id,documentacion,fecha
					FROM documentacion_problema
					INNER JOIN problema ON problema.id=documentacion_problema.id_problema
					INNER JOIN estado ON problema.id_estado=estado.id
					WHERE problema.id_estado NOT IN (3,4,5) AND problema.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function consultar(){
			$sql= "SELECT id,caso_fabricante,fecha_estimada_solucion,fecha_creacion,responsable,id_incidente,descripcion,id_estado,fecha_fin
					FROM problema
					WHERE id=".$this->id." AND problema.proyecto=".$_SESSION['proyecto']."";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$this->id=$datos['id'];
					$this->descripcion=$datos['descripcion'];
					$this->responsable=$datos['responsable'];
					$this->id_estado=$datos['id_estado'];				
					$this->caso_fabricante=$datos['caso_fabricante'];
					$this->fecha_estimada_solucion=$datos['fecha_estimada_solucion'];
					$this->fecha_creacion=$datos['fecha_creacion'];
					$this->id_incidente=$datos['id_incidente'];
					$this->fecha_fin=$datos['fecha_fin'];
				}
			}
		}
		public function grafico_bar_usuarios($lista,$mes){//funcion para la grafica por usuarios
			$arrayReturn = array();
			foreach($lista as $d){
				$sql= "SELECT problema.responsable,count(id) as cant FROM problema WHERE EXTRACT(MONTH FROM problema.fecha_creacion)='$mes' AND problema.responsable='".$d['usuario']."' AND problema.proyecto=".$_SESSION['proyecto']." GROUP BY(problema.responsable)";
				
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
					(SELECT COUNT(id)FROM problema WHERE EXTRACT(MONTH FROM problema.fecha_creacion)='$mes' AND id_estado=1 AND problema.proyecto=".$_SESSION['proyecto'].")AS abierto,
					(SELECT COUNT(id)FROM problema WHERE EXTRACT(MONTH FROM problema.fecha_creacion)='$mes' AND id_estado=2 AND problema.proyecto=".$_SESSION['proyecto'].")AS en_proceso,
					(SELECT COUNT(id)FROM problema WHERE EXTRACT(MONTH FROM problema.fecha_creacion)='$mes' AND id_estado=3 AND problema.proyecto=".$_SESSION['proyecto'].")AS cerrado,
					(SELECT COUNT(id)FROM problema WHERE EXTRACT(MONTH FROM problema.fecha_creacion)='$mes' AND id_estado=4 AND problema.proyecto=".$_SESSION['proyecto'].")AS transferido,
					(SELECT COUNT(id)FROM problema WHERE EXTRACT(MONTH FROM problema.fecha_creacion)='$mes' AND id_estado=5 AND problema.proyecto=".$_SESSION['proyecto'].")AS cancelado
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
						(SELECT COUNT(id)as cant FROM problema WHERE EXTRACT(MONTH FROM problema.fecha_creacion)='".$fecha[0]."' AND EXTRACT(YEAR FROM problema.fecha_creacion)='".$fecha[1]."' AND problema.proyecto=".$_SESSION['proyecto'].")AS total,
						(SELECT COUNT(id)as cant FROM problema WHERE EXTRACT(MONTH FROM problema.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM problema.fecha_fin)='".$fecha[1]."' AND id_estado=3 AND problema.proyecto=".$_SESSION['proyecto'].") AS cerrados,
						(SELECT COUNT(id)as cant FROM problema WHERE EXTRACT(MONTH FROM problema.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM problema.fecha_fin)='".$fecha[1]."' AND id_estado=4 AND problema.proyecto=".$_SESSION['proyecto'].") AS transferido,
						(SELECT COUNT(id)as cant FROM problema WHERE EXTRACT(MONTH FROM problema.fecha_fin)='".$fecha[0]."' AND EXTRACT(YEAR FROM problema.fecha_fin)='".$fecha[1]."' AND id_estado=5 AND problema.proyecto=".$_SESSION['proyecto'].") AS cancelado";
				$lista=$this->con->actualizar($sql);
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
				
			}
	    	return $arrayReturn;
		}
		public function actualizar($a,$b){
			$sql= "UPDATE problema SET ".$a."='$b'
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
				$extra="WHERE id_estado not in(1,2) and problema.fecha_creacion BETWEEN '".$fecha_inicio."' AND '".$fecha_final."' AND problema.proyecto=".$_SESSION['proyecto']."";
			}else{$extra="WHERE id_estado not in(1,2) AND problema.proyecto=".$_SESSION['proyecto']."";}
			$sql= "SELECT problema.id,problema.descripcion,fecha_fin,estado.estado,usuario.usuario AS responsable
						FROM problema
						INNER JOIN estado ON problema.id_estado=estado.id
						INNER JOIN usuario ON problema.responsable=usuario.usuario
						".$extra."";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn["data"][]=$datos;
			}
	    	return $arrayReturn;
		}
	}
?>