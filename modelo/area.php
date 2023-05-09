<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class area{
		private $id;
		private $area;
		private $estatus;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("area");
			$this->con->setB("id,area,estatus");
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
		public function setArea($area){
			$this->area=$area;
		}
		public function getArea(){
			return $this->area;
		}
		public function setEstatus($estatus){
			$this->estatus=$estatus;
		}
		public function getEstatus(){
			return $this->estatus;
		}
		public function consultar_activos(){
			$sql= "SELECT * FROM area WHERE estatus=1";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
	}
?>