<?php 
	require_once 'conexionBD.php';
	/**
	*/
	class horarios{
		private $id;
		private $fecha_creacion;
		private $hora_inicio;
		private $hora_final;
		private $estatus;
		private $creado;
		function __construct(){
			$this->con= new conexionBD();
			$this->con->setA("horarios");
			$this->con->setB("id,fecha_creacion,hora_inicio,hora_final,estatus,creado");
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
		public function setfechaCreacion($fecha_creacion){
			$this->fecha_creacion=$fecha_creacion;
		}
		public function getfechaCreacion(){
			return $this->fecha_creacion;
		}
		public function sethoraInicio($hora_inicio){
			$this->hora_inicio=$hora_inicio;
		}
		public function gethoraInicio(){
			return $this->hora_inicio;
		}
		public function sethoraFinal($hora_final){
			$this->hora_final=$hora_final;
		}
		public function gethoraFinal(){
			return $this->hora_final;
		}
		public function setCreado($creado){
			$this->creado=$creado;
		}
		public function getCreado(){
			return $this->creado;
		}
		public function setEstatus($estatus){
			$this->estatus=$estatus;
		}
		public function getEstatus(){
			return $this->estatus;
		}
		public function registrar(){
			$this->con->setB("id,fecha_creacion,hora_inicio,hora_final,estatus,creado");
			$this->con->setC("'$this->id','$this->fecha_creacion','$this->hora_inicio','$this->hora_final','$this->estatus','".$_SESSION["usuario"]."'");
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
					$this->fecha_creacion=$datos['fecha_creacion'];
					$this->hora_inicio=$datos['hora_inicio'];
					$this->hora_final=$datos['hora_final'];
					$this->estatus=$datos['estatus'];
					$this->creado=$datos['creado'];
				}
			}
		}
		public function consultar_activos(){
			$sql= "SELECT * FROM horarios WHERE estatus=1";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=mysqli_fetch_assoc($lista)){
				$arrayReturn["data"][]=$datos;
			}
	    	return $arrayReturn;
		}
		public function consultar_activos2(){
			$sql= "SELECT * FROM horarios WHERE estatus=1";
			$lista=$this->con->actualizar($sql);
			$arrayReturn = array();
			while($datos=mysqli_fetch_assoc($lista)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function busqueda_horario(){
			$arrayReturn = array();
			$sql= "SELECT usuario FROM sesion WHERE id_tipo_usuario=2 OR id_tipo_usuario=4";
			$lista=$this->con->actualizar($sql);
			foreach($lista as $d){
				$sql= "SELECT usuario.usuario,nombres,apellidos,id_horario,usuarios_horarios.fecha,hora_inicio,hora_final 
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
	}
?>