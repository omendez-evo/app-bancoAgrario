<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class prioridad{
		private $id;
		private $categoria;
		private $estatus;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("prioridad");
			$this->con->setB("id,prioridad,estatus");
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
		public function setPrioridad($prioridad){
			$this->prioridad=$prioridad;
		}
		public function getPrioridad(){
			return $this->prioridad;
		}
		public function setEstatus($estatus){
			$this->estatus=$estatus;
		}
		public function getEstatus(){
			return $this->estatus;
		}
		public function consultar_activos(){
			$sql= "SELECT * FROM prioridad WHERE estatus=1";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
	}
?>