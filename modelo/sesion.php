<?php 
	require_once 'conexionBD.php';
	/**
	clase que maneja la sesion 
	*/
	class Sesion{
		private $usuario;
		private $contraseña;
		private $id_tipo_usuario;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("sesion");
			$this->con->setB("usuario,contrasena,id_tipo_usuario");
		}
		public function setUsuario($usuario){
			$this->usuario=$usuario;
		}

		public function setContraseña($contraseña){
			$this->contraseña=$contraseña;
		}
		public function setId_tipo_usuario($id_tipo_usuario){
			$this->id_tipo_usuario=$id_tipo_usuario;
		}
		public function getUsuario(){
			return $this->usuario;
		}
		public function getContraseña(){
			return $this->contraseña;
		}
		public function getId_tipo_usuario(){
			return $this->id_tipo_usuario;
		}
		public function listar(){	
			$arrayReturn = array();
			$sql= "SELECT * FROM sesion WHERE id_tipo='".$this->id_tipo_usuario."'";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function consultar_select(){
			$sql= "SELECT sesion.usuario,CONCAT(CONCAT(Nombres,' '),Apellidos) as nombre_completo
						FROM sesion 
						INNER JOIN usuario ON sesion.usuario=usuario.usuario
					WHERE id_tipo not in(3) and sesion.usuario not in('administrator') and usuario.estatus=1;";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function consultar_select2(){
			$sql= "SELECT sesion.usuario as id,CONCAT(CONCAT(Nombres,' '),Apellidos) as text
						FROM sesion 
						INNER JOIN usuario ON sesion.usuario=usuario.usuario
					WHERE id_tipo not in(3,1);";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn["results"][]=$datos;
			}
	    	return $arrayReturn;
		}
		public function actualizar($a,$b){
			$sql= "UPDATE sesion SET ".$a."='$b'
			WHERE usuario='".$this->usuario."'";
			$resultado=$this->con->actualizar($sql);
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
 		public function inicioSesion(){
 			$this->con->setA("sesion");
 			$listaSesion=$this->con->buscarTodos2();
 			$a=3;
 			foreach($listaSesion as $datos){
 				if($this->usuario==$datos['usuario']){	
 					if($this->contraseña==$datos['contrasena']){
 						$this->con->setA("usuario");
 						$this->con->setB("usuario");
 						$this->con->setC($datos['usuario']);
 						$listaUsuario=$this->con->buscar2();
 						foreach($listaUsuario as $datos2){
 							$nombrebd=$datos2['nombres'];
							$apellidobd=$datos2['apellidos'];	
	        			}
	        			$primerNombre=explode(' ',$nombrebd);
	 					$primerApellido=explode(' ',$apellidobd);
	        			
 						$_SESSION["usuario"] = $datos['usuario'];
        				$_SESSION["contraseña"] = $datos['contrasena'];
        				$_SESSION["id_tipo_usuario"] = $datos['id_tipo'];
        				$_SESSION["nombre"] = $primerNombre[0];
        				$_SESSION["apellido"] =$primerApellido[0];
        				$a=1;
        				if ($datos['id_tipo']== '3'){
	        				$sql= "SELECT usuario,proyecto
									FROM usuario_visitante
									WHERE usuario='".$_SESSION["usuario"]."'";
							$lista=$this->con->actualizar($sql);
							if(empty($lista)==true){
								return false;
							}else{
								while($datos=pg_fetch_assoc($lista)){
									$_SESSION["proyecto"]=$datos['proyecto'];
								}
								$a=2;
							}
						}
 					}	
				}
 			}
 			return $a;
	
 		}
 	}

?>