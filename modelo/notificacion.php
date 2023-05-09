<?php 
	require_once 'conexionBD.php';

	class notificacion{
		private $id;
		private $usuario_remitente;
		private $asunto;
		private $estatus;
		private $fecha;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("notificacion");
			$this->con->setB("id,usuario_remitente,asunto,estatus,fecha");
		}
		public function setId(){
			$this->con->setB("id");
			$this->id=$this->con->contar()+1;
		}
		public function setId2($id){
			$this->id=$id;
		}
		public function getId(){
			return $this->id;
		}
		public function setUsuarioRemitente($usuario_remitente){
			$this->usuario_remitente=$usuario_remitente;
		}
		public function getUsuarioRemitente(){
			return $this->usuario_remitente;
		}
		public function setAsunto($asunto){
			$this->asunto=$asunto;
		}
		public function getAsunto(){
			return $this->asunto;
		}
		public function setEstatus($estatus){
			$this->estatus=$estatus;
		}
		public function getEstatus(){
			return $this->estatus;
		}
		public function setFecha($fecha){
			$this->fecha=$fecha;
		}
		public function getFecha(){
			return $this->fecha;
		}
		public function buscar($usuario_receptor){	
			$sql= "SELECT notificacion.id,usuario_remitente,asunto,fecha,usuario_receptor,receptor.estatus FROM notificacion INNER JOIN notificacion_receptor as receptor ON notificacion.id=receptor.id WHERE receptor.usuario_receptor='".$usuario_receptor."' order by notificacion.id desc ";
			$lista=$this->con->actualizar($sql);
			$num = pg_num_rows($lista);
			if($num==0){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
	    		return $arrayReturn;
			}
		}
		public function consultar(){
			$this->con->setB("id");
			$this->con->setC($this->id);
			$lista=$this->con->buscar();
			if(empty($lista)==true){
				return false;
			}else{
				foreach($lista as $datos){
					$this->id=$datos['id'];
					$this->usuario_remitente=$datos['usuario_remitente'];
					$this->asunto=$datos['asunto'];
					$this->descripcion=$datos['descripcion'];
					$this->estatus=$datos['estatus'];
					$this->fecha=$datos['fecha'];
					$this->documento=$datos['documento'];
				}
			}
		}
		public function registrar(){
			$this->con->setB("id,usuario_remitente,asunto,estatus,fecha");
			$this->con->setC("$this->id,'$this->usuario_remitente','$this->asunto',$this->estatus,'$this->fecha'");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function listar(){	
			$this->con->setB("usuario_remitente='".$this->usuario_remitente."'");
			$this->con->setC("fecha desc");
			$lista=$this->con->consultaComplejaPlus();
			if(empty($lista)==true){
				return false;
			}else{
				return $lista;
			}
		}
	}