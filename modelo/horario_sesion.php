<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class horarioSesion{
		private $id;
		private $usuario;
		private $hora_inicio;
		private $hora_final;
		private $horario;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("horario_sesion");
			$this->con->setB("id,usuario,hora_inicio,hora_final,horario");
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
		public function setUsuario($usuario){
			$this->usuario=$usuario;
		}
		public function getUsuario(){
			return $this->usuario;
		}
		public function setHoraInicio($hora_inicio){
			$this->hora_inicio=$hora_inicio;
		}
		public function getHoraInicio(){
			return $this->hora_inicio;
		}
		public function setHoraFinal($hora_final){
			$this->hora_final=$hora_final;
		}
		public function getHoraFinal(){
			return $this->hora_final;
		}
		public function setHorario($horario){
			$this->horario=$horario;
		}
		public function getHorario(){
			return $this->horario;
		}
		public function registrar(){
			$this->con->setB("id,usuario,hora_inicio,horario");//funcion que registra inicio de sesion
			$this->con->setC("'$this->id','$this->usuario','$this->hora_inicio','$this->horario'");
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
					$this->id=$datos['id'];
					$this->usuario=$datos['usuario'];
					$this->hora_inicio=$datos['hora_inicio'];
					$this->hora_final=$datos['hora_final'];
					$this->horario=$datos['horario'];
				}
			}
		}
		public function validar_existencia(){
			$sql= "SELECT id FROM horario_sesion WHERE horario_sesion.usuario='".$_SESSION["usuario"]."' and hora_final='00:00:00'";
			$lista=$this->con->actualizar($sql);
			$num = mysqli_num_rows($lista);
			if($num==0){
				return false;
			}else{
				foreach($lista as $datos){
					$this->id=$datos['id'];
				}
				return true;
			}
		}
		public function buscar_horario(){
			$sql= "SELECT usuario.usuario,nombres,apellidos,id_horario,usuarios_horarios.fecha,fecha 
						FROM usuarios_horarios 
						RIGHT JOIN usuario ON usuario.usuario=usuarios_horarios.usuario 
						LEFT JOIN horarios ON usuarios_horarios.id_horario=horarios.id 
						WHERE usuario.usuario='".$this->usuario."' 
						ORDER BY usuarios_horarios.fecha DESC LIMIT 1";
			$lista=$this->con->actualizar($sql);
			foreach($lista as $datos){
				$this->horario=$datos['id_horario'];
			}
		}
		public function horario_inicio($fecha,$usuario){
			$sql= "SELECT * FROM horario_sesion WHERE hora_inicio LIKE '%".$fecha."%' AND usuario='".$usuario."' order by id asc LIMIT 1";
			$lista=$this->con->actualizar($sql);
			foreach($lista as $datos){
				$this->id=$datos['id'];
				$this->usuario=$datos['usuario'];
				$this->hora_inicio=$datos['hora_inicio'];
				$this->hora_final=$datos['hora_final'];
				$this->horario=$datos['horario'];
			}
		}
		public function actualizar($a,$b,$id){
			$sql= "UPDATE horario_sesion SET ".$a."='$b'
			WHERE id='".$id."'";
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