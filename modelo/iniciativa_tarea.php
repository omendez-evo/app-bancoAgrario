<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class iniciativa_tarea{
		private $id;
		private $id_iniciativa;
		private $descripcion;
		private $fecha_creacion;
		private $estado;
		private $usuario;
		private $fecha_fin;
		private $observacion;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("iniciativa_tarea");
			$this->con->setB("id,id_iniciativa,descripcion,fecha_creacion,estado,usuario,fecha_fin,observacion");
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
		public function setIdiniciativa($id_iniciativa){
			$this->id_iniciativa=$id_iniciativa;
		}
		public function getIdiniciativa(){
			return $this->id_iniciativa;
		}
		public function setObservacion($observacion){
			$this->observacion=$observacion;
		}
		public function getObservacion(){
			return $this->observacion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion=$descripcion;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setEstado($estado){
			$this->estado=$estado;
		}
		public function getEstado(){
			return $this->estado;
		}
		public function setUsuario($usuario){
			$this->usuario=$usuario;
		}
		public function getUsuario(){
			return $this->usuario;
		}
		public function setFechacreacion($fecha_creacion){
			$this->fecha_creacion=$fecha_creacion;
		}
		public function getFechacreacion(){
			return $this->fecha_creacion;
		}
		public function setFechafin($fecha_fin){
			$this->fecha_fin=$fecha_fin;
		}
		public function getFechafin(){
			return $this->fecha_fin;
		}
		public function registrar(){
			$this->con->setB("id,id_iniciativa,descripcion,fecha_creacion,estado,usuario");
			$this->con->setC("$this->id,'$this->id_iniciativa','$this->descripcion','$this->fecha_creacion','$this->estado','$this->usuario'");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar(){
			$sql= "SELECT iniciativa_tarea.id,id_iniciativa,descripcion,fecha_creacion,usuario,estado
					FROM iniciativa_tarea
					WHERE id_iniciativa='".$this->id_iniciativa."' order by id desc";
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
		public function consultar3(){
			$sql= "SELECT id,id_iniciativa,descripcion,fecha_creacion,usuario
					FROM iniciativa_tarea
					WHERE id_iniciativa='".$this->id_iniciativa."' order by id desc";
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
		public function consultar2(){
			$sql= "SELECT id,id_iniciativa,descripcion,fecha_creacion,estado,usuario
					FROM iniciativa_tarea
					WHERE id_iniciativa='".$this->id_iniciativa."' and id=".$this->id."";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$this->id=$datos['id'];
					$this->id_iniciativa=$datos['id_iniciativa'];
					$this->descripcion=$datos['descripcion'];
					$this->fecha_creacion=$datos['fecha_creacion'];
					$this->estado=$datos['estado'];
					$this->usuario=$datos['usuario'];
				}
			}
		}
		public function cargar(){
			$sql= "SELECT id,id_iniciativa,descripcion,fecha_creacion,estado,usuario
					FROM iniciativa_tarea
					WHERE id=".$this->id."";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$this->id=$datos['id'];
					$this->id_iniciativa=$datos['id_iniciativa'];
					$this->descripcion=$datos['descripcion'];
					$this->fecha_creacion=$datos['fecha_creacion'];
					$this->estado=$datos['estado'];
					$this->usuario=$datos['usuario'];
					$this->observacion=$datos['observacion'];
				}
			}
		}
		public function actualizar($a,$b){
			$sql= "UPDATE iniciativa_tarea SET ".$a."='$b'
			WHERE id='".$this->id."'";
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