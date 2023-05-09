<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class grupo{
		private $id;
		private $grupo;
		private $estatus;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("grupo");
			$this->con->setB("id,grupo,estatus");
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
		public function setgrupo($grupo){
			$this->grupo=$grupo;
		}
		public function getgrupo(){
			return $this->grupo;
		}
		public function setEstatus($estatus){
			$this->estatus=$estatus;
		}
		public function getEstatus(){
			return $this->estatus;
		}
		public function consultar_activos(){
			$sql= "SELECT * FROM grupo WHERE estatus=1";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
	}
?>