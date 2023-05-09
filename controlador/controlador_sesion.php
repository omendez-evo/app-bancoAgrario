<?php 
	session_start();
	require_once '../modelo/sesion.php';
	require_once '../modelo/notificacion_receptor.php';
	require_once '../modelo/notificacion.php';
	require_once '../modelo/horario_sesion.php';



	$notificacion= new notificacion();
    $notificacionReceptor= new notificacionReceptor();
	$sesion = new Sesion();
	$horarioSesion= new horarioSesion();
	switch ($_GET['opcion']) {
		case '1'://Inicio de sesion
			$sesion->setUsuario(strtolower($_POST['usuario']));
			$sesion->setContraseña($_POST['contraseña']);
			
			$retorno=$sesion->inicioSesion();
			if($retorno != 3){
				if($_SESSION["id_tipo_usuario"]!=1){
					ini_set('date.timezone', 'America/Bogota');
					$time = time();
					
					//parte que envia notificacion cada vez que inicia sesion
					$notificacion->setId();
					$notificacion->setUsuarioRemitente($_SESSION["usuario"]);
					$notificacion->setEstatus(1);
					$notificacion->setFecha(date("Y-m-d H:i:s", $time));
					$notificacion->setAsunto("Ha Iniciado Sesión");
					if($notificacion->registrar()==true){
						$notificacionReceptor->setId($notificacion->getId());
						$notificacionReceptor->setEstatus(1);
						$sesion->setId_tipo_usuario(1);
						$lista=$sesion->listar();
						if($lista!=false){
							foreach($lista as $datos){
								$notificacionReceptor->setUsuarioReceptor($datos['usuario']);
								$notificacionReceptor->registrar();
							}
						}
					}
				}
			}
			echo json_encode($retorno);
		break;	
		case '2'://redireccionar perfiles
			
			switch ($_SESSION["id_tipo_usuario"]) {
				case '1':// perfil
					$_SESSION["proyecto"]=$_GET['proyecto'];
					header("location: ../view/adm/index.php");	
					break;
				case '2':// perfil
					$_SESSION["proyecto"]=$_GET['proyecto'];
					header("location: ../view/agente/index.php");	
					break;
				case '3':// perfil
					header("location: ../view/visitante/index.php");	
					break;
				case '4':// perfil
					$_SESSION["proyecto"]=$_GET['proyecto'];
					header("location: ../view/n2/index.php");	
					break;
				default:
					# code...
					break;
			}
		break;
		case '3': //cerrar sesion
				if($_SESSION["id_tipo_usuario"]!=1){
					ini_set('date.timezone', 'America/Bogota');
						$time = time();
				
						$notificacion->setId();
						$notificacion->setUsuarioRemitente($_SESSION["usuario"]);
						$notificacion->setEstatus(1);
						$notificacion->setFecha(date("Y-m-d H:i:s", $time));
						$notificacion->setAsunto("Ha Cerrado Sesión");
						if($notificacion->registrar()==true){
							$notificacionReceptor->setId($notificacion->getId());
							$notificacionReceptor->setEstatus(1);
							$sesion->setId_tipo_usuario(1);
							$lista=$sesion->listar();
							if($lista!=false){
								foreach($lista as $datos){
									$notificacionReceptor->setUsuarioReceptor($datos['usuario']);
									$notificacionReceptor->registrar();
								}
							}
						}
				}
				
				session_destroy();
			header("location: ../index.php");
		break;
		case '4'://cambio de contraseña
			# code...
			echo "<script>";
				$sesion->setUsuario($_SESSION["usuario"]);
				if($sesion->actualizar("contrasena",$_POST['password'])== true){
	                echo 'toastr.success("Cambio de contraseña exitoso");';
	                $_SESSION["contraseña"]=$_POST['password'];
	            }else{
	            	echo 'toastr.error("Error en cambio de Contraseña");';
	            }	
           	echo "</script>";
			break;
		case '5':
			echo "<script>";
				if($_POST['password']==$_SESSION['contraseña']){
					echo"$('input[disabled]').removeAttr('disabled');";
				}
			echo "</script>";
			break;

		default:echo "opcion no existe";
			
			break;
	}

?>