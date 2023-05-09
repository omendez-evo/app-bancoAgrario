<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class asignatario_punto_atencion{
		private $id_punto_atencion;
		private $usuario;
		private $estatus;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("asignatario_punto_atencion");
			$this->con->setB("id_punto_atencion,usuario,estatus");
		}
		public function getId_punto_atencion(){
			return $this->id_punto_atencion;
		}
		public function setId_punto_atencion($id_punto_atencion){
			$this->id_punto_atencion=$id_punto_atencion;
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
			$this->con->setB("id_punto_atencion,usuario,estatus");
			$this->con->setC("$this->id_punto_atencion,'$this->usuario','$this->estatus'");
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
			$sql= "SELECT * FROM asignatario_punto_atencion WHERE id_punto_atencion='".$this->id_punto_atencion."' AND estatus=1";
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
			$sql= "SELECT * FROM asignatario_punto_atencion WHERE id_punto_atencion='".$this->id_punto_atencion."' AND estatus=1";
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
			$sql= "SELECT titulo,prioridad.prioridad as prioridad,asignatario_punto_atencion.id_punto_atencion as id
					FROM asignatario_punto_atencion 
					INNER JOIN punto_atencion ON asignatario_punto_atencion.id_punto_atencion=punto_atencion.id
					INNER JOIN prioridad ON punto_atencion.id_prioridad=prioridad.id
					WHERE usuario='".$this->usuario."' AND punto_atencion.estado NOT IN (3,4,5) AND punto_atencion.proyecto=".$_SESSION['proyecto']."
					order by punto_atencion.id_prioridad desc";
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
			$sql= "DELETE FROM asignatario_punto_atencion WHERE id_punto_atencion='".$this->id_punto_atencion."' AND usuario='".$this->usuario."' ";
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