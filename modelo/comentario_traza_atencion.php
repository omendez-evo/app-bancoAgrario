<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class comentario_traza_atencion{
		private $id;
		private $id_punto_atencion;
		private $avances;
		private $fecha_avance;
		private $id_traza_atencion;
		private $estatus;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("comentario_traza_atencion");
			$this->con->setB("id,id_traza_atencion,id_punto_atencion,avances,fecha_avance,estatus");
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
		public function getEstatus(){
			return $this->estatus;
		}
		public function setEstatus($estatus){
			$this->estatus=$estatus;
		}
		public function setId_traza_atencion($id_traza_atencion){
			$this->id_traza_atencion=$id_traza_atencion;
		}
		public function getId_traza_atencion(){
			return $this->id_traza_atencion;
		}
		public function setId_punto_atencion($id_punto_atencion){
			$this->id_punto_atencion=$id_punto_atencion;
		}
		public function getId_punto_atencion(){
			return $this->id_punto_atencion;
		}
		public function setAvances($avances){
			$this->avances=$avances;
		}
		public function getAvances(){
			return $this->avances;
		}
		public function setFecha_avance($fecha_avance){
			$this->fecha_avance=$fecha_avance;
		}
		public function getFecha_avance(){
			return $this->fecha_avance;
		}
		public function registrar(){
			$this->con->setB("id,id_traza_atencion,id_punto_atencion,avances,fecha_avance,estatus");
			$this->con->setC("$this->id,'$this->id_traza_atencion','$this->id_punto_atencion','$this->avances','$this->fecha_avance','$this->estatus'");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar(){
			$sql= "SELECT id,id_traza_atencion,avances,fecha_avance
					FROM comentario_traza_atencion
					WHERE estatus=1 and id_traza_atencion='".$this->id_traza_atencion."' order by id desc";
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
		public function cant_comentario($id){
			$sql= "SELECT COUNT(id) as id
					FROM comentario_traza_atencion
					WHERE estatus=1 and id_traza_atencion='".$id."'";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					return $datos['id'];
				}
			}
		}
		
	}
?>