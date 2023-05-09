<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class traza_atencion{
		private $id;
		private $id_punto_atencion;
		private $avances;
		private $fecha_avance;
		private $estado;
		private $usuario;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("traza_atencion");
			$this->con->setB("id,id_punto_atencion,avances,fecha_avance,estado,usuario");
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
		public function setFecha_avance($fecha_avance){
			$this->fecha_avance=$fecha_avance;
		}
		public function getFecha_avance(){
			return $this->fecha_avance;
		}
		public function registrar(){
			$this->con->setB("id,id_punto_atencion,avances,fecha_avance,estado,usuario");
			$this->con->setC("$this->id,'$this->id_punto_atencion','$this->avances','$this->fecha_avance','$this->estado','$this->usuario'");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar(){
			$sql= "SELECT id,id_punto_atencion,avances,fecha_avance,usuario
					FROM traza_atencion
					WHERE estado=1 and id_punto_atencion='".$this->id_punto_atencion."' order by id desc";
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
			$sql= "SELECT id,id_punto_atencion,avances,fecha_avance,estado,usuario
					FROM traza_atencion
					WHERE id_punto_atencion='".$this->id_punto_atencion."' and id=".$this->id."";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$this->id=$datos['id'];
					$this->id_punto_atencion=$datos['id_punto_atencion'];
					$this->avances=$datos['avances'];
					$this->fecha_avance=$datos['fecha_avance'];
					$this->estado=$datos['estado'];
					$this->usuario=$datos['usuario'];
				}
			}
		}
		public function actualizar($a,$b){
			$sql= "UPDATE traza_atencion SET ".$a."='$b'
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