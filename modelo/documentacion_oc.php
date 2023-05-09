<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class documentacion_oc{
		private $id;
		private $id_oc;
		private $documentacion;
		private $fecha;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("documentacion_oc");
			$this->con->setB("id,id_oc,documentacion,fecha");
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
		public function setId_oc($id_oc){
			$this->id_oc=$id_oc;
		}
		public function getId_oc(){
			return $this->id_oc;
		}
		public function setDocumentacion($documentacion){
			$this->documentacion=$documentacion;
		}
		public function getDocumentacion(){
			return $this->documentacion;
		}
		public function setFecha($fecha){
			$this->fecha=$fecha;
		}
		public function getFecha(){
			return $this->fecha;
		}
		public function registrar(){
			$this->con->setB("id,id_oc,documentacion,fecha");
			$this->con->setC("$this->id,'$this->id_oc','$this->documentacion','$this->fecha'");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar(){
			$sql= "SELECT id,id_oc,documentacion,fecha
					FROM documentacion_oc
					WHERE id_oc='".$this->id_oc."' order by id asc";
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
		
	}
?>