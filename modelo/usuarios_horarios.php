<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class usuariosHorarios{
		private $usuario;
		private $id_horario;
		private $fecha;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("usuarios_horarios");
			$this->con->setB("usuario,id_horario,fecha");
		}
		public function setUsuario($usuario){
			$this->usuario=$usuario;
		}
		public function getUsuario(){
			return $this->usuario;
		}
		public function setIdHorario($id_horario){
			$this->id_horario=$id_horario;
		}
		public function getIdHorario(){
			return $this->id_horario;
		}
		public function setFecha($fecha){
			$this->fecha=$fecha;
		}
		public function getFecha(){
			return $this->fecha;
		}
		public function registrar(){
			$this->con->setB("usuario,id_horario,fecha");
			$this->con->setC("'$this->usuario','$this->id_horario','$this->fecha'");
			$resultado=$this->con->registra();
			if(!$resultado){
				return false;
			}
			else{
				return true;
			}
		}
		public function buscar2(){
			$this->con->setB("id");
			$this->con->setC($this->id);
			$lista=$this->con->buscar2();
			if(empty($lista)==true){
				return false;
			}else{
				foreach($lista as $datos){
					$this->usuario=$datos['usuario'];
					$this->id_horario=$datos['id_horario'];
					$this->fecha=$datos['fecha'];
				}
			}
		}
		public function busqueda_horario(){
			$arrayReturn = array();
			$sql= "SELECT usuario FROM sesion WHERE id_tipo_usuario=2 OR id_tipo_usuario=4";
			$lista=$this->con->actualizar($sql);
			foreach($lista as $d){
				$sql= "SELECT usuario.usuario,nombres,apellidos,id_horario,usuarios_horarios.fecha,id_horario,fecha 
						FROM usuarios_horarios 
						RIGHT JOIN usuario ON usuario.usuario=usuarios_horarios.usuario 
						LEFT JOIN horarios ON usuarios_horarios.id_horario=horarios.id 
						WHERE usuario.usuario='".$d['usuario']."' 
						ORDER BY usuarios_horarios.fecha DESC LIMIT 1";
				$lista2=$this->con->actualizar($sql);
				while($datos=mysqli_fetch_assoc($lista2)){
					$arrayReturn['data'][]=$datos;
				}
			}
	    	return $arrayReturn;
		}
		public function listado_horario(){
			$arrayReturn = array();
			$sql= "SELECT usuario FROM sesion WHERE id_tipo_usuario=2 OR id_tipo_usuario=4";
			$lista=$this->con->actualizar($sql);
			foreach($lista as $d){
				$sql= "SELECT usuario.usuario as id,usuario.usuario as title 
							FROM usuarios_horarios 
							RIGHT JOIN usuario ON usuario.usuario=usuarios_horarios.usuario 
						    LEFT JOIN horarios ON usuarios_horarios.id_horario=horarios.id 
						    WHERE usuario.usuario='".$d['usuario']."'
						    ORDER BY usuarios_horarios.fecha DESC LIMIT 1";
				$lista2=$this->con->actualizar($sql);
				while($datos=mysqli_fetch_assoc($lista2)){
					$arrayReturn[]=$datos;
				}
			}
	    	return $arrayReturn;
		}
		public function listado_horario_2($usuario){
			$arrayReturn = array();
			$sql= "SELECT id,
					CASE
					    WHEN hora_final ='0000-00-00 00:00:00' THEN CONCAT('Agente Conectado desde: ',TIMEDIFF(now(),hora_inicio)) 
					    ELSE CONCAT('Tiempo en Sesión ',TIMEDIFF(hora_final,hora_inicio))
					END
					as text, 
					hora_inicio as start_date , 
					CASE
					    WHEN hora_final ='0000-00-00 00:00:00' THEN now()  
					    ELSE hora_final
					END
					 as end_date 
					FROM horario_sesion where usuario='".$usuario."'";
			$lista2=$this->con->actualizar($sql);
			while($datos=mysqli_fetch_assoc($lista2)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}

	}
?>