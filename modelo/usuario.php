<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class usuario{
		private $usuario;
		private $nombres;
		private $apellidos;
		private $telefono;
		private $correo;
		private $estatus;

		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("usuario");
			$this->con->setB("usuario,nombres,apellidos,telefono,correo,estatus");
		}
		public function setUsuario($usuario){
			$this->usuario=$usuario;
		}
		public function getUsuario(){
			return $this->usuario;
		}
		public function setNombres($nombres){
			$this->nombres=$nombres;
		}
		public function getNombres(){
			return $this->nombres;
		}
		public function setApellidos($apellidos){
			$this->apellidos=$apellidos;
		}
		public function getApellidos(){
			return $this->apellidos;
		}
		public function setTelefono($telefono){
			$this->telefono=$telefono;
		}
		public function getTelefono(){
			return $this->telefono;
		}
		public function setCorreo($correo){
			$this->correo=$correo;
		}
		public function getCorreo(){
			return $this->correo;
		}
		public function setEstatus($estatus){
			$this->estatus=$estatus;
		}
		public function getEstatus(){
			return $this->estatus;
		}
		public function consultarTodos(){
			$sql= "SELECT usuario.usuario,id_tipo from usuario INNER JOIN sesion ON usuario.usuario=sesion.usuario where usuario.estatus=1 AND sesion.id_tipo in (1,2,4)";
			$lista=$this->con->actualizar($sql);
			while($datos=pg_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
	}
?>