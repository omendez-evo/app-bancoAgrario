<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class documentacion_incidente{
		private $id;
		private $id_incidente;
		private $documentacion;
		private $fecha;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("documentacion_incidente");
			$this->con->setB("id,id_incidente,documentacion,fecha");
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
		public function setId_incidente($id_incidente){
			$this->id_incidente=$id_incidente;
		}
		public function getId_incidente(){
			return $this->id_incidente;
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
			$this->con->setB("id,id_incidente,documentacion,fecha");
			$this->con->setC("$this->id,'$this->id_incidente','$this->documentacion','$this->fecha'");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar(){
			$sql= "SELECT id,id_incidente,documentacion,fecha
					FROM documentacion_incidente
					WHERE id_incidente='".$this->id_incidente."' order by id asc";
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