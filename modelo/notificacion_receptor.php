<?php 
	require_once 'conexionBD.php';

	class notificacionReceptor{
		private $id;
		private $usuario_receptor;
		private $estatus;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("notificacion_receptor");
			$this->con->setB("id,usuario_receptor,estatus");
		}
		public function setId($id){
			$this->id=$id;
		}
		public function getId(){
			return $this->id;
		}
		public function setUsuarioReceptor($usuario_receptor){
			$this->usuario_receptor=$usuario_receptor;
		}
		public function getUsuarioReceptor(){
			return $this->usuario_receptor;
		}
		public function setEstatus($estatus){
			$this->estatus=$estatus;
		}
		public function getEstatus(){
			return $this->estatus;
		}
		public function buscar_notificacion(){	
			$sql= "SELECT * FROM notificacion INNER JOIN notificacion_receptor as receptor ON notificacion.id=receptor.id WHERE receptor.usuario_receptor='".$this->usuario_receptor."' ORDER BY notificacion.fecha desc ";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
	    		return $arrayReturn;
			}
		}
		public function buscar(){	
			$arrayReturn = array();
			$sql= "SELECT to_char(fecha, 'dd-mm-YY') as fecha, asunto,usuario_remitente,to_char(fecha, 'hh24:mi:ss') as hora FROM notificacion INNER JOIN notificacion_receptor as receptor ON notificacion.id=receptor.id WHERE receptor.usuario_receptor='".$this->usuario_receptor."' ORDER BY notificacion.fecha desc ";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn['data'][]=$datos;
				}
	    		return $arrayReturn;
			}
		}
		public function buscar2($fecha_inicio,$fecha_final){	
			$arrayReturn = array();
			$sql= "SELECT * FROM notificacion INNER JOIN notificacion_receptor as receptor ON notificacion.id=receptor.id WHERE receptor.usuario_receptor='".$this->usuario_receptor."' and notificacion.fecha BETWEEN '".$fecha_inicio."' and '".$fecha_final."' ORDER BY notificacion.fecha desc";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn[]=$datos;
				}
	    		return $arrayReturn;
			}
		}
		public function registrar(){
			$this->con->setB("id,usuario_receptor,estatus");
			$this->con->setC("$this->id,'$this->usuario_receptor',$this->estatus");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function listar(){	
			$this->con->setB("id='".$this->id."'");
			$this->con->setC("usuario_receptor");
			$lista=$this->con->consultaComplejaPlus();
			if(empty($lista)==true){
				return false;
			}else{
				return $lista;
			}
		}
		public function listarporusuario(){	
			$this->con->setB("usuario_receptor='".$this->usuario_receptor."'");
			$this->con->setC("id");
			$lista=$this->con->consultaComplejaPlus();
			if(empty($lista)==true){
				return false;
			}else{
				return $lista;
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
		 			$this->usuario_receptor=$datos['usuario_receptor'];
		 			$this->estatus=$datos['estatus'];
				}
			}
		}
		public function actualizar($a,$b){
			$sql= "UPDATE notificacion_receptor SET ".$a."='$b'
			WHERE id='".$this->id."' and usuario_receptor='".$_SESSION['usuario']."'";
			$resultado=$this->con->actualizar($sql);
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function eliminar(){	
			$this->con->setB("id=".$this->id." and usuario_receptor='".$this->usuario_receptor."'");
			$lista=$this->con->eliminarComplejo();
			if(empty($lista)==true){
				return false;
			}else{
				return true;
			}
		}
	}