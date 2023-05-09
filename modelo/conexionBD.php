<?php  

	class conexionbd {
		private $bd_nombre;
		private $bd_hostname;
		private $bd_usuario;
		private $bd_password;
		private $puerto;
		private $con;
		private $a;
		private $b;
		private $c;
		public function __construct(){
			$this->bd_hostname="127.0.0.1";
			$this->bd_usuario="postgres";
			$this->bd_password="1234";
			$this->bd_nombre="app_bancoagrario";
			$this->puerto=5432;
			$this->con= pg_connect("host='".$this->bd_hostname."'port='".$this->puerto."'dbname='".$this->bd_nombre."'user='".$this->bd_usuario."'password='".$this->bd_password."'");
		}
		public function consultaSimple($sql){
			pg_query($this->con,$sql);
		}
		public function consultaRetorno($sql){
			$res=pg_query($sql);
			return $res;
		}
		public function setA($a){
				$this->a=$a;
		}
		public function setB($b){
			$this->b=$b;
		}
		public function setC($c){
			$this->c=$c;
		}
		public function operacion($resultado){
			if($resultado!=false){
	    		$data = array();
				while($datos=pg_fetch_assoc($resultado)){
					$data["data"][]=$datos;
				}
				return $data;
			}
			return false;
		}
		public function buscarTodos(){
			$sql= "SELECT * FROM $this->a";
	    	return $this->operacion($this->consultaRetorno($sql));
		}
		public function buscar(){
			$sql= "SELECT * FROM $this->a WHERE $this->b='".$this->c."'";
			return $this->operacion($this->consultaRetorno($sql));
		}
		public function buscar2(){
			$arrayReturn = array();
			$sql= "SELECT * FROM $this->a WHERE $this->b='".$this->c."'";
			$resultado = $this->consultaRetorno($sql);
			while($datos=pg_fetch_assoc($resultado)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function registra(){
			$sql= "INSERT INTO $this->a ($this->b) VALUES($this->c)";
			return $this->consultaRetorno($sql);
		}
		public function contar(){
			$sql= "SELECT * FROM $this->a order by $this->b desc limit 1";
			$resultado = $this->consultaRetorno($sql);  
			$num=0;
			if($resultado!=false){
				while($datos=pg_fetch_assoc($resultado)){
					$num=$datos[$this->b];
				}
			}			
			return $num;
		}
		public function actualizar($sql){
			return $this->consultaRetorno($sql);
		}
		public function consultaCompleja(){
			$sql= "SELECT * FROM $this->a order by $this->b";
			return $this->operacion($this->consultaRetorno($sql));
		}
		public function consultaComplejaPlus(){
			$arrayReturn = array();
			$sql= "SELECT * FROM $this->a where $this->b order by $this->c";
			$resultado = $this->consultaRetorno($sql);
			while($datos=pg_fetch_assoc($resultado)){
				$arrayReturn[]=$datos;
			}
	    	return $arrayReturn;
		}
		public function eliminar(){
			$sql= "DELETE FROM $this->a  WHERE $this->b='".$this->c."'";
			return $this->consultaRetorno($sql);
		}
		public function eliminarComplejo(){
			$sql= "DELETE FROM $this->a  WHERE $this->b";
			return $this->consultaRetorno($sql);
		}
		public function buscarTodos2(){
			$arrayReturn = array();
			$sql= "SELECT * FROM $this->a";
	    	$resultado = $this->consultaRetorno($sql);
			while($datos=pg_fetch_assoc($resultado)){
				$arrayReturn[]=$datos;
			}
			return $arrayReturn;
		}
	}
?>
