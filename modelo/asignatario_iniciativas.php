<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class asignatario_iniciativas{
		private $id_iniciativa;
		private $usuario;
		private $estatus;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("asignatario_iniciativas");
			$this->con->setB("id_iniciativa,usuario,estatus");
		}
		public function getIdIniciativa(){
			return $this->id_iniciativa;
		}
		public function setIdIniciativa($id_iniciativa){
			$this->id_iniciativa=$id_iniciativa;
		}
		public function setUsuario($usuario){
			$this->usuario=$usuario;
		}
		public function getUsuario(){
			return $this->usuario;
		}
		public function setEstatus($estatus){
			$this->estatus=$estatus;
		}
		public function getEstatus(){
			return $this->estatus;
		}
		public function registrar(){
			$this->con->setB("id_iniciativa,usuario,estatus");
			$this->con->setC("$this->id_iniciativa,'$this->usuario','$this->estatus'");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function consultar(){
			//$arrayReturn = array();
			$sql= "SELECT * FROM asignatario_iniciativas WHERE id_iniciativa='".$this->id_iniciativa."' AND estatus=1";
			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				$data="[";
				while($datos=pg_fetch_assoc($lista)){
					$data.="'".$datos['usuario']."',";
				}
				$data.="]";
		    	return $data;
		    }
		}
		public function consultar2(){
			$arrayReturn = array();
			$sql= "SELECT * FROM asignatario_iniciativas WHERE id_iniciativa='".$this->id_iniciativa."' AND estatus=1";
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
		public function buscar_caso(){
			$arrayReturn = array();
			$_SESSION['array']="";
			$sql= "SELECT iniciativa as titulo,estado.estado as estado,asignatario_iniciativas.id_iniciativa as id
					FROM asignatario_iniciativas 
					INNER JOIN iniciativas ON asignatario_iniciativas.id_iniciativa=iniciativas.id
					INNER JOIN estado ON iniciativas.estado=estado.id
					WHERE usuario='".$this->usuario."' AND iniciativas.estado NOT IN (3,4,5) AND iniciativas.proyecto=".$_SESSION['proyecto']."";

			$lista=$this->con->actualizar($sql);
			if(empty($lista)==true){
				return false;
			}else{
				while($datos=pg_fetch_assoc($lista)){
					$arrayReturn["data"][]=$datos;
					$_SESSION['array']=$_SESSION['array'].$datos['id'].'-';
				}
		    	return $arrayReturn;
		    }
		}
		public function eliminar(){
			$sql= "DELETE FROM asignatario_iniciativas WHERE id_iniciativa='".$this->id_iniciativa."' AND usuario='".$this->usuario."'";
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