INSERT INTO usuario (usuario, estatus)
	VALUES 
		('bpereda', 1),
		('olserran', 1),
		('nzamudio', 1),
		('dcotacio', 1),
		('joanbeta', 1),
		('juliandl', 1),
		('ghilario', 1),
		('jclesmes', 1),
		('alega', 1),
		('cabarrig', 1)
--tabla sesion

	INSERT INTO sesion (usuario, contraseña, id_tipo_usuario)
	VALUES 
		('bpereda', 'Colombia20+', 1),
		('olserran', 'Colombia20+', 1),
		('nzamudio', 'Colombia20+', 1),
		('dcotacio', 'Colombia20+', 1),
		('joanbeta', 'Colombia20+', 1),
		('juliandl', 'Colombia20+', 1),
		('ghilario', 'Colombia20+', 2),
		('jclesmes', 'Colombia20+', 2),
		('alega', 'Colombia20+', 2),
		('cabarrig', 'Colombia20+', 1)

--tabla incidente

	INSERT INTO incidente (id, fecha_inicio, fecha_fin,responsable,afectados,descripcion,id_area,id_prioridad,id_estado)
	VALUES 
		('17951078','2/08/2020 7:04','6/08/2020 11:53','juliandl','Ospina Gomez, Juan Diego','PAM-Privileged Account Management / Falla de acceso','2','1','3'),
		('17951244','2/08/2020 14:20','2/08/2020 14:28','ghilario','	Builes Lopera, Stefany','CyberArk PAM - Error de autenticación','2','1','3'),
		('17951291','2/08/2020 17:00','2/08/2020 17:07','ghilario','	Builes Lopera, Stefany','CyberArk PAM - Error de autenticación','2','1','3'),
		('17956362','3/08/2020 16:00','5/08/2020 15:47','nzamudio','	Betancur Ospina, Edwin Jovan','Cordial saludo, se realiza pruebas desde la plataforma de Cyberark hacia los datapowers productivos y no productivos y se evidencia que falla el ingreso de la sesión por SSH, además de que no permite tener abierta la sesión web y la sesión sh al mismo tiempo, se adjuntan las evidencias de cada uno de los datapowers para la revisión','2','2','3'),
		('17961731','4/08/2020 15:33','5/08/2020 20:10','jclesmes','	Ramirez Lopez, Jonathan','CyberArk PAM - Error de autenticación','2','1','4'),
		('17958955','4/08/2020 9:49','4/08/2020 18:18','nzamudio','Salazar Herrera, Juan Esteban','PAM-Privileged Account Management_fallas con el acceso','2','1','3'),
		('17967184','5/08/2020 15:00','5/08/2020 15:05','jclesmes','	Perez Lopez, David de Jesus','PAM-Privileged Account Management / Falla de acceso / Desbloqueo','2','1','3'),
		('17967728','5/08/2020 15:56','5/08/2020 19:45','nzamudio','	Martinez Salgado, Luis Alberto','PAM-Privileged Account Management / Falla de acceso','2','1','3'),
		('17971046','6/08/2020 11:39','6/08/2020 11:43','jclesmes','	Martinez Salgado, Luis Alberto','PAM-Privileged Account Management / Falla de acceso','2','1','4'),
		('17975328','9/08/2020 2:37','9/08/2020 4:19','alega','Loaiza Aguirre, Edward 4 ','Sin accesos a Servidor','2','1','4'),
		('17977414','10/08/2020 15:05','10/08/2020 15:42','ghilario','	Salazar Cardona, Hernan Alonso','No Conecta a BD - Remote App no conecta','2','1','3'),
		('17974372','11/08/2020 10:36','11/08/2020 10:43','ghilario','	Betancur Ospina, Edwin Jovan','Sin accesos a Servidor','2','1','4'),
		('17974380','11/08/2020 11:21','11/08/2020 11:42','jclesmes','	Betancur Ospina, Edwin Jovan','Sin accesos a Servidores','2','1','4'),
		('17988545','12/08/2020 10:36','12/08/2020 10:55','jclesmes','	Agudelo Colorado, Franz Esteban','Cuenta Bovedad Bloqueada','2','1','4'),
		('17995482','13/08/2020 14:13','14/08/2020 12:18','nzamudio','Leon Osorio, Juan David','CyberArK - Usuario Cache Pegados En La Autenticación','1','1','3'),
		('17996420','13/08/2020 14:22','13/08/2020 14:32','ghilario','Diago Perez, Francisco Andres','Desbloqueo usuario CyberArk - fadiago','2','1','3'),
		('17998977','14/08/2020 11:21','14/08/2020 14:44','jclesmes','Valencia Mejia, Andres Felipe','Error de Acceso a Base de Datos desde CyberArk','2','1','3'),
		('17999005','18/08/2020 8:10','18/08/2020 11:22','olserran','	olserran','Desbloqueo de cuenta CyberArk - usrtsdba 
		','2','1','4'),
		('18002622','15/08/2020 23:07','16/08/2020 12:09','ghilario','	Parra Londono, Juan Pablo','CyberArk PAM - Error de autenticación','2',' 	1 ','3'),
		('18003588','18/08/2020 0:04','18/08/2020 0:22','alega',' 	Builes Lopera, Stefany ','Cyberark - Autenticacion fallida ','2',' 	1 ','3'),
		('18004112','18/08/2020 8:49','19/08/2020 15:33','ghilario','	Guerrero Gomez, Mauricio','Falla en el ingreso a la 2 CyberArk para consultar Bases de Datos en Producción. ','2','1','4'),
		('18015824','20/08/2020 8:46','20/08/2020 9:05','ghilario','Naranjo Garcia, Juan Gabriel','CyberArk - Authentication failure ','2','1','3'),
		('18016447','20/08/2020 10:44','21/08/2020 12:13','ghilario','Vargas Orrego, Sergio Andres','PAM-Privileged Account Management - No Puede Acceder ','2','1','4'),
		('18016938','20/08/2020 11:22','20/08/2020 11:27','ghilario','	Cuastuza Lopez, Maicol Alberto','CyberArk PAM - fallas para conectarse a los servidores 
		','2','1','4'),
		('18016401','20/08/2020 9:48','20/08/2020 9:49','olserran','	Leon Osorio, Juan David','Buen día, tan amable nos colaboran desbloqueando la cuenta ... ','2','1','4'),
		('18018335','20/08/2020 14:22','20/08/2020 14:35','jclesmes','	Grisales Sierra, Daniel','Transmisión de Archivos Corporativos (TAC - Iseries)_ISWEB0001 - No Puede Acceder ','2','1','4'),
		('18024848','21/08/2020 17:40','21/08/2020 17:43','jclesmes','	Diago Perez, Francisco Andres','PAM-Privileged Account Management / Falla de acceso / Desbloqueo (fadiago) ','2','1','3'),
		('18025843','22/08/2020 10:05','22/08/2020 10:11','ghilario','Pajaro Castillo, Sair Antonio','CyberArk PAM - Error de autenticación','2','1','3'),
		('18027208','24/08/2020 8:54','28/08/2020 16:57','cabarrig','	Pereda, Bob Daniels','Afectación en 3 ILO - Niquia de la Solución CyberArk ','2','2','3'),
		('18027331','24/08/2020 9:01','24/08/2020 9:03','jclesmes','	Navas Quintero, Jhon Fredy','PAM-Privileged Account Management / Falla de acceso / Desbloqueo ','2','1','3'),
		('18028966','24/08/2020 11:12','24/08/2020 12:54','nzamudio','	Rendon Chalarca, Diego Alejandro','Se tiene problemas para acceder al servidor VIOS pbmdebpvio304','2','1','3'),
		('18034217','25/08/2020 10:21','27/08/2020 7:54','nzamudio','	Zuluaga, Juan Pablo','CyberArk - No es posible la conexión a BD ','2','1','4'),
		('18035409','25/08/2020 12:24','25/08/2020 15:13','jclesmes','	Parra Rendon, Elkin Fernando','PAM-Privileged Account Management - No Puede Acceder ','2','1','4'),
		('18036338','25/08/2020 14:26','25/08/2020 14:40','ghilario','Pajaro Castillo, Sair Antonio','CyberArk PAM - Error de autenticación','2','1','3'),
		('18032742','27/08/2020 7:30','27/08/2020 8:00','olserran','	Vargas Orrego, Sergio Andres','Sterling. No le permite el ingreso al aplicativo - contraseña o ID de usuario no válido ','2','1','4'),
		('18048386','27/08/2020 18:18','27/08/2020 18:32','ghilario','	Escobar Muriel, Efrain','CyberArk PAM - Error de autenticación ','2','1','3'),
		('18045174','27/08/2020 23:52','28/08/2020 3:55','nzamudio','Bedoya Bermudez, Luis Ferney ','CyberArk - No es posible acceder a Sufi-DRP','2','1','4'),
		('18058904','31/08/2020 15:03','31/08/2020 15:19','jclesmes','Gonzalez Gallego, Arley Fernando','CyberArk - No hay conexión a la base de datos ','2','1','4'),
		('18059752','31/08/2020 16:19','31/08/2020 16:24','jclesmes','	Junco Aldana, Yohan Mauricio','PAM-Privileged Account Management / Falla de acceso / Desbloqueo','2','1','3'),
		('18064864','2020-09-01 15:00','2020-09-01 15:05','jclesmes','	Villegas Gamboa, Guillermo','CyberArk PAM - Error de autenticación','2','1','5'),
		('18066075','2020-09-01 17:40','2020-09-01 22:52','olserran','	Quintero Rippe, Leonardo Enrique','Falla en CyberArk - No cargan las sesiones a BD','2','1','3'),
		('18066403','2020-09-01 19:18','2020-09-01 19:42','olserran','	Zapata Espinosa, Alexis Ernesto','CyberArk - No abre programa pgadmin BD','2','1','3'),
		('18071608','2020-09-02 17:35','2020-09-02 17:40','jclesmes','	Naranjo Garcia, Juan Gabriel','PAM-Privileged Account Management / Falla de acceso / Desbloqueo ','2','1','3'),
		('18071594','2020-09-02 17:38','2020-09-09 15:58','epereda','	Lesmes Gonzales, Juan Carlos','Sin accesos RDP A Servidor PSM Calle 100','2','1','3'),
		('18071659','2020-09-03 7:22','2020-09-03 7:37','ghilario','	Larrea Henao, Sebastian','Intermedios - Usuario bloqueado ','2','1','3'),
		('18073915','2020-09-03 10:56','2020-09-03 11:07','ghilario','	Vasquez Ortega, Andres Felipe','AS400 Medellin - se presenta inconvenientes con la aplicacion gaia ya que no permite la creacion de usuario','2','1','4'),
		('18074394','2020-09-03 11:46','2020-09-03 12:06','nzamudio','	Villegas, Cesar Augusto','AS400 Was / Error al ingresar al proceso ','2','1','4'),
		('18074408','2020-09-03 11:48','2020-09-03 12:16','ghilario','	Betancur Ospina, Edwin Jovan','Falla ingreso de sesion SSH con Datapower en cyberark','2','1','4'),
		('18076565','2020-09-03 16:33','2020-09-03 16:41','jclesmes','	Villada Castano, Jorge Hernan','PAM-Privileged Account Management / Falla de acceso / Desbloqueo ','2','1','3'),
		('18077863','2020-09-04 8:38','2020-09-04 8:49','ghilario','Villada Castano, Jorge Hernan','PAM - CyberArk Usuario bloqueado ','2','1','3'),
		('18078166','2020-09-04 9:15','2020-09-04 9:26','ghilario','Gil Colon, Ubaldo Rafael','CyberArk - Error de autenticacion ','2','1','3'),
		('18080674','2020-09-04 14:28','2020-09-04 14:43','jclesmes','	Larrea Henao, Sebastian','PAM-Privileged Account Management / Falla de acceso / Desbloqueo','2','1','4'),
		('18089219','2020-09-07 17:14','2020-09-07 18:24','nzamudio','	Rendon Chalarca, Diego Alejandro','Se tiene problemas para acceder al servidor VIOS pbmdebpvio1301 ','2','1','3'),
		('18094339','2020-09-08 16:41','2020-09-08 17:36','ghilario','	Gutierrez Ocampo, Maria Isabel','Error conexión a Base de Datos de AFC','2','1','3'),
		('18100260','2020-09-09 17:28','2020-09-09 17:39','ghilario','	Navas Quintero, Jhon Fredy','CyberArk - Authentication Failure ','2','1','3'),
		('18100531','2020-09-09 19:01','2020-09-09 19:09','ghilario','	Flores Tejeida, Francisco Javier','PAM-Privileged Account Management / Usuario bloqueado','2','1','3'),
		('18100583','2020-09-09 20:33','2020-09-09 21:04','nzamudio','	Castro Zuleta, Jorge Ivan','Registro de la maquina EC2 del grupo de autoescalemiento','2','1','3'),
		('18074729','2020-09-04 7:49','2020-09-04 9:08','nzamudio','Gonzalez Hernandez, Darwin Leon','Oracle / Error de conexión a bases de datos','2','1','4'),
		('18102377','2020-09-10 11:01','2020-09-10 15:41','olserran','	Gutierrez Colorado, Diego Alexander','Accesos a CyberArk con la cuenta WDIEALGUT - maquina WASDRP ','2','1','3'),
		('18105359','2020-09-10 17:30','2020-09-10 17:40','ghilario','	Villada Castano, Jorge Hernan','PAM - CyberArk Usuario bloqueado','2','1','3'),
		('18105459','2020-09-10 17:59','2020-09-10 18:09','ghilario','	Villada Castano, Jorge Hernan','PAM - CyberArk Usuario bloqueado','2','1','3'),
		('18105463','2020-09-10 18:05','2020-09-10 18:20','ghilario','Abad Ramirez, Juanita','CyberArk PAM - Error de autenticación','2','1','3'),
		('18109383','2020-09-11 15:42','2020-09-11 15:50','ghilario','	Villada Castano, Jorge Hernan','cyberark - error de autenticacion se solicita desbloqueo','2','1','3'),
		('18109458','2020-09-11 16:01','2020-09-11 16:09','ghilario','	cChavarriaga Marin, Maria Alejandra','CyberArk PAM - Error de autenticación','2','1','3'),
		('18109485','2020-09-11 16:06','2020-09-11 16:16','ghilario','	Villada Castano, Jorge Hernan','cyberark - error de autenticacion se solicita desbloqueo','2','1','3'),
		('18109610','2020-09-11 16:36','2020-09-11 16:53','ghilario','	Villada Castano, Jorge Hernan','cyberark - error de autenticacion se solicita desbloqueo','2','1','3'),
		('18114445','2020-09-14 14:16','2020-09-14 14:28','alega','Alvarez Rengifo, Camila Alejandra ','CyberArk PAM - Error de autenticación','2','1','3'),
		('18118985','2020-09-15 10:42','2020-09-15 11:49','nzamudio','Giraldo Saldarriaga, Carlos Andres ','CyberArk PAM - No puede iniciar sesion','2','1','3'),
		('18126660','2020-09-16 15:30','2020-09-17 16:07','alega','Rojas Blandon, Henry Adolfo ','CyberArk - No conecta ','2','1','3'),
		('18136156','2020-09-18 14:46','2020-09-18 16:03','alega','Patiño Arroyave, Yudy Elena ','Authentic // inconvenientes para acceder a la base de datos de Monitoreo','2','2','3'),
		('18136732','2020-09-18 15:43','2020-09-18 16:17','alega',' 	Narvaez Prado, Jhon Jairo ','CyberArk - No puede acceder a las bases de datos','2',' 	1 ','4'),
		('18139208','2020-09-21 7:14','2020-09-21 7:27','alega','Lozano Hernan, Moises David ','PAM-Privileged Account Management - CyberArk - falla autenticacion','2',' 	1 ','3'),
		('18140412','2020-09-21 9:41','2020-09-21 11:17','alega',' 	Perez Aguirre, Mario De Jesus ','PAM-Privileged Account Management_ CyberArk No le permite el ingreso','2',' 	1 ','3'),
		('18140994','2020-09-21 10:26','2020-09-21 10:46','alega',' 	Villada Castano, Jorge Hernan ','cyberark - error de autenticacion se solicita desbloqueo','2',' 	1 ','3'),
		('18143704','2020-09-21 15:41','2020-09-21 16:08','ghilario','Flores Tejeida, Francisco Javier','PAM-Privileged Account Management_NU0002001 / problemas de conexion a servidores','2','1','3'),
		('18146234','2020-09-22 11:16','2020-09-22 11:26','alega','Monsalve Gutierrez, Ricardo ','PAM-Privileged Account Management - error de autenticacion ','2','1','3'),
		('18147223','2020-09-22 13:35','2020-09-22 13:40','alega','Avila, Esteban Santiago ','PAM-Privileged Account Management - Se presenta problemas con el certificado','2','1','5'),
		('18150477','2020-09-23 9:27','2020-09-23 9:49','alega','Diaz Gomez, Pablo Andres','DataStage - No esta dejando ingresar con el user DSADM','2','1','4')

--incidente junio

INSERT INTO incidente (id,id_estado,id_prioridad,id_area, fecha_inicio, fecha_fin,responsable,afectados,descripcion)
	VALUES 
('17723258','3','1','2','2020-06-02 9:06','2020-06-09 21:38','joanbeta','	Alzate Gomez, Dennis Andrea','Inconvenientes con el nodo 10.8.146.216 conectores en el balanceador'),
('17724367','3','1','2','2020-06-02 10:25','2020-06-02 11:56','olserran','	Leon Osorio, Juan David','Servidor Pseries - Se Requiere Una Nueva Clave'),
('17725619','5','1','2','2020-06-02 12:45','2020-06-02 13:06','olserran','Higuita Bedoya, Natalia Cristina','Revisión acceso a Servidor'),
('17726896','3','1','2','2020-06-02 15:29','2020-06-02 20:22','juliandl','	Perez Aguirre, Mario De Jesus','CyberArk. Estoy teniendo problemas para acceder a las bases de datos de Hipotecario a través de CyberArk.'),
('17733775','4','1','2','2020-06-03 19:08','2020-06-03 20:14','olserran','	Betancur Urrea, Juan Diego','ciberark -modulo de autogestión gestión para desbloquear usuario no funciona'),
('17739091','3','1','2','2020-06-05 12:26','2020-06-05 12:48','alega','Alzate Alzate, William Osler ','CyberArk - Authentication failure for user (woalzate)'),
('17739107','3','1','2','2020-06-05 2:14','2020-06-05 2:26','alega','Garcia Lopez, Hanner Jose ','CyberArk - Authentication failure for user'),
('17740423','3','1','2','2020-06-05 10:46','2020-06-05 12:24','olserran','	olserran','Se requiere revisar servidor Linux 10.8.114.140'),
('17743551','3','1','2','2020-06-05 16:50','2020-06-05 22:26','juliandl','	olserran','Se esta presentando error en las conexiones psm en el servidor 10.8.146.219.'),
('17744140','3','1','2','2020-06-05 20:01','2020-06-05 20:21','ghilario','	Navas Quintero, Jhon Fredy','No logro acceder a cyberark, o acceso a los servidores wcc por servicios SSH'),
('17744602','3','1','2','2020-06-06 14:53','2020-06-06 14:59','olserran','Garcia Lopez, Hanner Jose','CyberArk - Authentication failure for user'),
('17745313','3','1','2','2020-06-08 8:06','2020-06-08 8:21','ghilario','	Pajaro Castillo, Sair Antonio','CyberArk PAM - Error de autenticación'),
('17745360','4','1','2','2020-06-08 8:19','2020-06-08 12:37','juliandl','	Pineda Alvarez, Astrid Natalia','SBMDEDBD06 - [BD SIS] | 10.8.36.47 | Not reachable (ICMP/PING)'),
('17748498','4','1','2','2020-06-08 14:18','2020-06-08 14:34','jclesmes','Jaramillo Oviedo, Juan Fernando','PAM-Privileged Account Management_Error al ingresar'),
('17754103','3','1','2','2020-06-09 18:04','2020-06-09 21:47','juliandl','	Higuita Niebles, Carlos Mauricio','Inconvenientes De Accesos a Bases de Datos desde CyberArk'),
('17754982','3','1','2','2020-06-09 18:54','2020-06-09 19:03','jclesmes','	Navas Quintero, Jhon Fredy','PAM-Privileged Account Management / Falla de acceso'),
('17754875','3','1','2','2020-06-10 9:07','2020-06-10 9:36','ghilario','	Gil Colon, Ubaldo Rafael','PAM-Privileged Account Management / Falla de acceso'),
('17757032','3','1','2','2020-06-10 10:36','2020-06-10 10:59','ghilario','Navas Quintero, Jhon Fredy','Bloqueado usuario de CyberArk para acceso a servidores por SFTP y SSH.'),
('17757493','3','1','2','2020-06-10 11:06','2020-06-10 17:02','juliandl','	Posada Monsalve, Ivan Dario','CyberArk. Constantemente se presentan error de TimeOut en la coneccion a las bases de datos alojadas en el sistema.'),
('17757956','3','1','2','2020-06-10 12:07','2020-06-11 8:02','juliandl','Mazo Osorio, Richard Leandro','CyberArk. Tengo inconvenientes para ingresar a la maquina sbmdebbd73v y sbmdebbd72v'),
('17759317','3','1','2','2020-06-10 15:28','2020-06-10 15:53','olserran','	Diaz Gomez, Pablo Andres','DATASTAGE FINACLE CDT_fallas con el ingreso'),
('17759156','3','1','2','2020-06-10 15:34','2020-06-11 13:48','cabarrig','	joanbeta','CyberArk. Ampliar Memoria en Componentes PSM1 y PSM3'),
('17761778','3','1','2','2020-06-11 10:00','2020-06-11 10:14','ghilario','Sachica Sanchez, Pedro Daniel','CyberArk-- desbloqueo'),
('17763403','3','1','2','2020-06-11 12:48','2020-06-11 13:21','ghilario','Mendoza Perez, Ever Andres','Las máquinas de as400 arroja el siguiente error,'),
('17764225','3','1','2','2020-06-11 14:47','2020-06-11 15:08','jclesmes','	Tobon Patiño, Juan David','PAM-Privileged Account Management'),
('17765046','3','1','2','2020-06-11 16:36','2020-06-11 16:43','jclesmes','	Molina Papamija, Yadimir','PAM-Privileged Account Management / no le permite ingresar'),
('17765370','3','1','2','2020-06-11 17:14','2020-06-11 17:50','jclesmes','	Gil Colon, Ubaldo Rafael','PAM-Privileged Account Management / Falla de acceso'),
('17765917','3','1','2','2020-06-12 8:07','2020-06-12 8:49','olserran','	Rodriguez Lopez, Claudia Judith','Iseries Medellin por CyberArk me saca'),
('17765945','4','1','2','2020-06-12 8:13','2020-06-12 8:42','olserran','DE La Rosa Garcia, Gabriela','CyberArk-- desbloqueo'),
('17769452','4','1','2','2020-06-12 15:40','2020-06-12 15:54','jclesmes','	Canon Robayo, Juan Pablo','PAM-Privileged Account Management / El usuario fue desconectado de la máquina remota'),
('17770861','3','1','2','2020-06-13 9:25','2020-06-13 17:10','cabarrig','	Pereda, Bob Daniels','hemos sufrido una inestabilidad importante en el procesamiento '),
('17771252','3','1','2','2020-06-14 8:16','2020-06-14 8:28','alega','	Carvajal Gutierrez, Andres','Contraseña para el usuario USRTOPER de SUFI PRODUCCION caducó.'),
('17771374','4','2','2','2020-06-14 11:29','2020-06-14 12:08','jclesmes','	Betancur Betancur, Juan Fernando','CyberArk no se permite ingresar al servidor SBMDEBBD01'),
('17773714','3','1','2','2020-06-16 10:35','2020-06-16 11:23','jclesmes','	Mendoza Perez, Ever Andres','Error 2 Excel en AS400'),
('17773348','4','1','2','2020-06-17 12:36','2020-06-17 14:09','olserran','	Ordonez Upegui, Lorena','Servidor Pseries / nueva clave'),
('17772566','4','1','2','2020-06-16 12:48','2020-06-16 13:12','jclesmes','	Naranjo Saldarriaga, John Fredy','Filezilla - Requiere nueva contraseña'),
('17779958','4','1','2','2020-06-17 12:20','2020-06-17 12:41','olserran','	Carvajal Muñoz, Wilson Albeiro','Servidor Pseries // Restablecer la contraseña'),
('17780595','4','1','2','2020-06-17 13:19','2020-06-17 13:35','olserran','	Arias Hoyos, Maria Jose','Servidor Pseries // Restablecer la contraseña'),
('17780812','4','1','2','2020-06-17 13:41','2020-06-17 13:48','jclesmes','	Mejia Zapata, Sebastian','Servidor Linux - Repisado de contraseña'),
('17783386','4',' 	2','2','2020-06-17 22:40','2020-06-18 0:15','alega','Loaiza Aguirre, Edward Mateo ','SBMDEDBD06 - Reinicio'),
('17783414','3','1','2','2020-06-18 12:18','2020-06-18 12:24','alega','Olivares Cangrejo, Sergio Enrique ','CyberArk - Ingreso al aplicativo'),
('17783758','3','1','2','2020-06-18 8:50','2020-06-18 9:31','jclesmes','	Granados Acevedo, Simon','Cyberark. Desde mi perfil de Cyberark no veo Un Servidor'),
('17777795','3','1','2','2020-06-16 17:33','2020-06-18 9:45','ghilario','Pereda, Bob Daniels','Antivirus alto consumo - Solución CyberArk PAM'),
('17787769','4','1','2','2020-06-18 16:50','2020-06-18 17:05','olserran','	Naranjo Orozco, Andres Mauricio','PAM-Privileged Account Management - No Puede Acceder'),
('17788251','4','1','2','2020-06-18 17:48','2020-06-18 18:37','olserran','Diaz Gomez, Pablo Andres','PAM-Privileged Account Management. Repisar contraseña en CyberArk'),
('17788603','3','1','2','2020-06-19 6:30','2020-06-19 6:47','alega','Gazzola Pastore, Mariano Hernan ','PAM-Privileged Account Management - Usuario bloqueado'),
('17792424','4','1','2','2020-06-19 15:47','2020-06-19 15:53','ghilario','Castro Susa, Monica Milena','CyberArk PAM - Error de autenticación'),
('17793944','3','1','2','2020-06-26 12:44','2020-06-26 17:24','juliandl','Alzate Alzate, William Osler ','Problemas de autenticacion con el usuario QSECOFR en el sistema NALDRP'),
('17794599','3','1','2','2020-06-22 16:19','2020-06-22 19:19','ghilario','	Cortes Escobar, Alexander','PAM-Privileged Account Management // Falla de autenticación'),
('17794611','3','1','2','2020-06-22 16:18','2020-06-22 19:14','ghilario','Cortes Escobar, Alexander','PAM-Privileged Account Management // Fallas al ingresar a Ciber Ark'),
('17784782','4','1','2','2020-06-18 10:06','2020-06-18 10:06','olserran','Gazzola Pastore, Mariano Hernan','PAM-Privileged Account Management_Falla de autenticacion'),
('17778142','3','1','2','2020-06-16 10:35','2020-06-16 10:35','olserran','	Burbano Argoty, Daniel Esteban','PAM-Privileged Account Management_NU0002001 - Certificado'),
('17796473','3','1','2','2020-06-23 11:08','2020-06-23 11:33','olserran','	Rojas Loaiza, Anyeli Beronica','maquina AS400 DDS'),
('17800956','3','1','2','2020-06-24 6:36','2020-06-24 7:23','ghilario','Flores Tejeida, Francisco Javier','CyberArk_falla aplicacion no le permite el ingreso a los servidores desde la 2'),
('17801002','3','1','2','2020-06-24 7:04','2020-06-24 7:22','ghilario','Flores Tejeida, Francisco Javier','PAM - Fallas de acceso CyberArk'),
('17783345','3','1','2','2020-06-25 8:56','2020-06-25 8:59','olserran','	Gil Sanchez, Yohany Alonso','PAM-Privileged Account Management_NU0002001 - no deja acceder'),
('17811000','4','1','2','2020-06-25 15:44','2020-06-25 15:59','olserran','Pineda Alvarez, Astrid Natalia','SBMDEBBD27 | 10.8.36.126 | Se presenta problemas'),
('17813834','4','1','2','2020-06-26 10:16','2020-06-26 10:53','olserran','	Solarte Imbachi, Andres Felipe','PAM-Privileged Account Management / Falla de acceso'),
('17813332','4','1','2','2020-06-26 12:28','2020-06-26 12:54','ghilario','	Flores Tejeida, Francisco Javier','CyberArk_falla aplicacion no le permite el ingreso a los servidores desde la 2 REITERATIVO'),
('17812928','3','1','2','2020-06-26 8:23','2020-06-27 11:20','olserran','	Gutierrez Ocampo, Maritza','Caída masiva servidor producción https://sbmdebprp22v.bancolombia.corp/'),
('17818969','4','2','2','2020-06-29 11:14','2020-06-29 12:39','olserran','	Mejia Gallego, Jonathan Stiven','Error de Conexiones a Servidores desde Cyberark'),
('17819045','4','1','2','2020-06-29 12:55','2020-06-29 13:01','jclesmes','	Hoyos Corredor, Noe Moises','SSH a los ambientes SAP desde CyberArk recibo un mensaje de error'),
('17824136','4','1','2','2020-06-30 15:57','2020-06-30 16:17','olserran','Camargo Morantes, Luis Freddy ','PAM-Privileged Account Management - no funciona la conexion al root de servidores hub'),

--incidente julio

INSERT INTO incidente (id,id_estado,id_prioridad,id_area, fecha_inicio, fecha_fin,responsable,afectados,descripcion)
	VALUES 
('17825868','4','1','2','2020-07-01 7:37','2020-07-01 8:20','jclesmes','	Escobar Freydell, Sebastian','PAM-Privileged Account Management_escritorio remoto'),
('17829520','3','1','2','2020-07-01 14:25','2020-07-01 16:23','alega',' 	Flores Tejeida, Francisco Javier ','CyberArk_falla aplicacion no le permite el ingreso a los servidores desde la aplicación'),
('17800940','4','1','2','2020-07-02 10:13','2020-07-02 10:30','jclesmes','	Gazzola Pastore, Mariano Hernan','Beyondtrust_PasswordSafe - Nueva contraseña'),
('17835480','3','1','2','2020-07-02 15:36','2020-07-02 15:54','olserran','	Ramirez Giraldo, Jose Pablo','No me deja descargar archivos de la maquina LEASING_D desde la aplicacion CYBERARK'),
('17837974','3','1','1','2020-07-03 8:58','2020-07-03 9:14','olserran','	Patiño Ramírez, Juan Camilo','problemas al tratar de ingresar por Cyberark a las Bases de Datos de SQL'),
('17838111','3','1','1','2020-07-03 9:11','2020-07-03 9:16','olserran','	Jaramillo Oviedo, Juan Fernando','CyberArk. error en el aplicativo - validar adjunto'),
('17837786','3','1','1','2020-07-03 10:02','2020-07-03 10:11','jclesmes','	Hurtado Rojas, Leydi Lorena','Error Conexión con CYBERARK, a Base de Datos de tipo SQLSERVER'),
('17838256','3','1','1','2020-07-03 10:32','2020-07-03 10:55','jclesmes','	Ojeda Lopez, Roberto Carlos','PAM-Privileged Account Management - No Puede Acceder'),
('17843441','3','1','1','2020-07-04 15:13','2020-07-04 15:16','jclesmes','	Piedrahita Villa, Jonathan','Desbloqueo usuario CyberArk - Token bloqueado'),
('17845677','3','1','1','2020-07-06 10:16','2020-07-06 14:11','nzamudio','	Rendon Chalarca, Diego Alejandro','Problemas para acceder al VIOS pbmdebpvio501 desde CiberArk'),
('17846463','3','1','2','2020-07-06 11:22','2020-07-06 15:44','nzamudio','	Botero Palacio, Catalina','Problemas para hacer transferencias en Iseries Medellin'),
('17855776','3','1','2','2020-07-07 19:36','2020-07-07 20:51','nzamudio','	Arboleda Gonzalez, Oscar Dario','Error Sesiones ISeries desde CyberArk - No funciona correctamente'),
('17856024','3','1','2','2020-07-07 6:45','2020-07-07 7:40','nzamudio','	Londoño Ortiz, Wilmar Jovany','PAM-Privileged Account Management - frecuentemente le aparece Sesion suspendida'),
('17858668','3','1','2','2020-07-08 12:08','2020-07-09 14:29','nzamudio','Rivera Castano, Saul Andres','CyberArk PAM - Error de autenticación'),
('17860549','4','1','1','2020-07-08 16:20','2020-07-08 16:24','jclesmes','	Gallego Gaviria, Andres Felipe','CyberArk PAM - El usuario fue desconectado de la máquina remota'),
('17864817','4','1','1','2020-07-09 14:59','2020-07-09 15:07','jclesmes','	Correa Gonzalez, Maria Alejandra','falla en CYBERARK, debido a que ingreso a sacar de la boveda la contraseña'),
('17856772','4','1','1','2020-07-09 19:15','2020-07-09 19:34','jclesmes','	Garcia Sierra, Andres Felipe','CyberArk_ Tengo problemas para ingresar a CyberArk'),
('17868240','4','1','1','2020-07-10 11:01','2020-07-10 11:24','ghilario','Benavides Atencio, Gustavo Adolfo','PAM-Privileged Account Management - error de certificados'),
('17872730','4','1','1','2020-07-12 6:36','2020-07-12 9:32','jclesmes','	Martinez Sosa, Yuliza','SBMDEBPBD25 |10.8.36.142| No se tiene acceso al servidor'),
('17874794','3','1','1','2020-07-13 10:18','2020-07-13 10:26','jclesmes','Jaramillo Restrepo, Tomas Cipriano','PAM-Privileged Account Management / Falla de acceso'),
('17879032','4','1','1','2020-07-14 7:21','2020-07-14 8:11','juliandl','Vargas Orrego, Sergio Andres','CyberArk - Reconciliación cuenta Usuario WSEAVARGA'),
('17880373','3','1','1','2020-07-14 10:12','2020-07-14 10:25','jclesmes','	Navas Quintero, Jhon Fredy','PAM-Privileged Account Management / Falla de acceso'),
('17877255','4','1','1','2020-07-14 16:03','2020-07-14 17:37','ghilario','Flores Tejeida, Francisco Javier','LPT - Netscaler - Presenta problemas de conexión'),
('17884408','3','1','1','2020-07-15 6:21','2020-07-15 6:34','alega',' 	Navas Quintero, Jhon Fredy ','PAM-Privileged Account Management / Falla de acceso'),
('17885482','3','1','1','2020-07-15 9:34','2020-07-15 9:44','jclesmes','	Rodriguez Ducuara, Oscar David','PAM-Privileged Account Management / Falla de acceso'),
('17891580','3','1','1','2020-07-16 11:21','2020-07-16 11:26','jclesmes','	Avila Poo, David Alonso','PAM-Privileged Account Management / Falla de acceso'),
('17892070','4','1','1','2020-07-16 11:30','2020-07-16 11:40','jclesmes','	Rincon Pineda, Deysi','CyberArk PAM - Error de autenticación'),
('17892271','4','1','2','2020-07-16 12:22','2020-07-16 15:39','ghilario','	Rios Ramirez, Catalina','Inconvenientes IBM Navigator'),
('17892740','3','1','2','2020-07-16 13:31','2020-07-17 11:40','jclesmes','	Cardona Melo, Jessica','usuarios de seccion accesos plataformas Iseries'),
('17893312','4','1','2','2020-07-16 17:14','2020-07-16 17:24','ghilario','Betancur Ramos, Arnulfo Andres','Beyondtrust_PasswordSafe / Bloqueo de Usuario'),
('17894676','3','1','1','2020-07-16 18:05','2020-07-16 18:11','ghilario','	Garcia Lopez, Hanner Jose','PAM-Privileged Account Management - Error de autenticación'),
('17883773','4','1','1','2020-07-17 8:45','2020-07-17 8:55','jclesmes','	Nuñez Diaz, Diego Fernando','PAM-Privileged Account Management - No Puede Acceder'),
('17896790','3','1','1','2020-07-17 11:13','2020-07-17 11:26','jclesmes','	Celis Marulanda, Nahyol Felipe','PAM-Privileged Account Management_falla autenticacion'),
('17898088','3','1','1','2020-07-17 15:02','2020-07-17 15:20','ghilario','Gutierrez Sierra, Sandra Juliet','PAM-Privileged Account Management - No Puede Acceder'),
('17899884','4','1','1','2020-07-18 7:55','2020-07-18 8:11','jclesmes','Foronda Ochoa, Maria Cristina','CyberArk - no tiene la cuenta de CNXIPPWA publicada'),
('17900785','3','1','1','2020-07-20 1:26','2020-07-20 7:13','ghilario','Parra Londono, Juan Pablo','PAM-Privileged Account Management_NU0002001 - Error de autenticación'),
('17901859','4','1','2','2020-07-21 8:23','2020-07-21 10:03','ghilario','Jaramillo Restrepo, Tomas Cipriano','PAM-Privileged Account Management_No carga la aplicación'),
('17906347','3','1','1','2020-07-21 16:00','2020-07-21 16:05','jclesmes','Madrigal Arrieta, Lina Marcela','PAM-Privileged Account Management_falla bloqueo'),
('17908148','3','1','1','2020-07-22 9:27','2020-07-22 10:22','olserran','Duran Ruiz, Cesar Augusto','winSCP'),
('17908637','3','1','1','2020-07-22 10:09','2020-07-22 15:17','juliandl','Zapata Restrepo, Maria Paulina','Error al conectar a BD Sql'),
('17908226','3','1','2','2020-07-22 9:44','2020-07-23 13:00','juliandl','	Lopera Galeano, Genesis Liceth','PAM-Privileged Account Management - Lentitud'),
('17909286','3','1','1','2020-07-22 11:27','2020-07-22 15:59','juliandl','Pereda, Bob Daniels','Servidor'),
('17914080','4','1','1','2020-07-23 9:34','2020-07-23 9:42','ghilario','	Gallo Mejia, Catalina','PAM-Privileged Account Management_Faltan servidores'),
('17913854','3','2','1','2020-07-23 9:07','2020-07-23 10:39','ghilario','Mendoza Mendoza, Francisco Javier','No se tienen Conexion a iSERIES CALWAS por CYBERARK'),
('17916237','3','1','1','2020-07-23 13:41','2020-07-23 15:04','juliandl','	Salazar Herrera, Wilson Hernan','PAM-Privileged Account Management - No Puede Acceder'),
('17915502','3','1','1','2020-07-23 12:10','2020-07-23 15:44','olserran','	Botero Palacio, Catalina','CyberArk - Nuevamente presento problemas para hacer transferencia de archivos desde Cyberark,'),
('17916851','3','1','1','2020-07-23 14:55','2020-07-23 15:01','jclesmes','	Montoya Restrepo, Juan Pablo','CyberArk PAM - Error de autenticación - Desbloqueo'),
('17915685','4','1','1','2020-07-23 12:09','2020-07-23 12:10','ghilario','	Velasquez Mona, Karen Lizeth','PAM-Privileged Account Management_Acceso'),
('17915796','4','1','1','2020-07-23 12:08','2020-07-23 12:09','ghilario','Madrigal Arrieta, Lina Marcela','Cyberark - Authentication failure for User (lmmadrig).'),
('17917600','3','1','1','2020-07-23 16:19','2020-07-23 16:24','jclesmes','	Madrigal Arrieta, Lina Marcela','PAM-Privileged Account Management / Falla de acceso / Desbloqueo'),
('17916231','3','1','1','2020-07-24 8:25','2020-07-24 10:09','juliandl','	Grisales Sierra, Daniel','CyberArk - presento inconveniente para el ingreso a la maquina WASNLSV2 por medio de la herramienta CYBERARK'),
('17918743','3','1','1','2020-07-24 9:03','2020-07-24 10:14','nzamudio','Castaño Arroyave, Natalia','CyberArk - Se solicita por favor sea validado mi usuario de wassv2'),
('17919490','3','1','1','2020-07-24 10:17','2020-07-24 10:28','olserran','	Velasquez Atencio, Juan Carlos','Problemas para conectar por cyberark hacia instancia RDS'),
('17920750','4','1','1','2020-07-24 12:00','2020-07-24 12:00','jclesmes','Arias Parra, David Humberto','PAM-Privileged Account Management_fallas con el accesog'),
('17921197','3','1','1','2020-07-24 13:18','2020-07-24 13:32','olserran','	Velasquez Atencio, Juan Carlos','PAM-Privileged Account Management_'),
('17922407','4','1','1','2020-07-24 16:24','2020-07-24 16:35','jclesmes','Gallego Gaviria, Andres Felipe','CyberArk PAM - El usuario fue desconectado de la máquina remota'),
('17921980','3','1','1','2020-07-24 17:26','2020-07-24 17:32','jclesmes','	Garcia Lopez, Hanner Jose','PAM-Privileged Account Management / Falla de acceso / Desbloqueo'),
('17923284','3','1','1','2020-07-25 8:16','2020-07-25 8:33','ghilario','Garcia Lopez, Hanner Jose','CyberArk - Authentication failure for user'),
('17923392','3','1','1','2020-07-25 10:09','2020-07-25 10:16','ghilario','Garcia Lopez, Hanner Jose','CyberArk - Authentication failure for user'),
('17923589','3','1','1','2020-07-25 15:11','2020-07-25 15:15','ghilario','Garcia Lopez, Hanner Jose','CyberArk - Authentication failure for user'),
('17924247','3','1','1','2020-07-27 8:49','2020-07-27 8:56','jclesmes','	Arias Parra, David Humberto','PAM-Privileged Account Management / Falla de acceso / Desbloqueo'),
('17925291','3','1','1','2020-07-27 10:00','2020-07-27 14:59','juliandl','	Quintero Tobon, Ricardo Andres','Notificaciones CyberArk - Vault'),
('17926229','3','3','2','2020-07-27 11:34','2020-07-27 14:53','juliandl','Pereda, Bob Daniels','PAM-Privileged Account Management - No Puede Accede'),
('17926395','3','3','2','2020-07-27 11:45','2020-07-27 12:06','juliandl','Salazar Hoyos, Deisy','PAM-Privileged Account Management - No Puede Visualizar cuentas'),
('17926297','3','3','2','2020-07-27 11:23','2020-07-27 11:50','jclesmes','	Grisales Sierra, Daniel','PAM-Privileged Account Management - No Puede Acceder '),
('17926233','3','3','2','2020-07-27 11:21','2020-07-27 12:05','jclesmes','Arias Trujillo, Juan Guillermo','PAM-Privileged Account Management - No Puede Acceder '),
('7928994','4','1','1','2020-07-27 17:16','2020-07-27 17:26','olserran','Jaramillo Gonzalez, Edison Alberto','Servidor_ No se tiene acceso por CyberArk al servidor pbmdeapmeb02, por favor escalar el incidente al grupo TS Funciones '),
('17929388','3','1','1','2020-07-27 18:29','2020-07-27 18:37','ghilario','Garcia Lopez, Hanner Jose','CyberArk - Authentication failure for user '),
('17929563','3','1','1','2020-07-27 21:26','2020-07-27 21:42','bpereda',' 	Garcia Lopez, Hanner Jose ','CyberArk - Authentication failure for user '),
('17929567','3','1','1','2020-07-27 21:44','2020-07-27 21:55','bpereda',' 	Celis Marulanda, Nahyol Felipe ','CyberArk - Authentication failure for user'),
('17930768','3','1','1','2020-07-28 9:37','2020-07-28 9:45','jclesmes','	Garcia Lopez, Hanner Jose','PAM-Privileged Account Management / Falla de acceso / Desbloqueo '),
('17934890','3','1','1','2020-07-28 19:57','2020-07-29 8:42','nzamudio','	Ortiz Valiente, Juan David','DAÑO: Intermitente PROCESO: CyberArk EQUIPO: RAZÓN: Pr... '),
('17935547','4','1','1','2020-07-29 8:42','2020-07-29 8:51','jclesmes','	Suarez Perez, Belfor Ferney','CyberArk PAM - Cuándo ingreso a CYBERARK no puedo ver ningun servidor de todos los que podía ver '),
('17935541','3','1','1','2020-07-29 9:06','2020-07-29 9:10','jclesmes','	Gomez De la pava, Lukas Mauricio','PAM-Privileged Account Management / Falla de acceso / Desbloqueo '),
('17937470','4','1','1','2020-07-29 12:31','2020-07-29 12:45','jclesmes','	Alvarez Rengifo, Camila Alejandra','Buenos días, actualmente tengo problemas con Cyberark, pue... '),
('17938614','3','1','1','2020-07-29 14:52','2020-07-29 15:07','olserran','Correa Gonzalez, Maria Alejandra','PAM-Privileged Account Management - No Puede Acceder '),
('17939726','3','1','1','2020-07-29 16:55','2020-07-29 23:43','ghilario','Bermudez Agudelo, Juan Rafael','CyberArk PAM - Usuario bloqueado '),
('17939987','3','1','1','2020-07-29 18:56','2020-07-29 19:06','ghilario','Celis Marulanda, Nahyol Felipe','Fallas para ingresar a CyberArk, al tratar de ingresar por windows sale error Authentication failure for User [nfcelis]. y no permite ingresar de nuevo las '),
('17940300','3','1','1','2020-07-29 21:32','2020-07-29 21:59','bpereda','	Rincon Pineda, Deysi','CyberArk PAM - Error de autenticación '),
('17943758','4','1','1','2020-07-30 14:33','2020-07-30 15:10','olserran','Ocampo Pamplona, Luisa Fernanda','CyberArk - No salen las conexiones '),
('17944205','4','1','1','2020-07-30 15:34','2020-07-30 16:31','nzamudio','Pinilla Cardenas, Dayro Andres','CyberArk-no arroja resultados al buscar en servidores. '),
('17945124','3','1','1','2020-07-30 17:51','2020-07-30 19:07','olserran','Escudero Almeida, Eric Emiro','PAM-Privileged Account Management // No permite Adicionar Credenciales para Custodia - No perite editar claves de SAP'),
('17945403','3','1','1','2020-07-30 10:11','2020-07-30 10:54','nzamudio','Villegas, Cesar Augusto ','No carga sesion i-series Leasing por Cyberark '),
('17945440','3','1','1','2020-07-30 23:25','2020-07-31 1:24','alega',' 	Flores Tejeida, Francisco Javier ','Cyberark - no puedo entrar a la herramienta y con ello a ningun servidore'),
('17927239','4','1','1','2020-07-31 9:45','2020-07-31 9:59','jclesmes','Arevalo Capera, Julian Alberto','Directorio Activo - Usuario sin permisos en Da '),
('17947647','3','1','1','2020-07-31 12:01','2020-07-31 16:00','nzamudio','	De los rios Perez, Pastor Fernando','Error de conexión a iSeries Medellin desde CyberArk'),
('17943847','4','1','1','2020-07-31 14:16','2020-07-31 14:24','olserran','Apolinar Cruz, Harold Jorge','Directorio Activo - validacion de permisos eliminados ')

--tabla documentacion incidente julio

	INSERT INTO documentacion_incidente(id,id_incidente,fecha,documentacion)
	VALUES 
('340','17825868','2020-07-01 7:37','REPORTE: El Colaborador reporta que no puede iniciar sesión en el escritorio remoto por CyberArk ya que le genera un error, pero por Password Safe si le permite. Error: escritorio remoto no puede conectarse al equipo remoto por una de las siguientes razones: 1) No esta habilitado el acceso remoto al servidor 2) El equipo remoto esa apagado 3) El equipo remoto no esta disponible en la red
El equipo remoto no esta disponible en la red
Flag n/a
 máquina virtual: VDI10MDR004.
Usuario: sebesfre - 
Nombre: Sebastián Escobar Freydell
'),
('341','17825868','2020-07-01 8:20','RESPUESTA / TRANSFERENCIA:  Buenos días, Se realizan las validaciones correspondientes desde CyberArk y se confirma que el servidor por tener la versión de Windows desactualizada no es posible conectar a CyberArk, el analista "Mauricio Lopez Trejos" la actualización y cambio de esas maquinas.

Se están realizando pruebas pero aun debe seguir accediendo por PassWord Safe.

Adjunto evidencias.

Gracias.'),
('342','17829520','2020-07-01 14:25','REPORTE: El colaborador indica por medio de chat: mire q tengo un problema para acceder a servidores unix y linux desde cyberark 
'),
('343','17829520','2020-07-01 16:23','SOLUCION: Se realiza validación del usuario fjflores el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.'),
('344','17800940','2020-07-02 10:13','REPORTE: El colaborador se comunica indicando que tengo un problema con unos usuarios que se han bloqueado, necesito nuevas contraseñas y desbloqueo
Usuario wcxwcror maquina wassv3 de ip10.60.107.31
Usuario wcxwcror de la maquina wasnlsv3 de ip10.60.107.41'),
('345','17800940','2020-07-02 10:30','RESPUESTA / TRANSFERENCIA: Buen día, Se realizan las validaciones respectivas de la cuenta y servidor y estas aun no están registradas en CyberArk, por favor validar internamente ya que esto corresponde a un tema de PassWord Safe. Adjuntamos evidencias.'),
('346','17835480','2020-07-02 15:36','REPORTE: No me deja descargar archivos de la maquina LEASING_D desde la aplicacion CYBERARK	  '),
('347','17835480','2020-07-02 15:54','SOLUCION: Buen dia, se realiza reconciliacion de la cuenta en cyberark y se realizan pruebas con el usuario quedando en correcto funcionamiento.	  '),
('348','17837974','2020-07-03 8:58','REPORTE: Actualmente a todas las personas de mi área (20 aprox) se nos están presentando problemas al tratar de ingresar por Cyberark a las Bases de Datos de SQL Server, el error que se está presentando es que la conexión intenta generarse pero esta no culmina, es decir, empieza a abrir la conexión y se cierra sin mostrar ningún mensaje ni nada al respecto y por más intentos que se hagan no logra establecerse la conexión a ninguna de las Bases de Datos SQL.'),
('349','17837974','2020-07-03 9:14','SOLUCION: Buen dia, se realiza la validación del error en la cuenta usrtdllo y la cuenta en CyberArk no posee el password correcto, se adjunta proceso para reconciliar la cuenta, se reconcilia cuenta y se valida acceso quedando en correcto funcionamiento'),
('350','17838111','2020-07-03 9:11','REPORTE: A fin de atenderte con oportunidad y calidad, cuéntanos de forma clara y completa tu necesidad
 ¿En cuál aplicativo o servicio se presenta la afectación?
problemas al tratar de ingresar por Cyberark a las Bases de Datos de SQL Server, el error que se está presentando es que la conexión intenta generarse pero esta no culmina,'),
('351','17838111','2020-07-03 9:16','SOLUCION: Buen dia, se realiza la validación del erro en la cuenta usrtdllo y la cuenta en CyberArk no posee el password correcto, se adjunta proceso para reconciliar la cuenta, se reconcilia cuenta y se valida acceso quedando en correcto funcionamiento.'),
('352','17837786','2020-07-03 10:02','REPORTE: Se están presentando problemas de conexión con CYBERARK, no está dejando conectar a ninguna Base de Datos de tipo SQLSERVER al tratar de cargar la conexión sale un error y de inmediado se cierra.

USUARIO: usrtdllo
Uno de los Servidores afectados para la conexión es SVMDEBBD05-valores2,1433
'),
('353','17837786','2020-07-03 10:11','SOLUCION:  Buen día, se realiza la validación del error en la cuenta "usrtdllo" y la cuenta en CyberArk no posee el password correcto, se adjunta proceso para reconciliar la cuenta, se ejecuta reconciliación de cuenta y se valida acceso quedando en correcto funcionamiento.

Se adjunta manual de proceso de reconciliación de cuenta.'),
('354','17838256','2020-07-03 10:32','REPORTE: Se representa inconvenientes al ingresar a bases de datos SQL de producción desde cyberArk desde el dia de ayer, especificamente se desea ingresar a SBMDEBBD07V\CorretajeyAPT'),
('355','17838256','2020-07-03 10:55','SOLUCION: Buen día, se realiza la validación del error en la cuenta "usrtdllo" y la cuenta en CyberArk no posee el password correcto, se adjunta proceso para reconciliar la cuenta, se ejecuta reconciliación de cuenta y se valida acceso quedando en correcto funcionamiento.

Se adjunta manual de proceso de reconciliación de cuenta.'),
('356','17783386','2020-07-03 22:55','REPORTE: Por favor validar la conexión por medio de RDP para el servidor, si existe política o configuración que este impidiendo el acceso, escalar al área encargada. Prioridad del Incidente: Media
Nombre el servidor: SBMDEDBD06 - IP: 10.8.36.47 - Servicio: [BD SIS]
Variable Alertada: problema para ingreso al servidor windows SBMDEDBD06
Estado de la variable: Se presenta problema para ingreso al servidor windows SBMDEDBD06 por medio de CyberArk con los usuarios sqlservice y usrtsdba.'),
('357','17783386','2020-07-04 11:20','RESPUESTA / TRANSFERENCIA: Buen día, Se realiza la prueba desde CyberArk, encontrando el error Code 4, se verifico desde un servidor PSM, sin pasar por CyberArk y se encuentra el error
An internal error has occurred, por favor verificar con los administradores de Windows, el servidor tiene sistema Server 2003.

Se adjunta evidencia.'),
('358','17843441','2020-07-04 15:13','REPORTE: Incidente: El usuario indica que no puede ingresar a aplicativo de Citrix
Error: Credenciales inválida
USUARIO: "jopiedra"
Contacto: 3182210203.'),
('359','17843441','2020-07-04 15:16','SOLUCION: Se valida el usuario "jopiedra" en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.

Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('360','17845677','2020-07-06 10:16','REPORTE: Informo que desde hace varios días se vienen presentando problemas para acceder al VIOS pbmdebpvio501 desde CiberArk, y no permite la opción de verificar o conciliar la cuenta desde la aplicación.
Cuando se tenia Password Safe, nos pasaba que cada mes cuando se presentaba cambio de contraseña, siempre con un administrador de la herramienta, yo le debia cambiar la contraseña por una conocida remotamente y ya la persona intervenia desde la herramienta con la clave cambiada y se podia recuperar el acceso desde esa herramienta.
Necesito, poder recuperar el acceso desde CiberArk a este VIOS.'),
('361','17845677','2020-07-06 11:22','RESPUESTA / TRANSFERENCIA: Escalar al administrador de VIOS para que verifiquen los permisos y el has que contiene ese servidor con la cuenta padmin, se adjunta evidencia.'),
('362','17845677','2020-07-06 14:11','SOLUCION: Buen dia, se realiza verificación de la cuenta, se inicia sesión y se adjunta evidencia.'),
('363','17846463','2020-07-06 11:22','REPORTE: Problemas para hacer transferencias en Iseries Medellin a traves de Cuyberark, se valida en el nacional y funciona correctamente, se prueba con otro usuario y tambien le sale el mismo error. se validan los permisos y estan correctos en los perfiles, se anexa el paso a paso del proceso de transferencia hasta que muestra el error "Access to an unnamed file was denied".	  
'),
('364','17846463','2020-07-06 15:44','SOLUCION: En el servidor PSM 10.8.146.216 hizo falta pasar un archivo de configuración, se realiza la correción.'),
('365','17855776','2020-07-07 19:36','REPORTE: El colaborador indica que tiene problemas con CyberArk, la aplicación se encuentra en Time Out y no tiene conexión las sesiones
Error: Validar adjunto'),
('366','17855776','2020-07-07 20:51','SOLUCION: Se realiza la respectivas pruebas (Adjunto en el caso) y se observa que es posible conectarse a la sesión y no se cierra repentinamente, se procede a validar con el usuario, donde se conecta una vez más y no se ejecuta el error.
Se procede al cierre del caso con consentimiento del usuario que reporta la incidencia.'),
('367','	17856024','2020-07-07 6:45','REPORTE: El colaborador indica que la aplicacion de cyberark le esta suspendiendo la sesion cada minuto, no lo deja trabajar, cuando le sale el mensaje tiene que serrar la sesion y conectarse de nuevo con el servidor, indica que le pasa con todos los servidores de wolf - Error: adjunto
Usuario: wlondono - wlondono@bancolombia.com.co
usuario de conexion: CNXIPWOL'),
('368','	17856024','2020-07-07 7:40','SOLUCION: Se realiza la validación del caso y se evidencia que existe una regla de suspensión de sesión que interrumpe las sesiones de CyberArk cuando se ejecuta el Task Manager a nivel de Windows, se realiza la desactivación de la regla. Se hacen pruebas con el usuario donde el usuario ya no se le presenta el bloqueo'),
('369','17858668','2020-07-08 12:08','REPORTE: El colaborador se comunica informando que no puede iniciar sesion en la herramienta ya que le genera error de autenticacion.
Nombre: Rivera Castano, Saul Andres
Usuario: sacastan 
-CC: 1127947640
Ip servidor: 10.8.74.202 
- Cel: 3218099155.'),
('370','17858668','2020-07-09 14:29','SOLUCION: Se realiza la validación de las pruebas ejecutadas por el usuario que reporte el incidente, el cual me manifiesta que el error ya no se presenta, se procede al cierre del caso.'),
('371','17860549','2020-07-08 16:20','REPORTE: El colaborador indica que tiene problemas para conectarse a maquina de Windows
-  Usuario: agallego
Error: Ver adjunto'),
('372','17860549','2020-07-08 16:24','RESPUESTA / TRANSFERENCIA:. Muy buenas tardes,

Se realiza la validación correspondiente de la novedad reportada, encontrando que en la observaciones del caso no está relacionada la cuenta de conexión y el servidor donde se está intentando acceder, se verifica el adjunto (Error 3) lo cual corresponde a que la cuenta no posee permisos de administrador para conectarse, esto se encuentra en el manual de errores conocidos de CyberArk.

Por favor escalar el incidente al administrador de la plataforma Windows para que otorgue los permisos correspondientes.'),
('373','17864817','2020-07-09 14:59','REPORTE: Presento falla en CYBERARK, debido a que ingreso a sacar de la boveda la contraseña de un usuario de conexion o servicio y no me permite visualizar, por favor me ayda es URGENTE, tengo Standby el dia de mañana.

Maria Alejandra Correa Gonzalez
- 1214734006
 MARALECO
3207563404
'),
('374','17864817','2020-07-09 15:07','RESPUESTA / TRANSFERENCIA: Buenas tardes, Se realizan las validaciones correspondientes de acuerdo a las observaciones descritas en el caso y no se relaciona los datos de la cuenta que presenta novedad en la herramienta, adicional siempre es necesario que se anexada una imagen del error para poder iniciar las revisiones desde CyberArk.

Gracias.'),
('375','17856772','2020-07-09 19:15','REPORTE: Tengo problemas para ingresar a CyberArk, apenas selecciono la opción Windows e ingreso el usuario y la contraseña de red me sale el error: Authentication failure for User [andfegar] (adjunto imagen).'),
('376','17856772','2020-07-09 19:34','RESPUESTA / TRANSFERENCIA: Buenas noches,
Se realizan las validaciones correspondientes en CyberArk, confirmando que el usuario mencionado (andfegar), no se encuentra creado (Se adjunta evidencia), por lo cual para tener acceso a Cyberark debe solicitar un pedido en USM.

Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk'),
('377','17868240','2020-07-10 11:01','REPORTE: El usuario indica que al momento de conectarse a una base de datos se le descarga un archivo y luego le genera un error de certificados
Error: Valdiar pantallas paso a paso -equipo: Se toma cr por skype
Nombre del servidor: sbbogbbd01st
instancia DB: AUTHEPDB - ip servidor: 10.60.184.196
cuenta con la que inrgresa al sevidor: gbenavid
usuario de red : gbenavid'),
('378','17868240','2020-07-10 11:24','RESPUESTA / TRANSFERENCIA: Se procede a observar las imágenes adjuntas al caso, En la imagen es tema del certificado se adjunta archivo al caso (17868240 Descarga de Certificado) favor hacer la instalación del certificado según indicaciones del manual hacer pruebas, si se presenta error adjuntar imágenes.'),
('379','	17872730','2020-07-12 6:36','REPORTE: Prioridad del Incidente Media
Nombre el servidor: SBMDEBPBD25 - IP 10.8.36.142 -  Servicio N/A
Variable Alertada: No se tiene acceso al servidor
Estado de la variable: No se tiene acceso al servidor SBMDEBPBD25 por medio de Cybeark con los suarios: sqlservice y usrtdbas.'),
('380','	17872730','2020-07-12 9:32','RESPUESTA / TRANSFERENCIA: Buenos días,

Se realizan las validaciones respectivas desde CyberArk, encontrando novedad en los registros de nombres para el servidor, el cual al establecer conexión por IP 10.8.36.126 y confirmar el hostname registra como SBMDEBPBD25 ; es necesario que los administradores de los servidores realicen el ajuste correspondiente.

Anexo el orden correcto que debería tener.

Name: SBMDEBPBD25
IP: 10.8.36.142
Name: SBMDEBBD27
IP: 10.8.36.126

Adicional se adjuntas la evidencias de la prueba realizada, el caso no corresponde a una falla en CyberArk.'),
('381','	17872730','2020-07-14 11:50','RESPUESTA / TRANSFERENCIA: Buenas tardes, el servidor no se encuentra conectado en CyberArk con las cuentas sqlservice y usrtdbas.
Se adjunta evidencia, se debe solicitar una oc para ingresar el servidor por la categoria Seguridad Corporativa.Mantenimiento de Cuentas en CyberArk.
Se debe especificar ambiente, nombre de servidor ip y las cuentas, adicional a esto se debe garantizar que las cuentas cuenten con permisos para rdp en el server.'),
('382','17874794','2020-07-13 10:18','REPORTE: colaborador indica que al tratar de autenticarse a la aplicacion genera error.
 Error: n -/a
 Flag : n/Grupo: S_USUARIOS_CYBERARK
Usuario : tcjarami
No presenta bloqueo en el token
Cel: 3117416251'),
('383','17874794','2020-07-13 10:26','RESPUESTA: Se valida el usuario (tcjarami) en la aplicación CyberArk y se encuentra bloqueado.

Se realiza respectivo desbloqueo de usuario. Recuerde que cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.

Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('384','17879032','2020-07-14 7:21','REPORTE: Buen dia, 
Presento inconvenientes con mis usuario WSEAVARGA en las maquinas WASSV3 y WASNLSV3 en la herramienta Cyber Ark, ya que trato de realizar la conciliación de la cuenta (RECONCILIE) y esta nunca se da, adjunto pantalla con lapso de 20 minutos de 2 conciliaciones y luego de actualizar la pagina y el aplicativo la cuenta sigue igual.'),
('385','17879032','2020-07-14 8:11','RESPUESTAS / TRANSFERENCIA: Buenos días, se realizan las validaciones respectivas desde CyberArk, confirmando que la cuenta no posee permisos para poder realizar reconciliación, es necesario realizar el escalamiento al área de accesos y plataformas para que asigne los permisos correspondientes.

Se adjunta el mensaje de error de que no tiene permisos.

Gracias.'),
('386','17880373','2020-07-14 10:12','REPORTE: A fin de atenderte con oportunidad y calidad, cuéntanos de forma clara y completa tu necesidad, Se me bloqueo el acceso a servidores por CiberArk
Solo me afecta a mi. Token 415925473.
3024279151.'),
('387','17880373','2020-07-14 10:25','SOLUCION: Se valida el usuario (jfnavas) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('388','17877255','2020-07-14 16:03','REPORTE: El colaborador se comunica indicando que para mi trabajo me tengo q conectar a muchos servidores al dia via cyberark o directamente por putty pero desde el miércoles o jueves de la semana pasada he tenido problemas para trabajar ya que de pronto se me cierran las sesiones a los servidores estas sesiones puede durar unos cuantos segundos o varios minutos pero se cae la sesión.
• Nombre del usuario afectado: Francisco Javier Flores Tejeida
• Usuario de red del colaborador afectado: fjflores
• Nombre de la empresa y área: TCS –Plataformas CentralesDirección Disponibilidad Servicios de TI
• Teléfono/Celular del contacto afectado: yo estoy en Mexico, pero de Colombia me marcan a la extensión 92079273 o por teams o skype
• Grupo VPN del usuario afectado: S_USUARIO_VPN_TCS_RISC
• IP del usuario afectado: 10.18.55.2'),
('389','17877255','2020-07-14 17:37','RESPUESTA / TRANSFERENCIA: Buena tarde se validan las imágenes y correos adjuntos el usuario indica que desde la semana pasada día miércoles en la noche se presento un evento de conexiones con la VPN y comenzó la falla, se procede a contactar al usuario por Teams video llamada se valida y se observa que debido a lo de la VPN se le están desconectando las secciones pero no es solo en CyberArk, también le sucede conectándose a unos servidores de Banismo directamente sin pasar por CyberArk sino a putty, se descarta que sea la herramienta CyberArk, favor escalar el caso al área de VPN, también se observa que en la descripción el usuario indica
“Servidores que se accede con putty
• IPs destino y puertos que presentan falla por VPN: 10.4.33.211 - 10.8.101.87 - 10.8.*.* - 10.4.*.* - 10.5.*.* todos lotts unix usan el puerto 22”'),
('390','17884408','2020-07-15 6:21','REPORTE: Se me bloqueo el acceso a servidores por CiberArk
Solo me afecta a mi. Token 415925473.
3024279151
'),
('391','17884408','2020-07-15 6:34','SOLUCION: Se realiza validación del usuario jfnavas el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('392','17885482','2020-07-15 9:34','REPORTE: Colaborador(a) indica que no le esta permitiendo el ingreso a el aplicativo.
Rodriguez Ducuara, Oscar David
Usuario: orodrigu'),
('393','17885482','2020-07-15 9:44','SOLUCION: Se valida el usuario (orodrigu) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.

Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('394','17891580','2020-07-16 11:21','REPORTE:  Solicito desbloqueo del usuario daavila en la plataforma de CyberArk.'),
('395','17891580','2020-07-16 11:26','SOLUCION: Se valida el usuario (daavila) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.

Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('396','17892070','2020-07-16 11:30','REPORTE: Buen día,
 Se valida el usuario (derinco) en la aplicación CyberArk y NO se encuentra bloqueado.
Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y Token no se encuentren bloqueados.
Adjunto evidencia , usuario se encuentra activo. Gracias.'),
('397','17892070','2020-07-16 11:40','RESPUESTA / TRANSFERENCIA: Buen día,
 Se valida el usuario (derinco) en la aplicación CyberArk y NO se encuentra bloqueado.
Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y Token no se encuentren bloqueados. Adjunto evidencia , usuario se encuentra activo. Gracias.'),
('398','17892271','2020-07-16 12:22','REPORTE: Buenos dias En CYBERARK , contamos con IBM Navigator for ¡ por medio del cual descargamos reportes solicitados por los usuarios de informacion en Aldon, el dia de hoy tratamos de acceder a realizarlo y no nos permite sale en blanco, adjuntamos pantalla. Los usuarios que contamos con el inconveniente : SACARVAJ - CRRAMIRE. Por favor escalar al grupo "TS Funciones Corporativas Seguridad Evolution" Se intenta descargar archivo en formato ASCII desde printers output como se puede evidenciar en el documento adjunto, también se realiza la prueba desde Client Access Solution sin éxito, no se genera error pero el archivo nunca es descargado. Por último se hace prueba directa (Sin utilizar CyberArk) desde el servidor PSM por internet explorer hacia la url de la aplicación: http://10.10.229.121:2004/ibm/ arrojando el mismo resultado.
Por favor escalar a IBM para su revisión.
	Favor escalarlo al grupo (Disponibilidad servicios integrales iSeries IBM)'),
('399','17892271','2020-07-16 15:39','RESPUESTA / TRANSFERENCIA: Se hacen validaciones con la usuaria Catalina Rios Ramirez por de medio de Teams, numero de celular 3137537660.
Se intenta descargar archivo en formato ASCII desde printers output como se puede evidenciar en el documento adjunto, también se realiza la prueba desde Client Access Solution sin éxito, no se genera error pero el archivo nunca es descargado. Por último se hace prueba directa (Sin utilizar CyberArk) desde el servidor PSM por internet explorer hacia la url de la aplicación: http://10.10.229.121:2004/ibm/ arrojando el mismo resultado.
Por favor escalar a IBM para su revisión. '),
('400','17892271','2020-07-16 16:44','RESPUESTA / TRANSFERENCIA: Se valida de nuevo el caso se observa en la descripción y datos adjuntos que el Inconvenientes es (IBM Navigator for i) favor escalar al grupo relacionado. '),
('401','17892271','2020-07-16 16:58','RESPUESTA / TRANSFERENCIA: Se valida de nuevo el caso se observa en la descripción y datos adjuntos que el Inconvenientes es (IBM Navigator for i) favor escalar al grupo relacionado. '),
('402','17892271','2020-07-16 18:06','RESPUESTA / TRANSFERENCIA: Favor escalarlo al grupo (Disponibilidad servicios integrales iSeries IBM)   
'),
('403','17892740','2020-07-16 13:31','REPORTE: los usuarios de seccion accesos plataformas ISeries, intetnamos conectarnos desde Cyber ARk a las maquinas WASSV3 y WASNLV3 y no permite ni conexion ni reconciliacion, sigue apareciendo en rojo (Evidencia adjunta)
AFVASQUE
NATCASTA
ANYROJAS
DANIGRIS
JESCARDO
SEAVARGA
RESPUESTA: Buenos días, se realizan las validaciones respectivas desde CyberArk, confirmando que las cuentas no poseen permisos para poder realizar reconciliación, es necesario realizar el escalamiento al área de accesos y plataformas para que asigne los permisos correspondientes.
Se adjunta el mensaje de error de que no tiene permisos.
Gracias
Se valida con usuario que ya puede trabajar con las cuentas mencionadas, se procede con el cierre.	  '),
('404','17892740','2020-07-16 13:37','RESPUESTA / TRANSFERENCIA: Se valida y esto ya había sido reportado en el IM 17879032, donde se especifico que se debía validar con el área de Accesos, para que otorgue los permisos a la cuenta para realizar el proceso de reconciliación.'),
('405','17892740','2020-07-17 11:40','SOLUCION: Se valida con usuario que ya puede trabajar con las cuentas mencionadas, se procede con el cierre.   '),
('406','17893312','2020-07-16 17:14','REPORTE: EL colaborador se comunica indicando que no puede acceder a el aplicativo de PasswordSafe
Error: No puede acceder
• CR: por Skype
• Flag: N/A
• Ocurrencia: N/A
• SN: No ID Snow
• Tiempo Invertido: 00:00:00
Usuario de red: arabetan
Cel: 3017207288
Cédula: 1128275764'),
('407','17893312','2020-07-16 17:24','RESPUESTA / TRANSFERENCIA: Se valida el caso y el bloqueo es en password safe, favor escalarlo a la usuaria Tatiana Marcela Blandon.   

'),
('408','17893312','2020-07-17 12:43','RESPUESTA / TRANSFERENCIA: Se realiza la validación correspondiente del caso según las observaciones descritas en el mismo y se confirma que hace referencia a un inconveniente en Password Safe, lo cual no hace pertenece a CyberArk. Por favor validar el grupo correspondiente.
'),
('409','17894676','2020-07-16 18:05','REPORTE: El colaborador se comunica indicando que tengo bloqueado el acceso a cyberark el error es falla de autenticacion para hajgarci'),
('410','17894676','2020-07-16 18:11','SOLUCION:  Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.

Se adjunta correo al caso.'),
('411','17883773','2020-07-17 8:45','REPORTE: actualmente no tengo acceso a cyberack https://pam.bancolombia.corp/PasswordVault/v10/logon?returnUrl=%2FAccounts donde debe ingresar para solucionar un incidente que se tiene con h2h.'),
('412','17883773','2020-07-17 8:55','RESPUESTA / TRANSFERENCIA: Se realizan las validaciones en CyberArk, confirmando que el usuario mencionado (dienunez), No se encuentra creado (Se adjunta evidencia), por lo cual para tener acceso a Cyberark debe solicitar un pedido en USM.
Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk'),
('413','17896790','2020-07-17 11:13','REPORTE: El colaborador indica que no he pidodo ingresar a byberark me sale error en la autenticacion.'),
('414','17896790','2020-07-17 11:26','SOLUCION:  Se valida el usuario (nfcelis) en la aplicación CyberArk y se encuentra bloqueado.

Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.

Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('415','17893312','2020-07-16 17:14','REPORTE: EL colaborador se comunica indicando que no puede acceder a el aplicativo de PasswordSafe
Error: No puede acceder
• CR: por Skype
• Flag: N/A
• Ocurrencia: N/A
• SN: No ID Snow
• Tiempo Invertido: 00:00:00
Usuario de red: arabetan'),
('416','17893312','2020-07-16 17:24','RESPUESTA / TRANSFERENCIA: Se valida el caso y el bloqueo es en password safe, favor escalarlo a la usuaria Tatiana Marcela Blandon.
'),
('417','17893312','2020-07-17 12:43','RESPUESTA / TRANSFERENCIA: Se realiza la validación correspondiente del caso según las observaciones descritas en el mismo y se confirma que hace referencia a un inconveniente en Password Safe, lo cual no hace pertenece a CyberArk.
'),
('418','17898088','2020-07-17 15:02','REPORTE: Nos colaboran por favor con el inconveniente que estamos presentando en el área de Accesos Plataformas Iseries.
Al momento de ingresar a las máquinas de AS400 (ISERIES) nos genera error: "La información de inicio de sesion no'),
('419','17898088','2020-07-17 15:20','SOLUCION: Se valida el caso, se reconcilia la cuenta se hacen pruebas de acceso quedando correcto, se adjunta el manual de reconciliación y imagen de acceso.'),
('420','17899884','2020-07-18 7:55','REPORTE: El usuario manifiesta que presenta problema indica que no tiene la cuenta de CNXIPPWA publicada en el cyberark solicita se le colabore
Error: no tiene publiacada CNXIPPWA
Afecta:1 usuario'),
('421','17899884','2020-07-18 8:11','RESPUESTA / TRANSFERENCIA:  Buenos días,
Se realizan las validaciones correspondientes desde CyberArk, confirmando que la usuaria se encuentra registrada en la plataforma pero actualmente no tiene ningún perfil asignado para conexiones a Servidores, esto puede deberse a un cambio organizacional y por eso le fueron retirados, lo anterior puede ser validado con Tatiana Marcela Blandon para solicitar de nuevo el acceso.
Adicional puede solicitar de nuevo el acceso al perfil por medio de un pedido USM
Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk
Adjunto evidencias, Gracias
 '),
('422','17900785','2020-07-20 1:26','REPORTE: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('423','17900785','2020-07-20 7:13','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('424','17901859','2020-07-21 8:23','REPORTE: Buen día se procede hacer validaciones se adjunta archivo al caso (17901859 Pruebas a validar) la falla que se esta presentando no es relacionado al área de CyberArk, se hacen pruebas en otro computador del usuario y permite el acceso a CyberArk es funcional.'),
('425','17901859','2020-07-21 10:03','RESPUESTA / TRANSFERENCIA: Buen día se procede hacer validaciones se adjunta archivo al caso (17901859 Pruebas a validar) la falla que se esta presentando no es relacionado al área de CyberArk, se hacen pruebas en otro computador del usuario y permite el acceso a CyberArk es funcional.'),
('426','17906347','2020-07-21 16:00','REPORTE:  El colaborador indica por chat: tengo al parecer bloqueado el acceso a cyberark. Error: se adjunta pantalla
Flag:N/A
usuario lmmadrig'),
('427','17906347','2020-07-21 16:05','SOLUCION:  Se valida el usuario (lmmadrig) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('428','17908148','2020-07-22 9:27','REPORTE:   Buenos días, la herramienta CyberArk no me permite descargar archivos mediante WinSCP. No esta mapeando las unidades Locales de Mi Maquina.
Hice pruebas desde varios servidores (pbmdebqrec22, pbmdebqrec23, PBMDEBQREC06), pero el resultado es el mismo.
'),
('429','17908148','2020-07-22 10:22','SOLUCION: Buen dia, se realiza sesión con el usuario y se realizan pruebas por la cadena de conexión, se validan los discos del equipo del usuario quedando funcional. '),
('430','17908637','2020-07-22 10:09','REPORTE: Error: el aplicativo ciber ark, donde al intentar conectarnos a las base de datos a través de sql developer se presenta un error y es necesario loguearse de nuevo.'),
('431','17908637','2020-07-22 15:17','SOLUCION:  Se presente error en el servidor psm 1 provocando que las conexiones entrantes presentaran el error. Se soluciono el inconveniente ya se encuentra operativo. '),
('432','17908226','2020-07-22 9:44','REPORTE: Se presenta lentitud en todos los accesos a las bases de datos, dado que al ejecutar un script o incluso al abrir solo la conexión, se observa lentitud.
Area: Base de datos.'),
('433','17908226','2020-07-23 13:00','SOLUCION: Se realiza el cierre del incidente y se va a trabajar en el problema 17916053, se aplican las siguiente solución temporal: se deben conectar a través de la cadena de conexión, mientras se define el acceso a la carpeta compartida para el paso de archivos.'),
('434','17909286','2020-07-22 11:27','REPORTE: Estamos presentando inconvenientes con las conexiones en el servidor 10.8.146.214 SXMDEBPPAM04V'),
('435','17909286','2020-07-22 15:59','SOLUCION: Se presento error en la conexión de los Shadows user de Cybaerk provocado por un reinicio pendiente de una actualización de windows. Después del reinicio se restableció la normalidad del servicio'),
('436','17914080','2020-07-23 9:34','REPORTE: El colaborador indica que Creé unos pedidos USM para acceder a Cyberark para tener acceso a unos servidores, pero no me los muestra todos
ya probé con un compañero, y se supone que estamos en el mismo grupo, pero no me deja ver todos los servidores que él tiene acceso

N° Pedidos-Grupo
1518829 - grptpinteg
1518826 - grptlinte
1518825 - grptwinte

No puede acceder a : pbmdeaqweb01 pbmdeaqmeb01'),
('437','17914080','2020-07-23 9:42','RESPUESTA / TRANSFERENCIA: Buen día favor de confirmar los siguientes datos.
• Nombre del servidor destino que presenta error al intentar conectar:
• IP del servidor:
• Cuenta con el que ingresa al Servidor:
• Celular de contacto del usuario: 3003535051
•Grupo que indica el usuario que se encuentra para el ingreso a los servidores
Nota: Adjuntar imagenes de la falla que presenta.'),
('438','17914080','2020-07-27 10:19','RESPUESTA / TRANSFERENCIA: para su amable validación.
CyberArk PAM - Cualquier error reportado'),
('439','17914080','2020-07-27 10:34','RESPUESTA / TRANSFERENCIA: Buenos días, Se realizan las validaciones respectivas desde CyberArk, confirmando que esto no corresponde a una falla, se verifica y se confirma que la funcionaria no cuenta con los mismos grupos de perfiles asignados en CyberArk que su compañero.
Por lo cual para tener acceso a Cyberark debe solicitar un pedido en USM. Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk, solicitando agregar los perfiles correspondientes.
Adjunto evidencias. Gracias.'),
('440','17913854','2020-07-23 9:07','REPORTE: Por CYBERARK se trata de abrir MyExtra de iSeries CALWAS y no es posible, sale ventana de error indicando un mensaje de que no encuentra el FILE especificado... La ventana o imagen del error lo tiene DENNIS ANDREA ALZATE de BANCO. Se llama al usuario: 3163498770 y se le indica que nos comparta el correo en donde indica la falla nos conectamos al Teams fmendoza@bancolombia.com.co se adjunta el correo al caso para continuar con la validación.'),
('441','17913854','2020-07-23 10:39','SOLUCION: Se llama al usuario: 3163498770 y se le indica que nos comparta el correo en donde indica la falla nos conectamos al Teams fmendoza@bancolombia.com.co se adjunta el correo al caso para continuar con la validación, se hacen las validaciones correspondientes se borra el shadow user del usuario, se contacta al usuario por Teams se hacen pruebas y son funcionales.'),
('442','	17916237','2020-07-23 13:41','REPORTE:Desde hace unos días se viene presentando el error:
"PSM Connect Failed
Application Type: PSM-SSH
Account Address: 10.8.87.146
Protocol: SSH
PSM Server: PSMServer_5abf1e9
Session ID: c61ba0e1-ee17-4f15-ab6e-0219da4f503e
Source Address: 10.8.61.68
Account Username: usrtanpl
PSMSC023E LoadLocalUserProfile: Failed to load user profile for local user [PSM-2D02000000000000] (System error [2]: The system cannot find the file specified.)
PSMApp".
en casi el acceso por Cyberark a casi la totalidad de los equipos. muchas veces despues de varios intentos se logra el acceso'),
('443','	17916237','2020-07-23 15:04','SOLUCION:  Se realiza eliminación de shadow user en el servidor que presenta error, Se soluciona inconveniente,'),
('444','17915502','2020-07-23 12:10','REPORTE: Nuevamente presento problemas para hacer transferencia de archivos desde Cyberark, el cual cuando se trata de transferir un archivo sale mensaje de error "Access to an unnamed file was denied"
usuario Medellin: MCABOTER
dispositivo: WSGSI06
Catalina Botero Palacio'),
('445','17915502','2020-07-23 15:44','SOLUCION:  Buen dia, se valida el error y es generado por el servidor psm 10.8.146.216, el servidor no contaba con las configuraciones especificas para guardar el archivo en la ruta, se configuran parametros en servidor, se realizan pruebas de conexión con la usuaria quedando operativo.
Se realizan pruebas de conexion directamente al server .216 se realizan pruebas de descarga de archivos quedando operativo.'),
('446','17916851','2020-07-23 14:55','REPORTE:  El colaborador indica que no le permite el ingreso a cyberart
Error: Authentication failure for user (jupmonto).
Ocurrencia: Hoy 
usuario:jupmonto'),
('447','17916851','2020-07-23 15:01','SOLUCION:  Se valida el usuario (jupmonto) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('448','17915685','2020-07-23 12:09','REPORTE: El colaborador indica que es que estoy intentando ingrasar a pasword safe'),
('449','17915685','2020-07-23 12:10','RESPUESTA / TRANSFERENCIA:  A partir de 01 de julio, la herramienta Password Safe entra en etapa de jubilación por lo tanto ya no tendrá operación, mantenimiento y soporte técnico
El acceso con Usuarios Privilegiados a las diferentes plataformas se realiza a través de la nueva herramienta Cyberark
URL correcta "https://pam.bancolombia.corp" y por la opción "Windows"
http://vsc.bancolombia.corp/vsa/ciberseginfo/Paginas/Migraci%C3%B3n-a-CyberArk.aspx
CyberArk PAM - Error de autenticación
'),
('450','17915796','2020-07-23 12:08','REPORTE: Colaborador indica que no se logra autenticar en Cyberark.
Error: Authentication failure for User (lmmadrig).'),
('451','17915796','2020-07-23 12:09','RESPUESTA / TRANSFERENCIA: Colaboradora no retoma el chat.Tu número de caso es el 17915796 y queda en estado Cancelado, te invitamos a comunicarte nuevamente con nosotros para ayudarte con tu necesidad registrando un nuevo Caso. 
'),
('452','17917600','2020-07-23 16:19','REPORTE: El colaborador indica por medio de chat: Yeimer ayer se me bloqueo el acceso a la VPN y desde ahí no puedo entrar a cyberark
Error: me sigue diciendo autenticación failure to lmmadrig
usuario:lmmadrig'),
('453','17917600','2020-07-23 16:24','SOLUCION: Se valida el usuario (lmmadrig) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.

Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('454','17916231','2020-07-24 8:25','REPORTE: presento inconveniente para el ingreso a la maquina WASNLSV2 por medio de la herramienta CYBERARK, la cuenta es Wdanigris, Me puede contactar via skype o Teams
Servidor: 10.8.2.42 ingreso por CyberArk
'),
('455','17916231','2020-07-24 10:09','SOLUCION: Se asocia logon account cnxipwin al la cuenta del usuario, se realizan pruebas de coenxion exitosa. '),
('456','17918743','2020-07-24 9:03','REPORTE: Se solicita por favor sea validado mi usuario de wassv2, dado que concilio y no me permite el ingreso a dicha maquina, tanto mi usuario WNATCASTA como mi dispositivo WSGSI33 se encuentran activos. Por favor escalar al grupo de CYBERARK. También sería importante que validen que puede estar pasando con mis usuarios puesto que para ingresar a una maquina independiente de cual sea me toca intentar varias veces porque me sale un error.Adjunto evidencia de este error que es el mismo para WASV2.'),
('457','17918743','2020-07-24 10:14','SOLUCION: Se le asocia el logon account a la cuenta y se realiza pruebas de conexión, son exitosas.'),
('458','17919490','2020-07-24 10:17','REPORTE: Problemas para conectar por cyberark hacia instancia RDS sitiotransval-rds-dev-rds.apps.ambientesbc.lab, se adjunta imagen con la evidencia del error.'),
('459','17919490','2020-07-24 10:28','SOLUCION: buen dia, se realiza verificación de la cuenta, se reconcilia cuenta y se realiza prueba de conexión quedando operativa.
Se adjunta evidencia.'),
('460','17920750','2020-07-24 11:59','REPORTE:  El colaborador indica por medio de chat: tengo un error para ingresar a ciberark
Error: Authentication failure for user dharias
usuario :
Nombre:David Arias Parra
Correo electrónico: dharias@bancolombia.com'),
('461','17920750','2020-07-24 12:00','RESPUESTA / TRANSFERENCIA: Pasados los 3 seguimientos el colaborador no responde, se procede a cerrar el chat y pasar el caso a un estado cancelado   
'),
('462','17921197','2020-07-24 13:18','REPORTE:  El colaborador indica por medio de chat: Tengo mi token y acceso a cyberak bloqueado me puedes ayudar con los dos por favor
rror: N/A
usuario :hajgarci
Nombre:Hanner
Correo electrónico: hajgarci@bancolombia.com.co'),
('463','17921197','2020-07-24 13:32','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('464','17922407','2020-07-24 16:24','REPORTE: El colaborador indica que tiene problemas para conectarse a maquina de Windows, el colaborador requiere prioridad puesto que necesita el acceso a esta maquina para realizar una instalación en la noche
Usuario: agallego
PSM-SSH
https://pbmdeapecm08:9043/ibm/console/logon.jsp'),
('465','17922407','2020-07-24 16:35','RESPUESTA / TRANSFERENCIA:  Buenas tardes, Se realizan las validaciones correspondientes desde CyberArk, confirmando que el servidor se encuentra apagado, según el mensaje de "connection attemp", por favor validar internamente, se anexa evidencia de prueba ejecutada.
Adicional se recuerda que el ticket debe ser escalado con los siguientes datos:
• Nombre del servidor destino que presenta error al intentar conectar
• IP del servidor
• Cuenta con la que ingresa al Servidor
• Celular de contacto del usuario.
• Anexar imagen del error
Gracias
'),
('466','17921980','2020-07-24 17:26','REPORTE: El colaborador indica por medio de chat: Tengo mi token y acceso a cyberak bloqueado me puedes ayudar con los dos por favor
rror: N/A
usuario :hajgarci
Nombre:Hanner
Correo electrónico: hajgarci@bancolombia.com.co'),
('467','17921980','2020-07-24 17:32','SOLUCION:  Se valida el usuario (hajgarci) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('468','17923284','2020-07-25 8:16','REPORTE: El colaborador se comunica indicando que tengo bloqueado el acceso a ciberark
Error: Authentication failure for user
User hajgarci'),
('469','17923284','2020-07-25 8:33','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('470','17923392','2020-07-25 10:09','REPORTE: El colaborador se comunica indicando que tengo bloqueado el acceso a ciberark
Error: Authentication failure for user
Flag: N/A
User hajgarci'),
('471','17923392','2020-07-25 10:16','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('472','17923589','2020-07-25 15:11','REPORTE:  El colaborador se comunica indicando que tengo bloqueado el acceso a ciberark
Error: Authentication failure for user
Flag: N/A
User hajgarci'),
('473','17923589','2020-07-25 15:15','SOLUCION:  Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('474','17924247','2020-07-27 8:49','REPORTE: El colaborador requiere me ayudas por favor con un error que me esta saliendo cuando voy a ingresar a ciberark
Nombre:david arias parra
Correo electrónico: dharias@bancolombia.com'),
('475','17924247','2020-07-27 8:57','SOLUCION: Se valida el usuario (dharias) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('476','17914080','2020-07-27 10:19','REPORTE:  El colaborador indica que Creé unos pedidos USM para acceder a Cyberark para tener acceso a unos servidores, pero no me los muestra todos
ya probé con un compañero, y se supone que estamos en el mismo grupo, pero no me deja ver todos los servidores que él tiene acceso
N° Pedidos-Grupo
1518829 - grptpinteg
1518826 - grptlinte
1518825 - grptwinte
No puede acceder a : pbmdeaqweb01 pbmdeaqmeb01'),
('477','17914080','2020-07-27 10:34','RESPUESTA / TRANSFERENCIA:  Buenos días,
Se realizan las validaciones respectivas desde CyberArk, confirmando que esto no corresponde a una falla, se verifica y se confirma que la funcionaria no cuenta con los mismos grupos de perfiles asignados en CyberArk que su compañero.
Por lo cual para tener acceso a Cyberark debe solicitar un pedido en USM. Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk, solicitando agregar los perfiles correspondientes.
Adjunto evidencias.
Gracias.
'),
('478','17925291','2020-07-27 10:00','REPORTE:Favor radicar un incidente y escalarlo al grupo "TS Funciones Corporativas Seguridad Evolution" donde se informe que los usuarios están recibiendo una serie de correos donde se informan actividades los cuales están generando confusión en estos.'),
('479','17925291','2020-07-27 14:59','SOLUCION: Se realizo reinicio del servicio de notificaciones en la Boveda, causando que se re enviaron notificaciones regresadas. Se esta revisando si es posible filtrar estos mensajes. Se cierra incidente porque no es una falla de aplicación.'),
('480','	17926229','2020-07-27 11:34','REPORTE: Estamos presentando inconsistencia en el servicio CyberArk puesto que no permite ver las cuentas en la URL de PAM'),
('481','	17926229','2020-07-27 14:53','SOLUCION: Se realiza reinicio de servicio "CyberArk Logic Container" el cual se encontraba bloqueado y genero el error de indisponibilidad para acceder desde PVWA. '),
('482','17926395','2020-07-27 11:45','REPORTE: Agradecemos validar el inconveniente presentado con CYBER Ark, ya que a través del usuario "USRTSECU" no logramos acceder a las máquinas Pseries "Pbmdebpaff01 y pbmdebpaff02"'),
('483','17926395','2020-07-27 12:06','SOLUCION: Informamos que se presento bloqueo con el servicio "CyberArk Logic Container" lo cual ocasiono que desde PAM CyberArk no pudiera visualizar la cuentas asignadas a cada usuario, se esta trabajando con el caso padre IM-17926229 para evitar que se presente de nuevo el inconveniente.'),
('484','17926297','2020-07-27 11:23','REPORTE: Favor escalar al grupo TS Funciones Corporativas Seguridad Evolution (CyberArk ) presentamos inconvenientes al igreso a la herramienta . el error se presenta con todos los usuarios de Accesos a Plataformas . se adjunta evidencia'),
('485','17926297','2020-07-27 11:50','SOLUCION: Informamos que actualmente estamos trabajando en solucionar la falla de no poder visualizar la cuentas asignadas a cada usuario, se esta manejando con el caso padre IM 17926229.'),
('486','17926233','2020-07-27 11:21','REPORTE: Solicito su ayuda ya que no cargan los servidores ISERIES en la herramienta CYBER ARK.'),
('487','17926233','2020-07-27 12:05','SOLUCION: Informamos que se presento bloqueo con el servicio "CyberArk Logic Container" lo cual ocasiono que desde PAM CyberArk no pudiera visualizar la cuentas asignadas a cada usuario, se esta trabajando con el caso padre IM-17926229 para evitar que se presente de nuevo el inconveniente'),
('488','7928994','2020-07-27 17:16','REPORTE: No se tiene acceso por CyberArk al servidor pbmdeapmeb02, por favor escalar el incidente al grupo TS Funciones Corporativas Seguridad Evolution.'),
('489','7928994','2020-07-27 17:22','RESPUESTA / TRANSFERENCIA: Buen dia, se valida la cuenta conciliadora en el servidor y arroja error de permiso denied, se debe escalar incidente a los administradores de la plataforma AIX para que validen los permisos de la cuenta conciliadora CNXIPAIX y el hash correspondiente.
'),
('490','17929388','2020-07-27 18:29','REPORTE: El colaborador se comunica indicando que tengo bloqueado el acceso a ciberark
Error: Authentication failure for user
User hajgarci'),
('491','17929388','2020-07-27 18:37','SOLUCION: e realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('492','17929563','2020-07-27 21:26','REPORTE: El colaborador se comunica indicando que tengo bloqueado el acceso a ciberark
Error: Authentication failure for user
User: hajgarci'),
('493','17929563','2020-07-27 21:42','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk. '),
('494','17929567','2020-07-27 21:44','REPORTE: Incidente: El colaborador se comunica indicando que tengo bloqueado el acceso a ciberark
Error: Authentication failure for user'),
('495','17929567','2020-07-27 21:55','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk. '),
('496','17930768','2020-07-28 9:37','REPORTE: El colaborador se comunica indicando que tengo bloqueado el acceso a ciberark
Error: Authentication failure for user
User: hajgarci'),
('497','17930768','2020-07-28 9:45','SOLUCION: Se valida el usuario (hajgarci) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('498','17934890','2020-07-28 19:57','REPORTE: Problema en la conexión remota máquinas Iseries usuarios USRTOPER y USRWDCB'),
('499','17934890','2020-07-29 8:42','SOLUCION: Se realiza la revisión del caso encontrando que el servicio estuvo disponible en todo momento, donde se observa una desconexión masiva a las 7 p.m donde ingresamos directamente a los servidores PSM cuyos servidores nos desconectaban de la sesión o nos no permitían ingreso, se realiza el debido reporte al banco.
Por otra parte se hace la revisión de los logs de CyberArk encontrando que las sesiones que se encontraban laborando fueron desconectadas repentinamente, teniendo en cuenta que los servicios de la solución se encontraban disponibles.
Adjunto evidencias donde se observa la desconexión de los usuarios y el log que generó CyberArk a la hora de la incidencia '),
('500','17935547','2020-07-29 8:42','REPORTE: El(la) colaborador(a) se comunica indicando hasta el viernes 24 de Julio tenía todos mis accesos acorde a mi perfil y según lo solicitados en Enero de 2020 que ingresé al banco, el pedido USM de eso fue 1362346 hasta ayer tenía un incidente con ustedes escalado que es este 17927614 hoy tengo VPN, pero cuándo ingreso a CYBERARK no puedo ver ningun servidor de todos los que podía ver
Error: puedo ingresar a CYBERARK, pero no me aparece ningún servidor'),
('501','17935547','2020-07-29 8:51','RESPUESTA / TRANSFERENCIA: Se realizan las validaciones correspondientes desde CyberArk, confirmando que la funcionaria no cuenta con ningún perfil de permisos asignado a su usuario, por lo cual se debe validar si realizaron algún organizacional, esto puede ser validado con la persona encargada de los Pedidos USM "Tatiana Marcela Blandon". Se adjunta evidencias.
Por lo cual para tener acceso a Cyberark debe solicitar un pedido en USM, indicando el grupo.
Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk

'),
('502','17935541','2020-07-29 9:06','REPORTE: El sistema no tomó el comentario anterior. El usuario jpparra se encuentra bloqueado en cybernark y solicitamos el apoyo de evolution para su desbloqueo.'),
('503','17935541','2020-07-29 9:10','SOLUCION: Se valida el usuario (jpparra) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('504','17937470','2020-07-29 12:31','REPORTE: Buenos días, actualmente tengo problemas con Cyberark, puedo ingresar pero no tengo acceso a todas las maquinas necesarias. Realice la solicitud de ingreso a los siguientes grupos: grptwinte, grptlinte, grptpinteg , grptiall_IntegracionIBM pero no me cargan todas las maquinas.
Necesito que por favor me ayuden dando estos accesos teniendo como referencia al usuario ktoledo el cual es mi compañero de equipo. Adjunto evidencias. '),
('505','17937470','2020-07-29 12:45','RESPUESTA / TRANSFERENCIA: Se realizan las validaciones correspondiente desde CyberArk, confirmando que el usuario "Ktoledo" tiene un grupo adicional que la cuenta de la funcionaria (caaalvar) no lo tiene incluido.

Adjunto evidencias.

Por lo cual para tener acceso a Cyberark debe solicitar un pedido en USM.

Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk
'),
('506','17938614','2020-07-29 14:52','REPORTE: El usuario USRTSECU presenta la siguiente falla adjunta en el servidor pseries 10.8.2.147 - datastagefeeng, por favor escalar el tema a los administradores y contactarnos.'),
('507','17938614','2020-07-29 15:07','SOLUCION: Buen dia, se realiza verificación de la cuenta y no estan sincronizadas las contraseñas, se realiza proceso de reconciliación y verificación, se valida acceso quedando operativo.

Se adjunta manual para reconciliar cuentas.'),
('508','17939726','2020-07-29 16:55','REPORTE: colaboradora se comunica informando que requiere desbloquear un usuario de CyberArk
Error: Usuario bloqueado
Usuario: usrtiall
Nombre: Juan Rafael Bermudez Agudelo '),
('509','17939726','2020-07-29 23:43','SOLUCION: Se solicita realizar reconciliación de cuenta USRTIALL en el servidor Leasing, se realiza validación y se evidencia una reconciliación que no se ejecutó por parte del usuario, se ejecuta reconciliación manual y se realizan pruebas de conexión con los usuarios satisfactoriamente.'),
('510','17939987','2020-07-29 18:56','REPORTE: Fallas para ingresar a CyberArk, al tratar de ingresar por windows sale error Authentication failure for User [nfcelis]. y no permite ingresar de nuevo las credenciales, en ocasiones anteriores me han indicado que al parecer mi usuario se encuentra bloqueado, lo desbloquean y puedo ingresar, solicito ese proceso por favor'),
('511','17939987','2020-07-29 19:06','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('512','17940300','2020-07-29 21:32','REPORTE: El colaborador indica que no le permite el ingreso al aplicativo
user: derinco '),
('513','17940300','2020-07-29 21:59','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk. '),
('514','17943758','2020-07-30 14:33','REPORTE: El colaborador Indica por chat que: No tiene la conexion a ningun servidor , desde que quitaron el acceso a los grupos , ya tiene acceso a los grupos con el incidente : 17926115 pero la falla de ciyberark persiste , Ver adjunto .
por ejemplo busque el usuario sqlservice que con ese me conecto a los servidores windows y ya ni sale entonces es como si no tuviera autorizacion para acceder a ningun server'),
('515','17943758','2020-07-30 15:10','RESPUESTA / TRANSFERENCIA: Buen dia, se realiza validación y la usuaria no pertenence a ningun grupo en cyberark , por tal motivo no le cargan las cuentas.
Debe solicitar un pedido por usm para que ingresen a la usuaria a los grupos correspondientes.
Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk

'),
('516','17944205','2020-07-30 15:34','REPORTE: Incidente: El colaborador se comunica indicando que puede ingresar sin problemas a la aplicacion pero al realizar alguna consulta el sistema no le arroja resultados.'),
('517','17944205','2020-07-30 16:31','RESPUESTA / TRANSFERENCIA: Se realiza la validación y se encuentra que el usuario no esta agregado a nigun grupo de Cyberark (Evidencia adjunta)y por ello no le permite observar las cuentas.
El usuario debe solicitar por USM la agregación de los grupos por la siguiente ubicación
"Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk" 
'),
('518','17945124','2020-07-30 17:51','REPORTE: El(la) colaborador(a) se comunica indicando ''Soy administrador de la bóveda en CyberArk pero dentro de la bóveda no esncuentro la de SAP entonces no me permite adicionar credenciales para custodia y las credenciales de sap que me aparecen no me permite editar''.
Error: No permite Adicionar Credenciales para Custodia'),
('519','17945124','2020-07-30 19:07','SOLUCION: Buenas Tardes. El perfil que posee permisos para agregar cuentas al safe GRPTBOVDB_SAP el perfil al que pertenece el usuario es grptosabdb solo tiene permisos de utilizar y ver las cuetas, para solicita racceso al perfil se debe generar pedido en USM por la siguiente categoría Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk'),
('520','17945403','2020-07-30 10:11','REPORTE: No carga sesion i-series Leasing por Cyberark'),
('521','17945403','2020-07-30 10:54','SOLUCION: Se contacta al colaborador para solicitarle unos datos
pero indica que el caso ya fue atendido y solucionado
Se autoriza el cierre del caso '),
('522','17945440','2020-07-30 23:25','REPORTE: Incidente: El colaborador indica: no puedo entrar a la herramienta y con ello a ningun servidore'),
('523','17945440','2020-07-31 1:24','SOLUCION: Se realiza validación del usuario fjflores el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('524','17927239','2020-07-31 9:45','REPORTE:  el colaborador indica que no le permite ingresar a citrix, desde hoy alas 8:00 am , error no se deteca una ip asociada.
se valida en directorio activo el colaborador no tiene asignado VPN ni ningun permiso, se valida archivo no conexion 15. dias sin novedad. indica haber laborado sin novedad por ultima vez el dia viernes pasado 24/07/2020.'),
('525','17927239','2020-07-31 9:59','RESPUESTA / TRANSFERENCIA: Se realizan las validaciones correspondientes desde CyberArk confirmando la cuenta (juaareva) del funcionario Julian Alberto Arevalo, no posee perfiles asignados a CyberArk, esto puede deberse a un cambio interno en el contrato organizacional, lo cual puede ser validado con la persona encargada de Pedidos USM, Tatiana Marcela Blandon.
Para tener acceso nuevamente a Cyberark, debe solicitar un pedido en USM, indicando los grupos.
Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk
'),
('526','17947647','2020-07-31 12:01','REPORTE: En la herramienta CiberArk estamos tratando de ingresar a la cuenta USRTIALL a la maquina iSeries Medellín ( ip 10.10.232.169) pero no se logra conectar a la maquina, genera un error que indica " LA INFORMACION DE SESION NO ES CORRECTA".'),
('527','17947647','2020-07-31 16:00','SOLUCION: Se realiza la validación, en la que se encuentra programado un cambio de contraseña, se hace la respectiva corrección donde el usuario ya se encuentra con la contraseña reconciliada y en funcionamiento. '),
('528','17943847','2020-07-31 14:16','REPORTE:Colaborador comenta que tenia un problema con un acceso a la VPN, se le arreglo este problema y ya le deja ingresar con normalidad a la VPN pero cuando entra a la aplicacion Ciber ark no le aparece ninguna opcion activa, tampoco para conectarse a servidores del mismo asi los busque le aparece como si no tuviese acceso a esto, favor dar prioridad ya que sin esto el usuario no puede laborar.
Usuario: hapolina'),
('529','17943847','2020-07-31 14:24','RESPUESTA / TRANSFERENCIA: Buen dia, se realiza validación y el usuario no cuenta con permisos asociados a CyberArk por tal motivo no le cargan las cuentas,
Se debe solicitar acceso nuevamente a los perfiles por medio de un pedido en usm por el siguiente flujo
Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk ')


--tabla documentacion incidente junio

	INSERT INTO documentacion_incidente(id_incidente,fecha,id,documentacion)
	VALUES 
('17723258','2020-06-02 9:06','117','REPORTE: Se presenta inconveniente con el nodo 10.8.146.216 con algunos conectores en el balanceador por lo que requerimos bajar el nodo mientras damos solución al inconveniente presentado.(Balanceador proxyrdp.bancolombia.corp)'),
('17723258','2020-06-09 21:38','118','SOLUCION: De acuerdo a las validaciones realizadas y la decisión tomada entre el Banco y Evolution, se realiza el cierre debido a que no se presenta afectación o degradación en el servicio ya que esté se encuentra soportando la demanda con 2 nodos adicionales'),
('17724367','2020-06-02 10:25','119','REPORTE: Se requiere visualizar la clave del usuario root en la maquina pbmdeatsec01 de la plataforma pSeries en el ambiente desarrollo en CyberArk con el fin de parametrizar el OTP para el rotado de contraseñas periodico'),
('17724367','2020-06-02 11:56','120','SOLUCION:  se realizan pruebas de conexión y visualización del Password por el usuario Wilson Salazar para las pruebas de OTP. '),
('17725619','2020-06-02 12:45','121','REPORTE: Solicitamos de su colaboración dándole ingreso al usuario USRTSECU para el ingreso a los servidores:
LBMDEBPINT02V - LBMDEBPINT03V'),
('17725619','2020-06-03 13:06','122','RESPUESTA / TRANSFERENCIA: Buenos dias, se realizan pruebas de conciliación y se concilian la cuenta usrtsecu, se inicia sección y la sección se cierra, se valida con la cuenta usrtadmi en el servidor la cual no se cierra. Por favor escalar a plataformas distribuidas para que la cuenta usrtsecu en los servidores tengan el menu correspondiente para que otorgue el acceso. Se adjunta evidencias'),
('17725619','2020-06-04 8:16','123','RESPUESTA / TRANSFERENCIA: Buenos dias, Se realiza la validación del acceso y aún la cuenta usrtsecu no cuenta con el menu de acceso, se debe configurar en los servidores en la cuenta usrtsecu el menu de acceso, esto es realizado por el area de Plataformas distribuidas.
El error no corresponde a CyberArk.'),
('17725619','2020-06-04 18:04','124','RESPUESTA / TRANSFERENCIA: Buen dia, se realiza validación del acceso por medio de CyberArk y los menús ya se encuentran corregidos.   '),
('17726896','2020-06-02 15:29','125','REPORTE: CyberArk. Estoy teniendo problemas para acceder a las bases de datos de Hipotecario a través de CyberArk.'),
('17726896','2020-06-02 20:22','126','SOLUCION: Se realiza borrado de usuario shadow mpaguir en los sevidores psm, se restablece la conexion'),
('17733775','2020-06-03 19:08','127','REPORTE: Indica que no esta funcionando modulo de autogestión gestión para desbloquear usuario qsecofr en la maquina meddr, indica que valida el usuario dentro de la maquina y el usuario sigue apareciendo disable'),
('17733775','2020-06-03 20:14','128','RESPUESTA / TRANSFERENCIA: Buenas noches, se realiza la validación y la cuenta conciliadora de CyberArk no tiene permisos para rotar la contraseña de la cuenta QSECOFR. (Se adjunto Log). Por favor escalar la solicitud al Área de Acceso plataformas para que otorguen dicho permiso.'),
('17739091','2020-06-05 12:26','129','REPORTE: El colaborador indica que no puede ingresar al aplicativo'),
('17739091','2020-06-05 12:48','130','SOLUCION: Se realiza validación del usuario woalzate el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('17739107','2020-06-05 2:14','131','REPORTE: El colaborador indica que no puede ingresar al aplicativo'),
('17739107','2020-06-05 2:26','132','SOLUCION: Se realiza validación del usuario woalzate el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('17740423','2020-06-05 10:46','133','SOLUCION: se solicita escalar incidente al area Disponibilidad Plataforma y Colaboracion Linux TCS . para revisar el servidor 10.8.114.140, que las cuentas usrtpdc, usrtsecu, usrttool no estan creadas en el servidor, tambien validar si las cuentas cuentan con los menus correspondientes'),
('17740423','2020-06-05 11:38','134','RESPUESTA / TRANSFERENCIA: Buenos dias, Eliud, por favor documentar el incidente con los cambios y creacion de usuarios que se realizaron en el servidor. '),
('17740423','2020-06-05 12:24','135','SOLUCION: Buenos dias, Luego de realizar las modificaciones por parte del equipo de Linux, se toma control remoto de las cuentas.'),
('17733775','2020-06-05 19:08','136','REPORTE: Indica que no esta funcionando modulo de autogestión gestión para desbloquear usuario qsecofr en la maquina meddr, indica que valida el usuario dentro de la maquina y el usuario sigue apareciendo disable'),
('17733775','2020-06-05 20:14','137','RESPUESTA / TRANSFERENCIA: Buenas noches, se realiza la validación y la cuenta conciliadora de CyberArk no tiene permisos para rotar la contraseña de la cuenta QSECOFR. (Se adjunto Log).

Por favor escalar la solicitud al Área de Acceso plataformas para que otorguen dicho permiso.'),
('17733775','2020-06-05 12:08','138','SOLUCION: Buenos dias, Por favor apoyarse con Diego Alexander Gutierrez Colorado <DIEALGUT@bancolombia.com.co> y/o Jose Pablo Ramirez Giraldo <JOPRAMIR@bancolombia.com.co>, Los cuales conocen el proceso de permiso.'),
('17743551','2020-06-05 16:50','139','REPORTE: , por favor crear un incidente y escalarlo al Grupo TS Funciones Corporativas Seguridad Evolution.
Se esta presentando error en las conexiones psm en el servidor 10.8.146.219.
se esta afectando producción de CyberArk.'),
('17743551','2020-06-05 22:26','140','SOLUCION:Se reinicia servidor PSM3 debido a errores en sistema operativo en el servicio Remote Access conection Manager el cual se reiniciaba constantemente ocasionando que no fuera posible levantar nuevas conexiones al servidor PSM al reiniciar el sistema operativo se restablece el servicio. Adicional se halló que la capeta de la Bóveda donde se almacenan los videos se había quedado sin espacio ocasionando que las conexiones de PSM se resetearan'),
('17744140','2020-06-05 20:01','141','REPORTE: No logro acceder a cyberark, o acceso a los servidores wcc por servicios SSH ni SFTP.
El incidente, te afecta solo a ti o más compañeros?
Solo a mi'),
('17744140','2020-06-05 20:21','142','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjuntan imagenes al caso.'),
('17744602','2020-06-06 14:53','143','REPORTE: El colaborador se comunica indicando que tengo bloqueado el acceso a ciberark
Error: Authentication failure for user
Flag: N/A
User hajgarci
Correo hajgarci@bancolombia.com.co
Cel 3024471969'),
('17744602','2020-06-06 14:59','144','SOLUCION: Se valida el usuario hajgarci en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('17745313','2020-06-08 8:06','145','REPORTE: El usuario indica en el chat:por favor me ayudas tambien con CyberArk, tambien me aparece bloqueado
Error:Authentication failure for User [spajaro]."
Ocurrencia Hoy
Flag n/a
Usuario:spajaro'),
('17745313','2020-06-08 8:21','146','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjuntan imagenes al caso.'),
('17745360','2020-06-08 8:19','147','REPORTE: SBMDEDBD06 - [BD SIS] | 10.8.36.47 | Not reachable (ICMP/PING)
Nombre del servidor: SBMDEDBD06
IP 10.8.36.47
Servicio [BD SIS]
Variable Alertada: Not reachable (ICMP/PING)
Se perdio conexion conexion con el serviodr destino por medio de RDP, pero si se tiene telnet por el puerto 3389. Por favor escalar el incidente al dueño de la plataforma (Plataformas distribuidas). Evidencias en el correo adjunto.'),
('17745360','2020-06-08 12:37','148','RESPUESTA / TRANSFERENCIA: Se perdio conexion conexion con el serviodr destino por medio de RDP, pero si se tiene telnet por el puerto 3389. Por favor escalar el incidente al dueño de la plataforma (Plataformas distribuidas). Evidencias en el correo adjunto.'),
('17748498','2020-06-08 14:18','149','REPORTE: El colaborador indica por chat
Desde el Jueves de la semana pasada estoy teniendo problemas con CiberArk, Al intentar entrar a una base de datos me sale un error
Error: Connect to server adjunto

url https://pam.bancolombia.corp/PasswordVault/v10/Accounts
cc 8100420
Nombres Jaramillo Oviedo, Juan Fernando
usuario JJOVIEDO

Esto tiene afectación de un área, es de alta importancia pues NO esta permitiendo trabajar en los diagnosticos de los incidentes de VALORES BANCOLOMBIA. Si NO se pueden trabajar los diagnoisticos , esta impactando directamente a clientes..'),
('17748498','2020-06-08 14:34','150','RESPUESTA / TRANSFERENCIA: Buenas tardes,
Se realizan validaciones a nivel de CyberArk, el usuario mencionado (JJOviedo) no se encuentra bloqueado, agradecemos por favor adjuntar Nombre del Servidor, IP, usuario con el que accede al servidor, adicional dejar un numero de contacto esto con el fin de poder realizar las verificaciones respectivas en la herramienta, ya que en el adjunto no se puede determinar la falla.
Gracias.'),
('17748498','2020-06-09 7:42','151','RESPUESTA / TRANSFERENCIA: Se realizan las validaciones respetivas al usuario ("usrtdllo" on domain bancolombia.corp(\\SBMDEBPCDD01). Reason: This user can t sign in because this account is currently disabled.) la cuenta a un se encuentra desactivada en Directorio Activo, el error no pertenece al área de CYBERARK favor escalar el caso inicialmente con Diego Armando Nisperuza Blanco <dnisperu@bancolombia.com.co> para que se verifique si el usuario esta creado en la BD y cuente con permisos, adicional que el puerto corresponda al 1633.'),
('17748498','2020-06-09 8:06','152','RESPUESTA / TRANSFERENCIA: Se realizan las validaciones respetivas al usuario ("usrtdllo" on domain bancolombia.corp(\\SBMDEBPCDD01). Reason: This user can t sign in because this account is currently disabled.) la cuenta a un se encuentra desactivada en Directorio Activo, el error no pertenece al área de CYBERARK favor escalar el caso inicialmente con Diego Armando Nisperuza Blanco <dnisperu@bancolombia.com.co> para que se verifique si el usuario esta creado en la BD y cuente con permisos, adicional que el puerto corresponda al 1633.'),
('17748498','2020-06-10 9:52','153','RESPUESTA / TRANSFERENCIA: Se realizan las validaciones respetivas al usuario ("usrtdllo" on domain bancolombia.corp(\\SBMDEBPCDD01). Reason: This user can t sign in because this account is currently disabled.) la cuenta a un se encuentra desactivada en Directorio Activo, el error no pertenece al área de CYBERARK favor escalar el caso inicialmente con Diego Armando Nisperuza Blanco <dnisperu@bancolombia.com.co> para que se verifique si el usuario esta creado en la BD y cuente con permisos, adicional que el puerto corresponda al 1633.
Se adjunta correo al caso en donde se indica que no es falla del área de CYBERARK.'),
('17754103','2020-06-09 18:04','154','REPORTE: Para acceder a la base de datos Oracle que soporta la plataforma Authentic y por ende los canales de cajeros automáticos, pos y corresponsales bancarios, se debe acceder por la plataforma CyberArk, sin embargo al tratar de ingresar esta genera un error al cargar la base de datos donde dice "Fallo al enviar clic al boton New Conection". Es error es repetitivo y no permite realizar soporte a los canales.

Inconvenientes de accesos a servidores de Base de datos desde CyberArk
a los siguientes servidores y la siguiente cuenta:

usrtdllo
10.60.184.196
SBBOGBBD01ST

10.8.5.196
USRTDLLO
SBMDEBBD01ST'),
('17754103','2020-06-09 21:47','155','SOLUCION: se cierra incidente y se abre el problema 17755420 para tratar este tema, adicional, se asigna como solución temporal eliminar shadow user del usuario.   '),
('17754982','2020-06-09 18:54','156','REPORTE: Se me bloqueo el acceso a servidores por CiberArk
Solo me afecta a mi. Token 415925473.
3024279151'),
('17754982','2020-06-09 19:03','157','SOLUCION: Se valida el usuario jfnavas en la aplicación CyberArk y se encuentra bloqueado.

Se realiza respectivo desbloqueo de usuario. Recuerde que cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.

Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('17754875','2020-06-10 9:07','158','REPORTE: No tengo acceso a CiberArK, luego de que mi usuario se bloqueara, al desbloquearlo, no me deja loguearme a CiberArk, solicitud con la cual me desbloquearon usuario # 17749135 - Usuario: UGIL
El incidente, te afecta solo a ti o más compañeros?
Me afecta solo a mi.'),
('17754875','2020-06-10 9:36','159','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjuntan imagenes al caso'),
('17757032','2020-06-10 10:36','160','REPORTE: Bloqueado usuario de CyberArk para acceso a servidores por SFTP y SSH.
Este solo me afecta a mi.
Tel 3024279151
Usuario jfnavas
Token 415925473'),
('17757032','2020-06-10 10:59','161','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjuntan imagenes al caso.'),
('17757493','2020-06-10 11:06','162','REPORTE: Constantemente se presentan error de TimeOut en la coneccion a las bases de datos alojadas en el sistema, esto afecta notablemente la atencion oportura de solicitudes e incidentes. para este caso llevo mas de 30 min intentando establecer una coneccion y no he podido, adjunto algunos pantallazos y el registro de coneccion donde se que ve falla

caso de referencia: 17698648'),
('17757493','2020-06-10 17:02','163','SOLUCION: Buena tarde,
Se realizan las validaciones respectivas en Cyberark del inconveniente reportado, confirmando que la conexión se ejecuta correctamente, por lo cual para dar solución a la falla, se procede a ejecutar proceso de eliminación de la cuenta Shadow User asociada la cuenta de usuario en CyberArk, tras realizar este procedimiento se contacta al funcionario, quien ejecuta pruebas correspondientes de accesos al servidor de base de datos con resultado exitoso y sin fallas, de igual manera se informa que este inconveniente se esta trabajando con el caso Problema 17755420 para solución final.

Se adjunta evidencia de funcionalidad enviada por usuario.'),
('17757956','2020-06-10 12:07','164','REPORTE: Por favor, confírmanos tu número de teléfono para contactarte en caso de ser necesario
Hola, tengo inconvenientes para ingresar a la maquina sbmdebbd73v y sbmdebbd72v ya que esta se queda cargando y al final falla, desde estas maquinas es que hago las respectivas consultas para revolser incidentes.'),
('17757956','2020-06-11 8:02','165','SOLUCION: Se procede a la validación del caso con el usuario. se contacta por Teams, se hacen pruebas es funcional. se adjunta imagen al caso, se procede hacer el cierre.   
'),
('17759317','2020-06-10 15:28','166','REPORTE: tenemos problemas con el usuario dsadm en las maquinas pbmdebpfds01 y pbmdebpdst12
Error: Failed to connect to host "datastagefeeng" as user "dsadm".Check user name and password are correct.
usuario :
Nombre:Pablo Diaz
Correo electrónico: pabdiaz@bancolombia.com'),
('17759317','2020-06-10 15:53','167','SOLUCION: Buenas tardes, se realiza verificación de la cuenta en CyberArk, se realizan pruebas de conexión las cuales son exitosas, se cierra incidente. '),
('17759156','2020-06-10 15:34','168','REPORTE: Se presenta la necesidad de ampliar la memoria de los componentes PSM1 y PSM3, ya que actualmente se evidencia un comportamiento alto en el consumo del servicio CyberArk PAM, el cual genera un crecimiento significativo en el uso de los recursos; por lo anterior, no tomar las medidas preventivas en este momento puede impactar el servicio generando degradación o afectación ya que estos componentes son los que permiten la conexión del origen y destino. Adicional, la máquina virtual se puede apagar y dañar el sistema operativo a nivel de máquina virtual.'),
('17759156','2020-06-11 13:48','169','SOLUCION: Se procede a dar cierre del caso: "Les informamos que la actividad terminó y los servidores se encuentran operativos nuevamente. El cambio fue exitoso en los componentes PSM1 y PSM3, el servicio recibe solicitudes de conexión sin ningún inconveniente.
Se valida con el ingeniero Carlos Barriga en donde indica que el servidor NIQUIA.PSM1 se incrementa en 16 GB para un total de 48GB y NIQUIA.PSM3 se incrementa en 32GB para un total de 64GB.
Se adjunta correo al caso."'),
('17761778','2020-06-11 10:00','170','REPORTE: Buenos días,Solicito amablemente desbloquear psachica en el sistema CyberArk, adjunto evidencia de que se encuentra bloqueado.'),
('17761778','2020-06-11 10:14','171','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjuntan imagenes al caso.'),
('17763403','2020-06-11 12:48','172','REPORTE: al tratar de ingresar por CyberArk a las máquinas de as400 arroja el siguiente error, que se adjunta en el incidente

no deja ingresar a las máquinas de as400 las que estábamos conectados se cerraron todas'),
('17763403','2020-06-11 13:21','173','SOLUCION: Según lo conversado por Teams el motivo de esta falla es por que se realizo una OC2744032, se hacen pruebas de nuevo con el usuario e indica el ingeniero Ever Mensoza que ya es funcional, se procede a realizar el cierre del IM17763403, se adjunta correo al caso.'),
('17764225','2020-06-11 14:47','174','REPORTE: EL colaborador se comunica indicando que esta teniendo problemas con el aplicativo de cyberark'),
('17764225','2020-06-11 15:08','175','SOLUCION: Buenas tardes,
Se realizan validaciones desde Cyberark al servidor con IP 10.8.87.4 y la conexión se establece sin novedad, se contacta a funcionario quien nuevamente ejecuta pruebas de conexión, luego de volver a ingresar a sistema no presento inconvenientes, se informa sobre actividad realizada en los PSM de CyberArk el día hoy, se cierre ticket con autorización de funcionario.
Gracias.'),
('17765046','2020-06-11 16:36','176','REPORTE: colaborador indica que requiere ingresar a cyberark y le sale un error de autenticacion
Error: n/a
Flag: n/a
Usuario de red: ympapam'),
('17765046','2020-06-11 16:43','177','SOLUCION: Se valida el usuario ympapam en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('17765370','2020-06-11 17:14','178','REPORTE:  colaborador me indica que : No tengo acceso a CiberArK, luego de que mi usuario se bloqueara, al desbloquearlo, no me deja loguearme a CiberArk, solicitud con la cual me desbloquearon usuario # 17749135 - Usuario: UGIL
El incidente, te afecta solo a ti o más compañeros?
Me afecta solo a mi.'),
('17765370','2020-06-11 17:50','179','SOLUCION: Se valida el usuario UGIL en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('17765917','2020-06-12 8:07','180','REPORTE: Al intentar ingresar al Iseries Medellin por CyberArk me saca el mensaje: "PSMGenericClientWrapper error: Failed to get dispatcher parameters (error:DLL function GetSessionPropertyBufferLenght failed (0))". Mi dispositivo es el WSGSI23, el cual me verificó mi compañero y esta activado. Mi celular es 3044057057 o la ext 30950.Por favor dar prioridad alta a este incidente porque requiero Medellín para resolver los pedidos que llegan al área. Por favor escalar al grupo “TS Funciones Corporativas Seguridad Evolution"'),
('17765917','2020-06-12 8:49','181','SOLUCION: Buen dia, se realiza la validación de la cuenta de la usuaria en el servidor Medellin, se configura parametro de logue y se realizan pruebas de acceso.'),
('17765945','2020-06-12 8:13','182','REPORTE: Solicito amablemente desbloquear el usuario gdelaros en el sistema CyberArk. También si es posible ayudarme a validar si el usuario tiene algún problema con el perfil ya que ocasiones anteriores me informa que al ingresar a CyberArk no le aparecen los servidores que debería tener, el perfil que debería tener es grptlAdminfo_Solati.'),
('17765945','2020-06-12 8:42','183','RESPUESTA / TRANSFERENCIA: Buenos dias, Tatiana, por favor validar si el usuario tuvo cambio Organizacional debido a que no cuenta con ningún perfil asociado.  '),
('17769452','2020-06-12 15:40','184','REPORTE: no le permite el ingreso le sale un error, al servidor • Servidor: SBMDEGGD04V
• Usuario de conexión: usrtinte
• Usuario de red: jpcanon
'),
('17769452','2020-06-12 15:54','185','RESPUESTA / TRANSFERENCIA:  Por favor validar internamente el grupo exacto, ya que desde la operación CyberArk no se tiene en nombre correspondiente.   
'),
('17769452','2020-06-16 11:00','186','RESPUESTA / TRANSFERENCIA:  Se realizan validaciones de las evidencias adjuntas en el caso y se confirma que el inconveniente se presenta porque no tiene actualizado el protocolo TLS a 1.2, esto debe ser escalado al Administrador de la Plataforma Windows para realizar el procedimiento.
El error No es en CyberArk.
'),
('17769452','2020-06-16 11:20','187','RESPUESTA / TRANSFERENCIA:  Buen dia, se realizara la validación del error, el error 3335 corresponde al usuario usrtinte se encuentra bloqueado en directorio activo, se realiza la conciliación de la cuenta usrtinte en bancolombia, se ingresa a varios servidores sin inconvenientes, se valida acceso al servidor por RDP y no es posible arroja error, por favor escalar al area de plataformas distribuidas para que validen el protocolo tls del server y si se encuentran en el dominio.
'),
('17770861','2020-06-13 9:25','188','REPORTE: Desde la tarde del día de ayer hemos sufrido una inestabilidad importante en el procesamiento llegando al 98% de la capacidad del servidor PSM3 SXMDEBPPAM08V 10.8.146.219. Hechos los análisis se detecto un problema físico en en Firmware de la maquina lo cual esta siendo atendido por el soporte de HP con numero de caso 5347941283. Que recomienda la actualización del Firmware.
'),
('17770861','2020-06-13 17:10','189','SOLUCION: 1. Se realizo la actualización de firmware inicialmente en la tarjeta principal (board) de manera exitosa
2. Se realiza la actualización de la BIOS de manera exitosa
3. Se realiza la actualización de la ilo de manera exitosa
todos estos componentes actualizados con las actualizaciones entregadas por el fabricante HP.'),
('17771252','2020-06-14 8:16','190','REPORTE: DAÑO: Intermitente
PROCESO: CyberArk
EQUIPO:
RAZÓN: Contraseña para el usuario USRTOPER de SUFI PRODUCCION caducó.
Por vencimiento a la contraseña del usuario USRTOPER en la mauquina de SUFI PRODUCCION se crea el incidente con numero 17771252'),
('17771252','2020-06-14 8:28','191','SOLUCION:  Se realiza reconciliación de cuenta usrtoper en la plataforma BCO-P-AS400-IN-EX y se realiza pruebas de conexión satisfactoriamente, por favor realizar pruebas de conexión, se adjunta evidencias'),
('17771374','2020-06-14 11:29','192','REPORTE: Desde CyberArk no se permite ingresar al servidor SBMDEBBD01 con el usuario Bancolombia\sqlservice, afecta al area de BD
Se adjunta documento'),
('17771374','2020-06-14 12:08','193','RESPUESTA / TRANSFERENCIA: Buen día,
Se realizan las validaciones correspondientes desde CyberArk encontrando que la cuenta SQLService esta funcional y no debe rotar la contraseña ya que esta es fija, la cuenta permite establecer conexiones a otros servidores, se valida conexión al Servidor mencionado (SBMDEBBD01) desde SQLService con los datos y el dominio Bancolombia y continua el error, se debe validar con Plataformas Distribuidas el Dominio en el que se encuentra el Servidor.
Se realiza llamada a funcionario y se le explica el inconveniente que presenta con el Dominio del Servidor.
Gracias.'),
('17773714','2020-06-16 10:35','194','REPORTE: no ayudan revisando el incidente: cuando se va utilizar una macro sale este mensaje adjunto imagen de AS400 MEDELLIN por Cyberak'),
('17773714','2020-06-16 11:23','195','SOLUCION: Buen dia, se valida el error en el componente PSM y se configura excel para que no solicite actualizaciones, se realizan pruebas quedando en correcto funcionamiento.'),
('17773348','2020-06-16 10:59','196','REPORTE: El colaborador indica que Necesito su apoyo creando un incidente donde pueden 1. desbloquear el ip 2. enviar una nueva contraseña de los siguiente ips
APP1 10.8.73.140 PBMDEBQFIN56 APP2 10.8.73.21 PBMDEBQFIN57
10.8.73.140 y 10.8.73.21'),
('17773348','2020-06-16 11:15','197','RESPUESTA / TRANSFERENCIA: Se realizan las validaciones en CyberArk, confirmando que el usuario mencionado (ssriniva), no se encuentra creado (Se adjunta evidencia), por lo cual para tener acceso a Cyberark debe solicitar un pedido en USM.

Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk'),
('17773348','2020-06-17 14:09','198','RESPUESTA / TRANSFERENCIA:  Buenas Tardes, se realiza reconciliación de la cuenta usrtanpl en los servidores, el servidor 10.8.73.140 se concilia la cuenta y se accede de manera correcta.
(Se adjunta imagen)
Para el servidor 10.8.73.21 se trata de conciliar y no es posible, se realiza telnet hacia el servidor y no responde (Se adjunta imagen), se debe validar si el servidor se encuentra encendido y operativo.

Se debe escalar incidente a los Administradores de AIX'),
('17772566','2020-06-16 12:48','199','REPORTE: El colaborador se comunica indicando que requiere una nueva contraseña para el servidor que se conecta con filezilla'),
('17772566','2020-06-16 13:12','200','RESPUESTA / TRANSFERENCIA: Se realizan las validaciones en CyberArk, confirmando que el usuario mencionado (johnnara) no se encuentra creado (Se adjunta evidencia), por lo cual para tener acceso a Cyberark debe solicitar un pedido en USM.

Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk'),
('17779958','2020-06-17 12:20','201','REPORTE: El usuario indica por chat : Solicito restablecer la contraseña para el servidor Axiom producción'),
('17779958','2020-06-17 12:41','202','RESPUESTA / TRANSFERENCIA: Por favor validar los permisos de la cuenta conciliadora cnxiplnx en el servidor SBMDEBRL01 - 10.8.105.164.

El servidor SBMDEBRL02 - 10.8.105.169 validar si se encuentra encendido debido a que desde cyberark no tenemos alcance.'),
('17780595','2020-06-17 13:19','203','REPORTE:  El usuario indica : Solicito restablecer la contraseña para el servidor Axiom producción
Ocurrencia: hoy
nombre: Arias Hoyos, Maria Jose
cc: 1152455289
user: maarias
Servidores:
SBMDEBRL01 - 10.8.105.164
SBMDEBRL02 - 10.8.105.169'),
('17780595','2020-06-17 13:35','204','RESPUESTA / TRANSFERENCIA:   Por favor validar los permisos de la cuenta conciliadora cnxiplnx en el servidor SBMDEBRL01 - 10.8.105.164.

El servidor SBMDEBRL02 - 10.8.105.169 validar si se encuentra encendido debido a que desde Cyberark no tenemos alcance.

Adjunto evidencia.'),
('17780595','2020-06-17 20:07','205','RESPUESTA / TRANSFERENCIA: Buenas Noches, por favor validar los permisos de la cuenta. El servidor SBMDEBRL01 - 10.8.105.164 ya se encuentra funcionando y con las cuentas conciliadas en CyberArk.

El servidor SBMDEBRL02 - 10.8.105.169 la cuenta conciliadora cnxiplnx, no posee permisos en el servidor.(la cuenta concilaidora no posee permisos para ejecutar la acción)

Se adjuntan evidencias.'),
('17780812','2020-06-17 13:41','206','REPORTE: El colaborador se contacta indicando que requiere ciontraseña nueva al servidor linux descrito
Error: N/A
DATOS: es a estos servidores SBMDEBRL01V y SBMDEBRL01
Usuario a desbloquear y asignar nueva clave: dazulet
'),
('17780812','2020-06-17 13:48','207','RESPUESTA / TRANSFERENCIA:  Buenas Tardes, Por favor validar los permisos de la cuenta conciliadora cnxiplnx en el servidor SBMDEBRL01 - 10.8.105.164.
El servidor SBMDEBRL02 - 10.8.105.169 validar si se encuentra encendido debido a que desde cyberark no tenemos alcance.
Por favor direccionar esta falla al grupo: Disponibilidad Plataforma y Colaboracion Linux TCS
Casos duplicados: 17779958 y 17780595.

Adjunto evidencia.'),
('17783386','2020-06-17 22:40','208','REPORTE: se requiere reinicio ya que los servicios se encuentran abajo Buen día, por favor escalar a los administradores del servidores Windows, el error no corresponde a una falla de CyberArk.
Por favor validar la conexión por medio de RDP para el servidor, si existe política o configuración que este impidiendo el acceso, escalar al área encargada.
Prioridad del Incidente: Media
Nombre el servidor: SBMDEDBD06
IP: 10.8.36.47
Servicio: [BD SIS]
Variable Alertada: problema para ingreso al servidor windows SBMDEDBD06
Estado de la variable: Se presenta problema para ingreso al servidor windows SBMDEDBD06 por medio de CyberArk con los usuarios sqlservice y usrtsdba.
Analista asignado: Juan Chavez
Avances: N/A
Notas: Incidente generado por petición del analista
Fecha y hora de alertamiento: 10:30 PM'),
('17783386','2020-06-18 0:15','209','RESPUESTA / TRANSFERENCIA:  Se realizan pruebas de conexión directamente desde un RDP sin pasar por CyberArk y al tratar de conectarse la conexión arroja error (Se adjuntan evidencias).

Por favor validar la conexión por medio de RDP para el servidor, si existe politica o configiración que este impidiendo el acceso, escalar al area encargada.'),
('17783386','2020-06-18 17:20','210','RESPUESTA / TRANSFERENCIA: Buenas Tardes, se realizan pruebas de conexión directamente desde un RDP sin pasar por CyberArk y al tratar de conectarse la conexión arroja error (Se adjuntan evidencias).

Por favor validar la conexión por medio de RDP para el servidor, si existe politica o configiración que este impidiendo el acceso, escalar al area encargada.

Por favor escalar a los administradores del servidor, el error no corresponde a una falla de CyberArk'),
('17783386','2020-06-19 8:11','211','RESPUESTA / TRANSFERENCIA: Buen día, por favor escalar a los administradores del servidores Windows, el error no corresponde a una falla de CyberArk.

Por favor validar la conexión por medio de RDP para el servidor, si existe política o configuración que este impidiendo el acceso, escalar al área encargada.

Nosotros somos los administradores de CyberArk, mas no de los Servidores.

Gracias.'),
('17783386','2020-06-19 15:48','212','RESPUESTA / TRANSFERENCIA:  Buenas Tardes, el servidor en CyberArk se encuentra configurado solo para las cuentas.

CNXIPSQL
SQLSERVICE
USRTSDBA

Al tratar de conectarse por un RDP sin pasar por CyberArk arroja error (Validar documento Adjunto Evidencias_Conexion_IM17783386 ).

La falla no corresponde a CyberArk validar el acceso al server por medio de un RDP'),
('17783386','2020-06-19 22:15','213','RESPUESTA / TRANSFERENCIA:  Se intenta lanzar conexión RDP al servidor 10.8.36.47 desde el servidor PSM 10.8.146.219 la cual no es posible, no se esta usando cyberark para la conexión. Adicional se hacen pruebas de ping y telnet exitosas. Como prueba adicional se conecta al servidor 10.27.200.27 atravez de cyberark y se intenta lanzar la conexión RDP al servidor 10.8.36.47 arrojando el mismo resultado se adjuntan evidencias de las pruebas.

por favor escalar a area encargada.'),
('17783386','2020-06-23 8:55','214','RESPUESTA / TRANSFERENCIA: Al tratar de conectarse por un RDP sin pasar por CyberArk arroja error (Validar imagen Adjunta (17783386 Conexion por RDP) ).

La falla no corresponde a CyberArk validar el acceso al server por medio de un RDP'),
('17783386','2020-06-23 9:56','215','RESPUESTA / TRANSFERENCIA:  Al tratar de conectarse por un RDP sin pasar por CyberArk arroja error (Validar imagen Adjunta (17783386 No hay Conexion por RDP) ).
La falla no corresponde a CyberArk validar el acceso al server por medio de un RDP.
Favor escalar el caso al área de administradores de los servidores de Windows.
Al hacer sus correspondientes validaciones favor adjuntar imágenes.'),
('17783414','2020-06-18 12:18','216','REPORTE: El colaborador indica que requiere ingresar
CR:
Usuario: solivare'),
('17783414','2020-06-18 12:24','217','SOLUCION: Se realiza validación del usuario solivare el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk'),
('17783758','2020-06-18 8:50','218','REPORTE: Desde mi perfil de cyberark no veo el servidor con ip 10.8.75.170 y hostname: SBMDEBSW08V el cual deberia estar visualizando puesto que el compañero Carlos Mario Marin Mesa si lo ve y tiene el mismo perfil, Perfil:grptadmswift'),
('17783758','2020-06-18 9:31','219','SOLUCION: Buenos días,
Se realizan las validaciones respectivas en CyberArk, y se confirma que el servidor SBMDEBSW08V, no esta registrado aun, por lo cual se debe crear una OC solicitando adicionarlo, mediante la categoría Corporativa.Mantenimiento de Cuentas en CyberArk, una vez teniendo la cuenta asociada al servidor este como administradora, se ajunta evidencias de pruebas realizadas.
Se contacto a funcionario quien ya esta enterado de que el servidor no esta registrado aun, realizara el proceso de creación de OC correspondiente.
Gracias.'),
('17777795','2020-06-16 17:33','220','REPORTE:  Se reporta desde la gestión de monitoreo un alto consumo... solución CyberArk PAM. Realizando la verificación en los componentes se evidencian muchos procesos del antivirus (Symantec Service Framework) ejecutandose en las sesiones .. ya que estos servidores son de pasarela. Es importante el apoyo del grupo para determinar la causa de estos ya que puede presentar degradación o afectación en el servicio... Los servidores con este comportamiento son SXMDEBPPAM04V 10.8.146.214 y SXMDEBPPAM08V 10.8.146.219'),
('17777795','2020-06-18 9:45','221','SOLUCION: Se Confirma que el cambio realizado el día de ayer Martes 16 de Junio para el antivirus no se volvió a presentar.
El proceso solo se debe presentar una vez y no por cada conexión, quedando de manera correcta.
Se adjunta correo de reporte.'),
('17787769','2020-06-18 16:50','222','REPORTE: Buenas tardes.Por favor validar el motivo por el cual el usuario USRTSECU de acceso plataformas no puede ingresar al servidor Pseries pbmdeapmta01 por medio de CyberArk, registra el error que se adjunta a la solicitud. Por favor trasferir el incidente al equipo: Administrativo Gestion Identidades CyberArk.
Error: no puede ingresar'),
('17787769','2020-06-18 17:05','223','RESPUESTA / TRANSFERENCIA:  Buenas Tardes, se realiza validación del error y el servidor no responde, el error puede corresponder a que el servidor este apagago que ya no tenga la IP resgistrada o permisos de firewall local, (Se adjunta evidencia).
Por favor escalar el incidente al administrador de la plataforma.'),
('17787769','2020-06-19 8:08','224','RESPUESTA / TRANSFERENCIA:  Buenas Tardes, se realiza validación del error y el servidor no responde, el error puede corresponder a que el servidor este apagago que ya no tenga la IP resgistrada o permisos de firewall local, (Se adjunta evidencia).
Por favor escalar el incidente al administrador de la plataforma.'),
('17787769','2020-06-19 8:20','225','RESPUESTA / TRANSFERENCIA: Buen día, Se realiza validación del error y el servidor no responde, el error puede corresponder a que el servidor este apagado que ya no tenga la IP registrada o permisos de firewall local, (Se adjunta evidencia).

Por favor escalar el incidente al administrador de la plataforma.'),
('17788251','2020-06-18 17:48','226','REPORTE: El colaborador indica por chat
Es necesario repisar contraseña de user dsadm en cyberark
Error: N/A
Ocurrencia: N/A
Flag: N/A
máquina 1 pbmdebddst05
máquina 2 PBMDEBDDST06
cc 1214717460
NOmbres Diaz Gomez, Pablo Andres
usuario red pabdiaz'),
('17788251','2020-06-18 18:37','227','RESPUESTA / TRANSFERENCIA:  buen dia, se transfiere incidente para dar cierre del mismo.

'),
('17788603','2020-06-19 6:30','228','REPORTE: El colaborador se comunica indicando que la herramienta cyberark no me permite ingresar mi usuario esta bloqueado
Error: N/A
Flag: N/A
User: mgazzola'),
('17788603','2020-06-19 6:47','229','SOLUCION: Se realiza validación del usuario mgazzola el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
'),
('17792424','2020-06-19 15:47','230','REPORTE: El(la) colaborador(a) se comunica mira es que tengo un problema de bloqueo con algunas aplicaciones por ejemplo uso una aplicacion que se llama cyberark al cual no puedo acceder
Error: Authentication failure for User [mmcastro].

Nombre:Monica Milena Castro
Número de Identificación: 35254847
Correo electrónico: mmcastro@bancolombia.com.co
Teléfono: 3123557572'),
('17792424','2020-06-19 15:53','231','RESPUESTA / TRANSFERENCIA:  Adjunto el certificado e instructivo para que realicen la instalación y valides nuevamente. 
En caso de que se siga presentando el error ya sabemos con seguridad que de una vez se debe escalar el tema con el grupo administrador que se llama Administrativo Gestion Identidades CyberArk'),
('17793944','2020-06-26 12:44','232','REPORTE: Se presentan problemas con la autencación con el sistema NALDRP a la consola HMC utilizando el perfil de usuario QSECOFR.
Se ejecutó la opción de reconciliar y no funciona tampoco.

Cedula: 94396698
Usuario: woalzate
Celular: 318 2210216'),
('17793944','2020-06-26 17:24','233','SOLUCION: Se valida que la cuenta qsecofr en los servidores:
Nacional IP: 10.10.232.29
leasing_drp IP: 10.60.107.169
sufi_pco IP: 10.60.107.114
Se evidencia reconciliación exitosa adjunto evidencia '),
('17794599','2020-06-22 16:19','234','REPORTE:  Buenas tardes
Porfa su ayuda escalando al grupo “Administrativo Gestion Identidades CyberArk”.
El usuario nmhoyos tiene invonveniente con ciber ark, le sale error anexo caundo abre cuaquier maquina'),
('17794599','2020-06-22 19:19','235','SOLUCION: Se valida acceso a servidor “192.168.141.22” por medio de cyberark y se verifica conexión. Al revisar el error reportado se evidencia que el usuario no tiene alcance al Balanceador proxyrdp.bancolombia.corp lo cual le impide llegar hasta los servidores PSM y por ende no puede establecer la conexión.  Se cierra caso debido a que no se presenta ningún error en cyberArk.'),
('17794611','2020-06-22 16:18','236','REPORTE: Buenas tardes
Porfa su ayuda escalando al grupo "TS Funciones Corporativas Seguridad Evolution".
El usuario nmhoyos tiene invonveniente con ciber ark, le sale error anexo caundo abre cuaquier maquina que tienen asignadas'),
('17794611','2020-06-22 19:14','237','SOLUCION: Se valida acceso a servidor “192.168.141.22” por medio de cyberark y se verifica conexión. Al revisar el error reportado se evidencia que el usuario no tiene alcance al Balanceador proxyrdp.bancolombia.corp lo cual le impide llegar hasta los servidores PSM y por ende no puede establecer la conexión. Se cierra caso debido a que no se presenta ningún error en cyberArk.'),
('17784782','2020-06-18 10:06','238','REPORTE: El colaborador se comunica indicando que: por favor necesit oradican un incidente a cyberark no puedo logonearme y no tengo acceso a ningun ambiente
Error: no genera
Ocurrencia: hoy
Buen dia,
Solicitamos de su colaboración dándole ingreso al usuario USRTSECU para el ingreso a los servidores:
LBMDEBPINT02V - LBMDEBPINT03V'),
('17784782','2020-06-18 10:06','239','RESPUESTA / TRANSFERENCIA:  Buenos dias, se realizan pruebas de conciliación y se concilian la cuenta usrtsecu, se inicia sección y la sección se cierra, se valida con la cuenta usrtadmi en el servidor la cual no se cierra.

Por favor escalar a plataformas distribuidas para que la cuenta usrtsecu en los servidores tengan el menu correspondiente para que otorgue el acceso.

Se adjunta evidencias

Favor tenerlo presente y trasnferir el caso Se Brindó la siguiente solución:
El colaborador se comunica indicando que: por favor necesit oradican un incidente a cyberark no puedo logonearme y no tengo acceso a ningun ambiente

Se solicita mas informacion, para hacer el correcto escalamiento, pero el colaborador no retoma del chat, después de las 3 alertas

Tu número de caso es el 17784782 y queda en estado 5, te invitamos a comunicarte nuevamente con nosotros para ayudarte con tu necesidad registrando un nuevo Caso

Debido a que el sistema no detectó actividad en tu sesión de chat durante (3) minutos, esta sesión será finalizada. Te invitamos a que reportes tu necesidad de manera ágil y simple a través de MATEO a un clic, ingresando a https://usd/CAisd/pdmweb.exe'),
('17778142','2020-06-16 10:35','240','REPORTE: El colaborador informa que no le esta permitiendo descargar algunos servidores
Error: N/A
Ocurrencia: Hoy
Afecta: 1 persona
Flag: N/A'),
('17778142','2020-06-16 10:54','241','SOLUCION: Se le manda el certificado y el manual de como debe instalar el certificado que le hace falta pero debido a que no es un equipo banco si no externo y no se cuentas con credenciales administrativas ya se debe hacer cargo el area de sistema de la empresa

Servicenow no funciona por el momento por tal razon no se coloca el ID correspondiente.'),
('17796473','2020-06-23 11:08','242','REPORTE: solicito su amable colaboración con el error que me genera al intentar abrir la maquina AS400 DDS, desde CYBER ARK, "PSMGenericClientWrapper error: Failed to get dispatcher parameters...." adjunto pantalla para validación
se recocilió en varias oportunidades pero el error persiste'),
('17796473','2020-06-23 11:33','243','SOLUCION: Buen dia, se configura parametro de logueo para el servidor, se realizan pruebas de conexión quedando en correcto funcionamiento.'),
('17800956','2020-06-24 6:36','244','REPORTE: El colaborador requiere validar el aplicativo de CyberArk tiene falla aplicacion no le permite el ingreso a los servidores desde la aplicación y en citrix todo se encuentra bien
hace una semana formatearon mi PC y ya no puedo entrar con esa herramienta, entonces me dijeron q se tenía q xrear un ticket desde Mateo
Nombre:Francisco Javier Flores Tejeida
Correo electrónico: fjflores@bancolombia.com.co
Teléfono: 9207973
Número de Identificación: 1012603'),
('17800956','2020-06-24 7:23','245','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('17801002','2020-06-24 7:04','246','REPORTE:  Me muestra esta falla, aunq mi pc fue formateada hace unas semanas y no me era posible entrar desde la aplicación a los servidores, ahora ni me deja entrar a la aplicación. Tampoco puedo entrar por aca a nngun servidor unix , no me acepta mis claves del tocken
Error: se adjunta errores
DATOS:
Nombre:Francisco Javier Flores Tejeida
Correo electrónico: fjflores@bancolombia.com.co
Teléfono: 9207973
Número de Identificación: 1012603'),
('17801002','2020-06-24 7:22','247','SOLUCION: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.

Se adjunta imagen al caso.'),
('17783345','2020-06-25 8:56','248','REPORTE: PAM-Privileged Account Management_NU0002001
Incidente: El usuario manifiesta que no le deja acceder al aplicativo le genera error
Error: se ha producido un error de autenticacion
Afecta:1 usuario'),
('17783345','2020-06-25 8:59','249','SOLUCION: se le indica que se le va a escalar un reporte pero indica que no por que necesita una solucion para ya si algo se comunicara de nuevo '),
('17811000','2020-06-25 15:44','250','REPORTE: SBMDEBBD27 | 10.8.36.126 | Se presenta problemas para el ingreso por Cyberark con los usuarios sqlservice y usrtsdba al servidor SBMDEBBD27, el cuál pertenece al clúster SSBMDEBPBD24-SBMDEBPBD25

Prioridad del Evento: Medio
Nombre el servidor: SBMDEBBD27
Clúster SBMDEBPBD24-SBMDEBPBD25

IP: 10.8.36.126
Servicio: N/A
Variable Alertada: Se presenta problemas para el ingreso por Cyberark con los usuarios sqlservice y usrtsdba al servidor SBMDEBBD27, el cuál pertenece al clúster SSBMDEBPBD24-SBMDEBPBD25

Estado de la variable: Se presenta problemas para el ingreso por Cyberark con los usuarios sqlservice y usrtsdba al servidor SBMDEBBD27, el cuál pertenece al clúster SSBMDEBPBD24-SBMDEBPBD25

Analista asignado: Juan Felipe Chavez
Avances: N/A
Notas: Se crea Incidente por petición de Juan Felipe Chavez'),
('17811000','2020-06-25 15:59','251','RESPUESTA / TRANSFERENCIA:  Buenas Tardes, se realiza la validación y el error es el siguiente:
El nombre del servidor ya no es el que esta registrado en CyberArk, se ingresa por IP y se verifica que el nombre es diferente al ingresado en la herramienta, se debe solicita la modificación del nombre por una OC, por la categoria Seguridad Corporativa.Mantenimiento de Cuentas en CyberArk.
O validar con los administradores de la Plataforma para que corrija el nombre en el servidor.
Adjunto evidencias.'),
('17811000','2020-06-30 8:02','252','RESPUESTA / TRANSFERENCIA:  Se realizan pruebas de conexión al servidor y son exitosas, por favor validar con los administradores de Cyberark'),
('17811000','2020-06-30 8:12','253','RESPUESTA / TRANSFERENCIA:  Buen día, se valida desde CyberArk y El nombre registrado del servidor es SBMDEBBD27 y el que registra ingresando al server es diferente (SBMDEBPBD25), esto se validó en conexión por IP, (Se adjunta la evidencia) se debe solicitar la modificación del nombre por una OC, por la categoria "Seguridad Corporativa.Mantenimiento de Cuentas en CyberArk."

O validar con los administradores de la Plataforma para que corrija el nombre en el servidor.

Adjunto evidencias.'),
('17813834','2020-06-26 10:16','254','REPORTE: Cuando intento iniciar un escritorio remoto a alguno de los accesos expuestos vía CyberArk, no es posible iniciar la sesión por problemas en los certificados de seguridad (se adjunta imagen), esto sucede con todos los accesos remotos. Pero esto no pasa cuando accedo por citrix a otros ambientes.

Muchas gracias por su colaboración.'),
('17813834','2020-06-26 10:54','255','RESPUESTA / TRANSFERENCIA: Buenos días,
Este error es conocido y fue entregado a la mesa de ayuda para su solución, por favor revisar en la documentación los descartes que se deben realizar.
Adicional se adjuntan los manuales.'),
('17813834','2020-06-30 9:13','256','RESPUESTA / TRANSFERENCIA: Buenos días,
Este error es conocido y fue entregado a la mesa de ayuda para su solución, por favor revisar en la documentación los descartes que se deben realizar.
Adicional se adjuntan los manuales.'),
('17813834','2020-06-30 9:24','257','RESPUESTA / TRANSFERENCIA:Buenos días,
Se realizan las validaciones correspondientes con el funcionario vía celular, quien manifiesta que no estaba instalando el certificado correcto, lo cual no va a solucionar el error de Certificado, se remite correo al buzón de funcionario y se le dan las instrucciones necesarias para ejecutar el proceso en su equipo que maneja S.O Windows 10, por favor asegurar que se realice el procedimiento según el manual publicado en la siguiente ruta: http://vsc.bancolombia.corp/vsa/ciberseginfo/Paginas/Migraci%C3%B3n-a-CyberArk.aspx

Gracias.'),
('17813332','2020-06-26 12:28','258','REPORTE: El colaborador requiere un favor, parece q tengo problemas con mi usuario de red toda la seana he tenido el mismo problema al parecer a esta hora se me bloquea el usuario o no se que pasa Authentication failure for User [fjflores]. este msj me parece en ciberark y no mepuedo loguear a ningun servidor

Nombre:Francisco Javier Flores
Correo electrónico: fjflores@bancolombia.com.co
Teléfono: 4423315510
Número de Identificación: 1012603

1. Nombre del servidor: todos los servidores aix, linux
2. IP del servidor:
3. Usuario: fjflores
4. Cuenta con la se trata de conecta al servidor: fjflores
5. Celular: +1 52 3315510'),
('17813332','2020-06-26 12:54','259','RESPUESTA / TRANSFERENCIA:  Se procede a validar las imagenes de los errores de la falla y no hay adjuntos, se procede a validar si es tema de bloqueos y no es se adjuntan imagenes, favor validar con el usuario datos del servidor, numero de celular y adjuntar imagenes del error.

Me puede confirmar el favor los siguientes datos y enviar la información al siguiente correo: centrodemonitoreo@evolution-it.com.co
1. Nombre del servidor:
2. IP del servidor:
3. Usuario:
4. Cuenta con la se trata de conecta al servidor:
5. Celular:'),
('17813332','2020-06-27 9:00','260','RESPUESTA / TRANSFERENCIA: Se la falla persiste por favor  NOS CONFIRMA POR ESTE CORREO'),
('17813332','2020-06-27 9:43','261','RESPUESTA / TRANSFERENCIA:  Se procede a verificar los adjuntos, se observa que es tema de certificado, se adjunta archivo Word (17813332 instalación de Certificado) favor hacer pruebas, si la falla persiste adjuntar imágenes.'),
('17812928','2020-06-26 8:23','262','REPORTE: Descripción   
Caída masiva servidor producción https://sbmdebprp22v.bancolombia.corp/ y https://aaejecv11.bancolombia.corp/

. Para ver el detalle de la solicitud acceda a través de los siguientes vínculos:

Gestión Mesa GIOTI: 1508548
Gestión de Notificaciones: 1508547'),
('17812928','2020-06-27 11:20','263','SOLUCION: Buenas tardes,
Se reiniciaron los servicios de Automation Anywhere en el servidor sbmdebprp22v y se solicitaron pruebas a los usuarios. Manifiestan normalidad en el servicio.
'),
('17818969','2020-06-29 11:14','264','REPORTE: no puede establecerse una conexion a escritorio remoto por que no puede autenticarse en el equipo remoto
Analista: Lukas Mauricio Gómez de la Pava, trabajando en la solución'),
('17818969','2020-06-29 12:39','265','RESPUESTA / TRANSFERENCIA:  Buenas tardes, se realizaron las diferentes pruebas desde CyberArk y se confirmo que la afectación se generó por el vencimiento de la CRL, por lo cual se escala al área PKIi para su revisión y diagnóstico del inconveniente presentado.
Gracias.'),
('17819045','2020-06-29 12:55','266','REPORTE: Por favor, confírmanos tu número de teléfono para contactarte en caso de ser necesario +1-484-502-9209
Al tratar de conectarme por SSH a los ambientes SAP desde CyberArk recibo un mensaje de error que dice "A revocation check could not be performed for the certificate". Esto sucede desde hoy (29 de Junio), ayer funcionaba correctamente.'),
('17819045','2020-06-29 13:01','267','RESPUESTA / TRANSFERENCIA:  Buenas tardes, se realizaron las diferentes pruebas desde CyberArk y se confirmo que la afectación se generó por el vencimiento de la CRL, por lo cual se escala al área PKI para su revisión, diagnóstico y solución del inconveniente presentado.

Gracias.'),
('17824136','2020-06-30 15:57','268','REPORTE: El colaborador indica que lo que sucede es lo siguiente, por medio de cyberark intentaron realizar la conexión al root a los servidores del hub de información pero esta no funciono. los servidores a conectarse fueron pbmdebpfhu01 - 10.8.19.90, pbmdebpfhu02 - 10.8.19.91. con el usuario oracle entonces para que por favor asigne el incidente al grupo TS Funciones Corporativas Seguridad Evolution
Error: no genera

NOTA: los servidores a conectarse fueron pbmdebpfhu01 - 10.8.19.90, pbmdebpfhu02 - 10.8.19.91

Usaurio: lcamargo
Empresa: Seti Bogota
Camargo Morantes, Luis Freddy
cc. 79654745
Cel :_3117460923'),
('17824136','2020-06-30 16:17','269','RESPUESTA / TRANSFERENCIA:   Buenas Tardes, se realiza la validación la solicitud de contraseña (Request),se esta solicitando en fechas que no corresponde,
se debe validar manual adjunto, la cuenta root no realiza logueo por ssh, se debe solicitar visualizar de la contraseña y acceder desde otro usuario ejemplo oracle.
para los permisos de la cuenta se debe solicitar a los administradores de AIX. la cuenta esta custodiada y conciliada de manera correcta.')

--tabla documentacion incidente

	INSERT INTO documentacion_incidente(id_incidente,fecha,id,documentacion)
	VALUES 
	('17908226','2020-07-22 9:44','1','REPORTE: Se presenta lentitud en todos los accesos a las bases de datos, dado que al ejecutar un script o incluso al abrir solo la conexión, se observa lentitud.
'),
('17908226','2020-07-23 13:00','2','SOLUCIÓN: Se realiza el cierre del incidente y se va a trabajar en el problema 17916053, se aplican las siguiente solución temporal: se deben conectar a través de la cadena de conexión, mientras se define el acceso a la carpeta compartida para el paso de archivos.'),
('17951078','2020-08-02 7:04','3','REPORTE: El colaborador indica Actualmente estoy tratando de ingresar por Cyberark, por la opción HMC a una sesión con el usuario QSECOFR de las maquinas MEDHA y MEDDR, y no están respondiendo con la ventana de confirmación que sale para aceptar o cancelar el ingreso; Se ha intentado la opción de reconciliar pero no sido satisfactorio el restablecimiento de la contraseña.

'),
('17951078','2020-08-02 10:12','4','RESPUESTA / TRANSFERENCIA:Se realiza validación de acceso por medio de CyberArk con la cuenta QSECOFR al módulo MyExtra_HMC a los servidores medha y meddr sin problema. El error se presenta cuando el usuario ingresa sus credenciales (JUDOSPIN) aparece mensaje de id de usuario o contraseña no válidos. Por favor su colaboración revisando los accesos en los servidores mencionados.
Escalar con el área encargada IBM myextra HMC.'),
('17951078','2020-08-03 11:15','5','RESPUESTA / TRANSFERENCIA:Según las notas anteriores, el ingeniero Lopez Garzon, Julian Andres es de nuestra área de CyberArk y con él se hizo la validación del caso y se llamó al ingeniero Ospina Gomez, Juan Diego se tomó acceso remoto para hacer las pruebas correspondientes en donde se llega a la conclusión que esta falla no hace parte del area de CyberArk por eso se pide el favor de "Escalar con el área encargada IBM myextra HMC."'),
('17951078','2020-08-05 18:59','6','RESPUESTA / CIERRE: Buen dia, se realizan pruebas de conexión con diferentes usuarios con la cuenta USRTOPER en el servidor Leasign y son exitosas, se realizan pruebas con el usuario en otro equipo y conecta correctamente, se solicita al usuario eliminar historial de Google Chrome y reiniciar el equipo, se realizan pruebas y son exitosas, se recomienda al usuario solicitar revisión del equipo banco ya que se percibe lentitud en el equipo lo cual puede estar ocasionando la falla.

La aplicación CyberArk se encuentra trabajando correctamente y no es la causante del error.'),
('17951078','2020-08-06 11:53','7','SOLUCIÓN Se realiza la verificación y se encuentra que el usuario qsecorf se encontraba desabilitado y se procede a crear un incidente para desbloquear el usuario, luego de desbloquear la cuenta procedemos a reconciliar la cuenta, la cual funciona perfectamente.
Se adjunta el manual de este conector, para que el usuario tenga en cuenta el funcionamiento del conector. Se debe tener en cuenta que el conector HMC funciona por tiempos los cuales una vez se abre no se debe manipular el conector hasta que solicite el idioma, una vez ingresa el idioma debe ingresar el usuario y contraseña personalizado y esperar que cyberark coloque el usuario qsecofr y su contraseña.'),
('17951244','2020-08-02 14:20','8','REPORTE: Incidente: el colaborador indica que no le permite el igreso (sbloper).
Aplicativo: CyberArk PAM
'),
('17951244','2020-08-02 14:28','9','SOLUCIÓN: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('17951291','2020-08-02 17:00','10','REPORTE:  el colaborador indica que no le permite el igreso, indica que genero un incidente 17951244 el dia del hoy por el mismo tema y que no le permite ingresar las credenciales. Usuario de red: sbloper
'),
('17951291','2020-08-02 17:07','11','SOLUCION:  Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación. 
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('17956362','2020-08-03 16:00','12','REPORTE: Cordial saludo, se realiza pruebas desde la plataforma de Cyberark hacia los datapowers productivos y no productivos y se evidencia que falla el ingreso de la sesión por SSH, además de que no permite tener abierta la sesión web y la sesión sh al mismo tiempo, se adjuntan las evidencias de cada uno de los datapowers para la revisión.
'),
('17956362','2020-08-05 15:47','13','SOLUCION: Se valida las pruebas que hizo el usuario en la máquina virtual nueva, donde los resultados de la prueba son exitosos, y se procede a verificar la causa raíz del error en la maquina antigua que utiliza el usuario.
El usuario encuentra que el idioma del teclado estaba en ENG ES, y él lo pone en ENG EN (Imagen adjunta), donde el cambio permite al usuario ingresar perfectamente.'),
('17961731','2020-08-04 15:33','14','REPORTE: Buenas tardes, presento problemas para acceder al aplicativo cyberark, usuario: jorlope, me podrian crear un incidente al grupo "TS Funciones Corporativas Seguridad Evolution" para que me puedan ayudar con el problema, muchas gracias!'),
('17961731','2020-08-05 20:10','15','RESPUESTA TRANSFERENCIA: Buen día Se realizan las validaciones correspondientes desde CyberArk mirando los adjuntos al caso, confirmando que la cuenta del funcionario (jorlope) no presenta bloqueos, favor validar con el usuario los siguientes datos y adjuntar pantallazo de la falla que esta apareciendo.
• Nombre del servidor destino que presenta error al intentar conectar:
• IP del servidor:
• Cuenta con el que ingresa al Servidor:
Nota: Adjuntar pantallazo de la falla.'),
('17958955','2020-08-04 9:49','16','RESPUESTA TRANSFERENCIA:  El colaborador indica por medio de chat: No se tiene ingreso a la máquina de NALDRPpor CYBERARK con los usuarios QSECOFR, NCXICLUR, USRTCERT, USRTIALL.
Error: N/A
usuario :jvsalaza'),
('17958955','2020-08-04 12:16','17','RESPUESTA TRANSFERENCIA:  Necesitamos ayuda revisando la cuenta conciliadora conexcaa en el servidor NALDRP ya que no estamos logrando reconciliar la cuentas custodiadas, y debe garantizarse que la cuenta tenga el mismo HASH y los permisos correspondintes.'),
('17958955','2020-08-04 18:18','18','SOLUCION: Detallar la solución aplicada:se reconcilian las cuentas luego de que con el apoyo de IBM se reiniciara el el servicio SSH  '),
('17967184','2020-08-05 15:00','19','REPORTE: El(la) colaborador(a) manifiesta que requiere el desbloqueo de la plataforma CYBERARK ya que no le permite el ingreso. Requiere de la colaboración lo mas pronto posible ya que los procesos que maneja en la GIOTI son demasiado críticos. Error: Autenticación fallida Flag: N/A
Usuario: dadperez
'),
('17967184','2020-08-05 15:05','20','SOLUCION: Se valida el usuario (dadperez) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.

Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('17967728','2020-08-05 15:56','21','REPORTE: El colaborador indica por chat: Incidente Falla ingreso a Leasing producción mediant e CiberArk, dispositivo Dspcom10, el error que me saca es el siguiente: PSMGenericClient error: DLL function Map TSDrives failed (0)
'),
('17967728','2020-08-05 19:45','22','SOLUCION:  Buen dia, se realizan pruebas de conexión con diferentes usuarios con la cuenta USRTOPER en el servidor Leasign y son exitosas, se realizan pruebas con el usuario en otro equipo y conecta correctamente, se solicita al usuario eliminar historial de Google Chrome y reiniciar el equipo, se realizan pruebas y son exitosas, se recomienda al usuario solicitar revisión del equipo banco ya que se percibe lentitud en el equipo lo cual puede estar ocasionando la falla.

La aplicación CyberArk se encuentra trabajando correctamente y no es la causante del error.'),
('17971046','2020-08-06 11:39','23','REPORTE: Por favor escalar incidente al área de acceso para que nos apoyen habilitando el usuario QSECOFR en la maquina MEDHA ya que desde Cyberark no estamos logrando reconciliarla.
'),
('17971046','2020-08-06 11:43','24','RESPUESTA TRANSFERENCIA: Buenas tardes,
escalar correctamente el incidente en la descripción se solicito escalar el caso al área de acceso, nosotros no hacemos desbloqueo de usuario'),
('17975328','2020-08-09 2:37','25','REPORTE: SBMDEBBD05 | 10.8.36.25 | Informa la analista que no tiene acceso al servidor.
'),
('17975328','2020-08-09 4:19','26','RESPUESTA TRANSFERENCIA:
Se realiza validación y se encuentra que el error no es CyberArk ya que se está cargando un perfil temporal con el usuario de conexión, se regresara el caso a la mesa de servicio con una posible solución para el administrador del sistema operativo lo valide.'),
('17977414','2020-08-10 15:05','27','REPORTE: El colaborador informa que esta intentando ingresar a la base de datos de Authentic alojada en CyberArk, pero a la hora de darle conectar no le permite
También informa que no le permite la conexión a la consola de linux y para win - scp de Authentic ya que sale el mismo error
Error: Escritorio remoto no se puede conectar
Servidor: https://pam.bancolombia.corp
Usuario ingreso: hsalazar
• IP del servidor: 10.8.61.102
• Cuenta con el que ingresa al Servidor: hsalazar'),
('17977414','2020-08-10 14:53','28','RESPUESTA TRANSFERENCIA: Buena tarde favor de confirmar los siguientes datos
• Nombre del servidor destino que presenta error al intentar conectar:
• IP del servidor:
• Cuenta con el que ingresa al Servidor:
• Cuenta de usuario Bancolombia para contactarlo por Teams:'),
('17977414','2020-08-10 15:42','29','SOLUCION: Se procede a contactar al usuario por Teams hsalazar@bancolombia.com se le explica el proceso de refrescar la consola de linux y para win - scp de Authentic, se hacen pruebas es funcional.'),
('17974372','2020-08-11 10:36','30','REPORTE: Desde cyberark no encuentro acceso a los servidores SBMDEBGD11 y SBMDEBGD12
'),
('17974372','2020-08-11 10:43','31','RESPUESTA TRANSFERENCIA: Se realizan las validaciones de acuerdo a la observación del caso y no están relacionados los datos necesarios para poder entrar a verificar en CyberArk, es necesario relacionar los siguientes datos y así poder revisar en la plataforma.

• Nombre del servidor destino que presenta error al intentar conectar:
• IP del servidor:
• Cuenta con el que ingresa al Servidor:
• Numero de contacto del usuario:
• Cuenta de usuario Bancolombia para contactarlo por Teams:
Nota: Adjuntar imágenes de la falla que presenta.

Adicional si no cuenta con permisos sobre la cuenta, debe radicar un pedido por USM, Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk'),
('17974380','2020-08-07 10:46','32','REPORTE: Buen dia, Desde cyberark no encuentro acceso a los servidores SBMDEBGD01V y sbmdebg02v, 
• Cuenta con el que ingresa al Servidor: ejbetanc
• Celular de contacto del usuario: 3052230232
'),
('17974380','2020-08-07 11:09','33','REPUESTA TRANSFERENCIA: Buen Día favor de confirmar los siguientes datos:
• Nombre del servidor destino que presenta error al intentar conectar:
• IP del servidor:
• Cuenta con el que ingresa al Servidor:
• Celular de contacto del usuario:
• Cuenta de usuario Bancolombia para contactarlo por Teams:
Nota: Adjuntar imágenes de la falla que presenta.'),
('17974380','2020-08-11 11:42','34','REPUESTA TRANSFERENCIA: Buenos días,
Se realizan las validaciones correspondientes desde CyberArk y los servidores son arquitectura Windows y estos si están registrados y asociados a una cuenta de conexión en particular, por favor validar el acceso por cuenta de conexión.

Adjunto manual para conexión a Windows y evidencia de servidor registrado.
Gracias.'),
('17988545','2020-08-12 10:36','35','REPORTE: El día de ayer se presento bloqueo de la cuenta de usuario SVCATC01, por lo cual no pudo ser posible realizar reinicios de servicios en la plataforma Authentic. servidor Se valida con los compañeros de control de acceso y nos informa que el bloqueo se origino desde el servidor SBMDEBPCDD01, por lo cual es importante validar si en la plataforma CyberArk esta cuenta de servicio esta configurada con los parametros correctamente que corresponden a una cuenta de servicio , es decir, que no cambie contraseña, que no venza, etc
'),
('17988545','2020-08-12 10:55','36','RESPUESTA TRANSFERENCIA:Buen día,
De acuerdo a las observaciones en el comentario anterior, la cuenta mencionada en el caso hace referencia a Boveda, por la cual No esta conectada a CyberArk y no es posible ejecutarle procesos de reconciliación, por validar con el área encargada de accesos para que ejecuten este desbloqueo.
Gracias'),
('17988545','2020-08-13 14:55','37','RESPUESTA TRANSFERENCIA:Validando los comentarios anteriores por nuestra área, la cuenta de usuario SVCATC01, NO está conectada a CyberAk por este motivo no se puede realizar el proceso de desbloqueo en la plataforma por favor validar con el área encargada de accesos (AD) para que ejecuten este desbloqueo.'),
('17995482','2020-08-13 14:13','38','REPORTE: Buen día, el día de ayer al ingresar a CyberArk por la URL https://pam.apps.bancolombia.com el sistema esta cargando un usuario de red que no corresponde a quien se encuentra logueado en la maquina. Se adjunta video donde se evidencia el inconveniente presentado.
Usuario de red logueado en la maquina: nhiguita
Usuarios de red que le carga automaticamente en CyberArk: magrisal y juleon
'),
('17995482','2020-08-14 12:18','39','RESPUESTA SOLUCION: Se procede al registro del caso en el problema 17999658 con el cual se dará cierre al presente incidente con la solución temporal: Eliminar chache de navegador y volver a cargar la URL https://pam.apps.bancolombia.com, otra alternativa es abrir un nuevo navegador o pestaña en modo incognito.
Debido al error presentado se realizo el escalamiento al fabricante CyberArk con el número de caso 01077959.'),
('17996420','2020-08-13 14:22','40','REPORTE: Solicito su amable coloboracion con el desbloqueo de mi usuario fadiago en CyberArk, debido a que se me bloqueo por multiples intentos fallidos.
'),
('17996420','2020-08-13 14:32','41','SOLUCION: Se realiza validación y se encuentra el usuario Activo en CyberArk, se adjunta imagen. La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('17998977','2020-08-14 11:21','42','REPORTE:  Al tratar de acceder a cualquier base de datos productiva en la cuenta de apoyo al negocio a través de cyberark con SQLdeveloper se presenta el siguiente error y no permite realizar la conexión:
PSMGenericClientWrapper error: Failed to get dispatcher parameters (error: DDL function GetSessionPropertyBufferLength failed(0))

TRANSFERENCIA: Buenos días, De acuerdo al inconveniente mencionado en la observación del caso, agradecemos de su apoyo en anexar los datos necesarios para poder entrar a revisar desde CyberArk , sin estos datos no es posible revisar la falla.
Se recuerda el procedimiento establecido para escalamiento de Casos al grupo CyberArk con OC 2768018.
• Nombre del servidor destino que presenta error al intentar conectar
• IP del servidor
• Cuenta de conexión con la que ingresa al Servidor
• Celular de contacto del usuario.
• Anexar imagen del error'),
('17998977','2020-08-14 11:38','43','Se recuerda el procedimiento establecido para escalamiento de Casos al grupo CyberArk con OC 2768018.
Nombre del servidor destino que presenta error al intentar conectar
IP del servidor
Cuenta de conexión con la que ingresa al Servidor
Celular de contacto del usuario.
Anexar imagen del error'),
('17998977','2020-08-14 14:44','44','Se realiza un cambio en la conexión de la plataforma donde el error reportado se corrige.'),
('17999005','2020-08-18 8:10','45','REPORTE: e solicita por favor realizar el desbloqueo de la cuenta usrtsdba del dominio bancolombia-se.com'),
('17999005','2020-08-18 8:11','46','Buenos dias, por favor escalar el incidente al area encargada, CyberArk es el que necesita el desbloqueo del usuario, Nosotros no desbloqueamos usuarios de ambientes'),
('17999005','2020-08-18 11:22','47','Se realiza validación y se tiene alcance a la cuenta de manera correcta.'),
('18002622','2020-08-15 23:07','48','REPORTE: El colaborador indica que requiere una nueva clave de CyberArk
Error:N/A , Ocurrencia: N/A  , Flag: N/A
Usuario: jpparra

'),
('18002622','2020-08-16 7:51','49','RESPUESTA TRANSFERENCIA: Buen día favor de confirmar los siguientes datos.
• Nombre del servidor destino que presenta error al intentar conectar:
• Maquinas a las que se está conectando el usuario:
• IP del servidor:
• Cuenta con el que ingresa al Servidor:
• Celular de contacto del usuario:
• Cuenta de usuario Bancolombia para contactarlo por Teams:
Nota: Adjuntar, imágenes de la falla que presenta y por que el cambio de la clave en CyberArk 
 '),
('18002622','2020-08-16 12:09','50','SOLUCION:Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('18003588','2020-08-18 0:04','51','REPORTE: El usuario indica que cyberark le sale error
Error: Autenticacion fallido
ID: sbloper '),
('18003588','2020-08-18 0:22','52','SOLUCION: Se realiza validación del usuario sbloper el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('18004112','2020-08-18 8:49','53','REPORTE: Falla en el ingreso a la aplicación CyberArk para consultar Bases de Datos en Producción.
Al ingresar a la aplicación CyberArk para realizar consultas en Bases de Datos en Producción para Filiales del Exterior, no me está cargando ninguna base de datos en el escritorio principal para poder conectarme.
IP Servidores: PBMDEBPBFF01 - 10.8.19.8 - FINFPDB (Filiales del Exterior Producción)
10.8.3.127 (FINTRD_SCAN) - pbmdebpfin07 y pbmdebpfin08 (Banistmo 
Usuario con el que ingreso al aplicativo: MAGUERRE

'),
('18004112','2020-08-18 8:54','54','Buen día me puede hacer favor de confirmar los siguientes datos:
Nombre del servidor destino que presenta error al intentar conectar:
IP del servidor:
Cuenta con el que ingresa al Servidor:
Celular de contacto del usuario:
Nota: Adjuntar imágenes de la falla que presenta.'),
('18004112','2020-08-19 15:33','55','Se realizan las validaciones respectivas en CyberArk, confirmando que el funcionario no posee permisos ni perfiles asignados a su usuario "MAGUERRE", por lo cual no le registran los servidores. Se adjunta evidencias.
Para tener acceso a Cyberark debe solicitar un pedido en USM por el siguiente flujo.
Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk'),
('18015824','2020-08-20 8:46','56','REPORTE: Cuando intento ingresar al portal de CyberArk http://pam.bancolombia.corp, me está saliendo error en la autenticación, como si tuviera el usuario bloqueado en CyberArk.'),
('18015824','2020-08-20 9:05','57','Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('18016447','2020-08-20 10:44','58','REPORTE: TAC PDN en el aplicativo Cyber ark no permite iniciar sesion ya que indica que hay una sesion iniciada, cuando se conecto a tac inicialmente comienza a trabajar y se desconecto sin razon del aplicativo Cyber ark, al tratar de iniciar nuevamente muestra el mensaje que se adjunta, se intenta reconciliar y no permite.'),
('18016447','2020-08-20 10:57','59','RESPUESTA TRANSFERENCIA: Nombre del servidor destino que presenta error al intentar conectar:
IP del servidor:
Cuenta con el que ingresa al Servidor:
Celular de contacto del usuario:
Cuenta de usuario Bancolombia para contactarlo por Teams: seavarga@bancolombia.com.co
Nota: Adjuntar, imágenes de la falla que presenta desde CyberArk.'),
('18016447','2020-08-20 12:56','60','RESPUESTA TRANSFERENCIA: Se valida de nuevo el caso y faltan los datos que indicamos llenar favor confirmar los siguientes datos:
Nombre del servidor destino que presenta error al intentar conectar:
IP del servidor:
Cuenta con el que ingresa al Servidor:
Celular de contacto del usuario:
Cuenta de usuario Bancolombia para contactarlo por Teams: seavarga@bancolombia.com.co
Nota: Adjuntar, imágenes de la falla que presenta desde CyberArk.'),
('18016447','2020-08-21 12:13','61','RESPUESTA TRANSFERENCIA: En la imagen se identifica que solo puede ingresar un usuario al aplicativo TAC por favor validar con los administradores de la herramienta puesto que no es una falla de CyberArk ya que solamente se establece la conexión mas no otorga permisos en la herramienta. '),
('18016938','2020-08-21 11:22','62','REPORTE: Tengo problemas con CyberArk para conectarme por ssh los servidores teniendo la opción de redirección de X11.
Esta característica funcionaba previamente con Password Safe, pero luego de la migración a CyberArk no ha funcionado.
'),
('18016938','2020-08-21 11:27','63','RESPUESTA TRANSFERENCIA: Buen día favor confirmar los siguientes datos:
Nombre del servidor destino que presenta error al intentar conectar:
IP del servidor:
Cuenta con el que ingresa al Servidor:
Celular de contacto del usuario:
Cuenta de usuario Bancolombia Teams: mcuastuz@bancolombia.com.co
Nota: Adjuntar, imágenes de la falla que presenta desde CyberArk.'),
('18016401','2020-08-20 9:49','64','REPORTE: Tan amable nos colaboran desbloqueando la cuenta CNXIPCYB en el directorio activo de producción, favor escalar el incidente al grupo "Administrativo Seguridad Accesos Plataformas Windows y Otras"

RESPUESTA: Gestion de Accesos Bloqueo en AD.'),
('18016401','2020-08-20 9:49','65','REPORTE: Tan amable nos colaboran desbloqueando la cuenta CNXIPCYB en el directorio activo de producción, favor escalar el incidente al grupo "Administrativo Seguridad Accesos Plataformas Windows y Otras"

RESPUESTA: Gestion de Accesos Bloqueo en AD.'),
('18018335','2020-08-20 14:22','66','REPORTE: Bna tarde Favor escalar el incidente al grupo de CyberArk . Se presenta inconvenientes a tratar de ingresar a TAC produccion por esta herramienta . usuarios con el inconveniete DANIGRIS -. adjunto imagen del error '),
('18018335','2020-08-20 14:35','67','Se realizan las validaciones de acuerdo a las observaciones relacionadas al caso y no es posible identificar la falla, es necesario relacionar los siguientes datos para poder revisar en CyberArk.

Nombre del servidor destino que presenta error al intentar conectar:
IP del servidor:
Cuenta de conexión con la que ingresa al Servidor:
Celular de contacto del usuario:
Cuenta de usuario Bancolombia'),
('18018335','2020-08-21 12:13','68','En la imagen se identifica que solo puede ingresar un usuario al aplicativo TAC por favor validar con los administradores de la herramienta puesto que no es una falla de CyberArk ya que solamente se establece la conexión mas no otorga permisos en la herramienta.'),
('18024848','2020-08-21 17:40','69','REPROTE: Lo que paso es hice una transferencia de unos medios para un fix utilizando Winscp, y esa app se quedo reconectando multiples veces despues de finalizada la transmision. Eso genero que se me bloqueara CyberArk, ya tengo desbloqueado el TOKEN, pero sigo sin poder ingresar a CiberArk.'),
('18024848','2020-08-21 17:43','70','Se valida el usuario (fadiago) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que cyberark permite 5 intentos
fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('18025843','2020-08-22 10:05','71','EPROTE: El usuario indica en el chat:por favor me ayudas tambien con CyberArk, tambien me aparece bloqueado.
Usuario:spajaro '),
('18025843','2020-08-22 10:11','72','Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.

La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.

Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('18027208','2020-08-24 8:54','73','REPORTE: Se reporta afectación en las ILO de los siguientes componentes físicos ubicados en el datacenter de NIQUIA.
10.8.147.84 - COB_NIQUIA1
10.8.147.85 - COB_NIQUIA2
10.8.147.86 - Vault DR
'),
('18027208','2020-08-28 16:57','74','se cierra incidente y se genera la OC 2841716 para la solución del mismo a través del caso soporte con HP'),
('18027331','2020-08-24 9:01','75','REPORTE: Incidente: Se me bloqueo el acceso a servidores por CiberArk
Error: Usuario bloqueado.
Usuario: jfnavas'),
('18027331','2020-08-24 9:03','76','Se valida el usuario (jfnavas) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('18028966','2020-08-24 11:12','77','REPORTE: Buenos Días, hace días se actualizaron los VIOS del cajon 3, sin embargo solo el VIOS pbmdebpvio304 no permite accederse desde CiberArk, por lo que requiero ayuda para recuperar el acceso a este servidor desde CiberArk.'),
('18028966','2020-08-24 12:54','78','Se realiza el cambio de la contraseña del usuario padmin, y se verifica la cuenta teniendo resultados exitosos, se verifica con el usuario el ingreso a la maquina, donde la cuenta permite el ingreso al servidor. '),
('18034217','2020-08-25 10:21','79','REPORTE: El(la) colaborador(a) indica que La conexion mediante ciberark con el usuario usrtucdb no es posible, incluso luego de reconciliar el Password, cuando se abre por developer, no llena el campo de la contraseña, cuando se intenta conectar mediante sqlplus version 11 y 19, se abre el prompt pero se cierra inmediatamente.
Usuario: jupzulua '),
('18034217','2020-08-25 10:31','80','Buen dia, el servidor debe estar encendido para que CyberArk realice el logueo correspondiente, se debe escalar al admon del servidor para que valide que se encuentre encendido.'),
('18034217','2020-08-27 7:54','81','Nuevamente desde CyberArk, se hacen pruebas de conexión y alcance a la BD y no tenemos respuesta (Adjunto evidencias), se debe validar alcance con Firewall y nube donde se encuentren registrados los segmentos de red de Cyberark.'),
('18035409','2020-08-25 12:24','82','REPORTE: No acceso a servidores CYBERARK
En la actualidad no podemos conectarnos a ningun servidore de AWS de la plataforma: BCO-P-WIN-BC-AWS que estan en CYBERARK al intentar conectarnos indica que no tiene el acceso remoto habilitado, adjunto esta el mensaje de error y detalles de la conexión.'),
('18035409','2020-08-25 15:13','83','Desde el área de CyberArk se valida la falla y no es parte de nosotros, se hacen pruebas con el usuario en otra maquina por Teams con otra VPN y es funcional se hacen pruebas con la VPN del usuario se percibe que es tema de permisos por favor escalar el caso al área encargada de configurar los permisos necesarios para poder llegar al proxy.'),
('18036338','2020-08-25 14:26','84','REPORTE:  El colaborador se comunica e informa que presenta bloqueo de usuario en cyberark, se retiro bloqueo en RSA pero la falla persiste
usuario: spajaro '),
('18036338','2020-08-25 14:40','85','Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('18032742','2020-08-27 7:30','86','REPORTE: se solicita la revision de los parametros del usuario SEAVARGA con base en el usuario de referencia JESCARDO en el aplicativo STERLING produccion ya que este es requerido para atender pedidos en el stand by de la siguiente semana, se han generado varios casos sin solucion, el ultimo caso 18020754 se indica generar incidente para repisar contraseña con el area de control de accesos windows (18022857 ), luego del reset de la contraseña se valida y el problema continua.'),
('18032742','2020-08-27 8:00','87','Buen dia, los permisos en el aplicativo sterling se deben otorgar por el administrador de la aplicación, CyberArk no otorga permisos en el aplicativo, se validan perfiles de los usuarios y los dos tienen los mismos perfiles documento adjunto. '),
('18048386','2020-08-27 18:18','88','REPORTE: El colaborador indica que Te comentaba que tengo bloqueo en cyberark no se si es mi usuario o el token
Error El error al intentar dar clic en el boton Windows: Authentication failure for User [efescoba].'),
('18048386','2020-08-27 18:32','89','Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('18045174','2020-08-27 23:52','90','REPORTE: El Colaborador indica que no puede iniciar sesión en As/400 sufipro
Error: El perfil del usuario "usrtiall" no puede iniciar sesión
Afecta: 1 
Usuario."usrtiall"'),
('18045174','2020-08-28 3:54','91','Se realiza la verificación de la cuenta reconciliadora Conexcaa desde cyberark donde se observa el error adjunto en el caso, Se verifica esta cuenta puesto que las cuentas usrtiall y qsecofr dependen de la cuenta reconciliadora para poder reconciliar la cuenta, , es necesario validar que la cuenta conexcaa se encuentre en buen estado, y que el hash de la contraseña se encuentre igual a la de cyberark.

'),
('18045174','2020-08-28 18:35','92','Buen día, el error se nos esta presentando con la cuenta conciliadora de cyberark conexcaa la cual desde cyberark no se puede verificar, se solicita validar el error adjunto y si la clave que tiene la cuenta concuerda con la de la cuenta conciliadora, por favor escalar al área de (Disponibilidad servicios integrales iSeries IBM).'),
('18058904','2020-08-31 15:03','93','REPORTE: Colaborador indica que tiene fallas con cyberark debido a que no le permite conectarse a la base de datos'),
('18058904','2020-08-31 15:19','94','Se realizan las validaciones de acuerdo a las observaciones del caso y se confirma que no hay respuestas a las DB desde CyberArk, se anexa evidencias, por favor validar que las maquinas si se encuentren encendidas.'),
('18058904','2020-08-31 15:42','95','Como se menciona en el comentario Anterior el inconveniente no es en CyberArk, las BD están apagadas, por favor validar con el área encargada para que las habiliten, se anexa evidencia que no hay alcancen desde CyberArk.'),
('18059752','2020-08-31 16:19','96','REPORTE:  El colaborador indica que no le permite ingresar a cyberark porque le genera error.
Usuario: yjunco '),
('18059752','2020-08-31 16:24','97','Se valida el usuario (yjunco) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('18064864','2020-09-01 15:05','98','REPORTE: Incidente: El colaborador indica que estoy tratando de ingresar a un servidor por cyberark y no me deja
Error N/A
Equipo N/A'),
('18064864','2020-09-01 15:05','99','SOLUCIÓN: Se cancela incidente debido a que no se recibe respuesta por parte del colaborador a las alertas enviadas
Tu numero de incidente es el 18064864 y queda en estado cancelado'),
('18066075','2020-09-01 17:40','100','REPORTE: Falla en CyberArk - No cargan las sesiones Se queda en un loop de tres ciclos y luego se detiene sin conectar al destino deseado,
Comprobado para varias plataformas (Tokenizacion - Modulo Administrativo - Merchant Portal, - etc).'),
('18066075','2020-09-01 22:52','101','SOLUCIÓN: se realiza moficiación en PSM Aws, se corrige error del navegador, se realizan pruebas de acceso documento adjunto quedando funcional.'),
('18066403','2020-09-01 19:18','102','REPORTE:  tengo una novedad ingresando al RDP por CiberArk, el acceso a CiberARK está bien, cuando le doy connect el descarga un DRP, lo ejecuto y después me aparece la imagen que te adjunto, no abre el programa pgadmin para ejecutar las sentencias para las bases de datos postgresql.

Nombre del servidor destino que presenta error al intentar conectar: nu0026001-medios-de-pago-transversal-pdn-clusteraurora.cluster-ch4mwk6xffcj.us-east-1.rds.amazonaws.com
-IP del servidor: 10.103.95.86
-Cuenta con el que ingresa al Servidor: alezapat'),
('18066403','2020-09-01 19:42','103','SOLUCIÓN: Informamos que actualmente se presenta un inconveniente con el acceso a BD Postg en AWS, se está trabajando con el caso padre IM-18066075 para solventar la conexión mediante el navegador chrome, la configuración se ajusto para poder conectar a los servidores desde Niquia sin problemas.
Gracias.'),
('18045174','2020-08-27 23:52','104','REPORTE:  El Colaborador indica que no puede iniciar sesión en As/400 sufipro
Error: El perfil del usuario "usrtiall" no puede iniciar sesión
Afecta: 1 Usuario."usrtiall"
Usuario: usrtiall (genérico)
IP: 10.60.107.114
cuenta conciliadora: conexcaa '),
('18045174','2020-08-28 3:54','105','RESPUESTA / TRANSFERENCIA: Por favor validar con accesos iseries la cuenta conexcaa ya que esta permite reconciliar la cuentas usrtiall y qsecofr desde cyberark. '),
('18045174','2020-08-28 7:16','106','RESPUESTA / TRANSFERENCIA: Buen dia, se valida con el personal de Gioti y se encuentra en los servidores el usuario conexcaa, deshabilitado, para tener control desde cyberark este usuario debe estar habilitado y con los permisos correspondiente de la cuenta conciliadora.'),
('18045174','2020-09-02 9:22','107','SOLUCIÓN: Se realiza la verificación y reconciliacion de la cuenta encontrando que la cuenta conexcaa estaba desactivada en el servidor y esto no permitia reconciliar la cuenta usrtiall, se realiza la activación de la cuenta con la ayuda del administrador del servidor. Se realiza la prueba con el usuario donde dice que la cuenta funciona.'),
('18071608','2020-09-02 17:35','108','REPORTE: Cuando intento ingresar al portal de CyberArk http://pam.bancolombia.corp, me está saliendo error en la autenticación, como si tuviera el usuario bloqueado en CyberArk.

Authentication failure for User [juanaran].'),
('18071608','2020-09-02 17:40','109','SOLUCIÓN: Se valida el usuario en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('18071594','2020-09-02 17:38','110','REPORTE: Estamos presentando inconvenientes para acceder al servidor SBMDEBPPAM03V - 10.60.5.84 ubicado en Calle 100, debido a un cambio que se realizó, fue reiniciado el servidor, y este no volvió a permitir la conexión RDP, se requiere apoyo por parte de IBM para tomar control RDP del servidor.'),
('18071594','2020-09-09 15:58','111','SOLUCIÓN: se procede a cerrar el incidente, ya que se logro el acceso al servidor.   
'),
('18071659','2020-09-03 7:22','112','REPORTE: Resulta que estoy teniendo problemas para ingresar a unos servidores Formo parte del equipo de NAC Y al intentar ingresar por CyberArk y no me da
Son todos los servidores de NAC de usrtnac'),
('18071659','2020-09-03 7:37','113','SOLUCIÓN: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18073915','2020-09-03 10:56','114','REPORTE: Colaborador se comunica indicando que se presenta inconvenientes con la aplicacion gaia ya que no permite la creacion de usuario'),
('18073915','2020-09-03 11:07','115','RESPUESTA / TRANSFERENCIA: Se valida el caso y se observa desde el área de CyberArk esta aplicación Gaia, no es administrada por nosotros, por favor revisar a quien se le debe asignar el caso.
  '),
('18074394','2020-09-03 11:46','116','REPORTE: Buen día, Se valida el caso y se adjuntan nuevas imágenes en la que observamos una falta de permisos a la cuenta en los servidores se debe escalar el caso a accesos plataformas iseries.
 '),
('18074394','2020-09-03 12:06','117','RESPUESTA / TRANSFERENCIA: Buen día, Se valida el caso y se adjuntan nuevas imágenes en la que observamos una falta de permisos a la cuenta en los servidores se debe escalar el caso a accesos plataformas iseries.
  
'),
('18074394','2020-09-07 17:23','118','RESPUESTA / TRANSFERENCIA: Se realiza el ingreso a Myextra con el usuario usrwdcb con un dispositivo diferente y se observa (Adjunto) el ingreso correcto al aplicativo, por favor validar el dispositivo del usuario para descartar un posible bloqueo.
Por otra parte, es necesario validar con accesos a plataformas la cuenta usrtoper, puesto que en Cyberark no permite reconciliar porque no tiene permisos 
 '),
('18074394','2020-09-10 17:38','119','RESPUESTA / TRANSFERENCIA: Se realiza el ingreso a Myextra con el usuario usrwdcb con un dispositivo diferente y se observa (Adjunto) el ingreso correcto al aplicativo, por favor validar el dispositivo del usuario para descartar un posible bloqueo.
Por otra parte, es necesario validar con accesos a plataformas la cuenta usrtoper, puesto que en Cyberark no permite reconciliar porque no tiene permisos 
 '),
('18074408','2020-09-03 11:48','120','REPORTE: Se realiza pruebas desde la plataforma de Cyberark hacia los datapowers productivos y no productivos y se evidencia que falla el ingreso de la sesión por SSH, además de que no permite tener abierta la sesión web y la sesión sh al mismo tiempo, se adjuntan las evidencias de cada uno de los datapowers para la revisión.'),
('18074408','2020-09-03 12:16','121','SOLUCIÓN: Buen día nos pueden hacer el favor de confirmar los siguientes datos.

• Nombre del servidor destino que presenta error al intentar conectar:
• IP del servidor:
• Cuenta con el que ingresa al Servidor:
• Celular de contacto del usuario:
• Cuenta de usuario Bancolombia para contactarlo por Teams:
Nota: Adjuntar las imágenes completas en la que nos indican de cada uno de los datapowers que presentan la falla.   
'),
('18034217','2020-08-25 10:21','122','REPORTE: El(la) colaborador(a) indica que La conexion mediante ciberark con el usuario usrtucdb no es posible, incluso luego de reconciliar el Password, cuando se abre por developer, no llena el campo de la contraseña, cuando se intenta conectar mediante sqlplus version 11 y 19, se abre el prompt pero se cierra inmediatamente
Error: Se adjunta
Usuario: jupzulua
Servidor AWS: aw0818001-cte-traceqdb-qa.c5cmkfla8jqh.us-east-1.rds.amazonaws.com
IP destino: 10.104.35.26
Puerto: 50000
Segmentos:
AWS: 10.72.136.0/25
Onpremise: 10.8.146.208/28
Calle 100 10.60.5.80/28 '),
('18034217','2020-08-25 10:31','123','RESPUESTA / TRANSFERENCIA: Buen dia, el servidor debe estar encendido para que CyberArk realice el logueo correspondiente, se debe escalar al admon del servidor para que valide que se encuentre encendido.
Adjuntamos evidencias.'),
('18034217','2020-08-27 7:54','124','RESPUESTA / TRANSFERENCIA:  Nuevamente desde CyberArk, se hacen pruebas de conexión y alcance a la BD y no tenemos respuesta (Adjunto evidencias), se debe validar alcance con Firewall y nube donde se encuentren registrados los segmentos de red de Cyberark.
Gracias'),
('18034217','2020-09-03 14:54','125','RESPUESTA / TRANSFERENCIA: De acuerdo a la solicitud, se anexan los datos correspondientes a los segmentos de red que se manejan para CyberArk, esta BD esta atada a AWS, por lo cual se debe garantizar que los datos que tenemos registrados en CyberArk y que relacionamos en el archivo adjunto sean los correctos para que desde CyberArk se pueda establecer la conexión.
Segmentos:
AWS: 10.72.136.0/25
Onpremise: 10.8.146.208/28
Calle 100 10.60.5.80/28'),
('18076565','2020-09-03 16:33','126','REPORTE: El colaborador se comunica e indica que No puede conectarse a cyberark
Error: autenticacion fallida para usuario jhvillad'),
('18076565','2020-09-03 16:41','127','SOLUCIÓN: Detallar la solución aplicada: Se valida el usuario (jhvillad) en la aplicación CyberArk y se encuentra bloqueado.
Se realiza respectivo desbloqueo de usuario. Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.

Si utiliza un cliente como Mobaxtrem modificar que este no guarde la contraseña.'),
('18077863','2020-09-04 8:38','128','REPORTE: Colaborador se comunica e indica que no puede conectarse a cyberark, no le acepta las credenciales
Error: Credenciales inválidas
Usuario: jhvillad'),
('18077863','2020-09-04 8:49','129','SOLUCIÓN: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18078166','2020-09-04 9:15','130','REPORTE: El colaborador Indica que cyberark no le permite el ingreso
Usuario: Ugil'),
('18078166','2020-09-04 9:26','131','SOLUCIÓN: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18080674','2020-09-04 14:28','132','REPORTE: El colaborador se comunica indicando que tengo bloqueado el acceso a ciberark
Error: Authentication failure for user
User: slarrea'),
('18080674','2020-09-04 14:43','133','RESPUESTA / TRANSFERENCIA: Se valida el usuario en la aplicación CyberArk y NO se encuentra bloqueado.
Recuerde que Cyberark permite 5 intentos fallidos de contraseña, validar que el usuario de red y token no se encuentren bloqueados.
Gracias'),
('18089219','2020-09-07 17:14','134','REPORTE: Buenas Tardes, ayer se actualizaron los VIOS del cajon 13, sin embargo solo el VIOS pbmdebpvio1301 no permite accederse desde CiberArk, por lo que requiero ayuda para recuperar el acceso a este servidor desde CiberArk.
pbmdebpvio1301 - 10.8.3.75
Usuario: padmin
'),
('18089219','2020-09-07 18:24','135','SOLUCIÓN: Se realiza cambio de contraseña del usuario a nivel del servidor y se procede a verificar la cuenta desde CyberArk , donde el usuario realiza el ingreso correctamente.   
'),
('18094339','2020-09-08 16:41','136','REPORTE: Se presenta error al momento conectar a base de datos
Error conexión a Base de Datos de AFC por la herramienta CYBERARK - AFCPDB'),
('18094339','2020-09-08 17:36','137','SOLUCIÓN: Se valida el conector se hacen pruebas es funcional se contacta a la usuaria por Teams se le indica hacer pruebas saliendo de CyberArk e ingresando de nuevo en el cual se debe de dar click en refrescar, se ingresa a la BD es funcional, usuaria autoriza el cierre del caso.'),
('18100260','2020-09-09 17:28','138','REPORTE: Indica que cuando intenta ingresar a cyberArk, leaparece Authentication failure user
Usuario: jfnavas'),
('18100260','2020-09-09 17:39','139','SOLUCIÓN: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.

Se adjunta imagen al caso.'),
('18100531','2020-09-09 19:01','140','REPORTE: Colaborador indica por chat: Authentication failure for User [fjflores]. para acceder en Cyberarck'),
('18100531','2020-09-09 19:09','141','SOLUCIÓN: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18100583','2020-09-09 20:33','142','REPORTE: El proyecto migracion a creditlens requiere que se realice registro de la maquina EC2 del grupo de autoescalemiento debido a que se perdió el acceso a CyberArk de la máquina anterior en el ambiente de produccion.
los datos de la instancia EC2 son:
Owner: 434874701684
IP: 10.72.234.90 '),
('18100583','2020-09-09 21:04','143','SOLUCIÓN: Se realiza el registro de la maquina 10.72.234.90 con el nombre SBWPCLS-2UPGU58 en la cuenta CNXIPPWA donde tambien se elimina la maquina 10.72.232.4 con el nombre SBWPCLS-D7QM19I. Se comprueba el ingreso con el usuario dondes expresa resultados satisfactorios'),
('18074729','2020-09-04 7:49','144','REPORTE: El colaborador se comunica e indica que no puede ingresar a servidores aws cyberark ya que al abrir las ventanas de conexión se queda e indica que no reconoce el servidor
Error: status:Failure - Test failed: IO Error: unknown host soecified - Flag: N/A
Equipo: Bases de datos: TRACEQDB y TRACEDDB
Usuario con el que se conecta desde Cyberark: usrtucdb, Para ambas bases de datos'),
('18074729','2020-09-04 9:08','145','RESPUESTA / TRANSFERENCIA: Se realiza la verificación del caso, encontrando que Cyberark no llega a las base de datos, se procede a realizar un telnet desde los componentes de Cyberark y se observa que no es posible llegar. Por ello es necesario que validen que los datos (archivos adjuntos) que se encuentran registrados en Cyberark sean los correctos para que cyberark pueda llegar, en caso de que la información este correcta, por favor validar que la base de datos se encuentre disponible'),
('18074729','2020-09-10 9:06','146','SOLUCION: Se realiza las pruebas con el usuario y no se logra replicar el error.'),
('18102377','2020-09-10 11:01','147','REPORTE: Solicito por favor escalar el incidente al grupo "TS Funciones Corporativas Seguridad Evolution" para que por favor me permitan el ingreso por la herramienta CYBERARK a la cuenta WDIEALGUT de la maquina WASDRP, pues en este momento no me permite el mismo y se requiere para una actividad de continuidad el dia de hoy, para lo cual debo alinear todo el tema de usuarios.'),
('18102377','2020-09-10 15:41','148','SOLUCIÓN: Buen dia, se realiza validación se cambia template para servidor WASDRP que ingrese con TLS 1.2, Se realizan pruebas de conexión quedando operativo.
Se adjunta evidencia.'),
('18105359','2020-09-10 17:30','149','REPORTE: Colaborador se comunica e indica que no puede conectarse a cyberark, no le acepta las credenciales
Error: Credenciales inválidas
Usuario: jhvillad'),
('18105359','2020-09-10 17:40','150','SOLUCIÓN: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18105459','2020-09-10 17:59','151','REPORTE: Colaborador se comunica e indica que no puede conectarse a cyberark, no le acepta las credenciales
Error: Credenciales inválidas
Usuario: jhvillad'),
('18105459','2020-09-10 18:09','152','SOLUCIÓN: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18105463','2020-09-10 18:05','153','REPORTE: colaboradora se comunica informando que en el momento no le permite el ingreso a ciberark le genera
Error: autenticacion fallida
usuario: juabad '),
('18105463','2020-09-10 18:20','154','SOLUCIÓN: Se realiza validación y se encuentra la usuaria bloqueada en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18109383','2020-09-11 15:42','155','REPORTE: colaborador Indica que el usuario en cyberark se encuentra bloqueado.
Usuario: jhvillad  '),
('18109383','2020-09-11 15:50','156','SOLUCIÓN: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18109458','2020-09-11 16:01','157','REPORTE: El colaborador indica que me esperas porfa pruebo si no me bloqueo cyberark tambien si me bloqueo esa tambien
Usuario: maalchav'),
('18109458','2020-09-11 16:09','158','SOLUCIÓN: Se realiza validación y se encuentra la usuaria bloqueada en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18109485','2020-09-11 16:06','159','REPORTE: El colaborador Indica que el usuario en cyberark se encuentra bloqueado
Usuario: jhvillad'),
('18109485','2020-09-11 16:16','160','SOLUCIÓN:Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18109610','2020-09-11 16:36','161','REPORTE: El colaborador Indica que el usuario en cyberark se encuentra bloqueado
Usuario: jhvillad'),
('18109610','2020-09-11 16:53','162','SOLUCIÓN: Se realiza validación y se encuentra el usuario bloqueado en CyberArk se realiza activación.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se este guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.
Se adjunta imagen al caso.'),
('18114445','2020-06-14 14:16','163','REPORTE: Buenos dias, tengo problemas para ingresar a cyberark. el error me dice que hay error de autenticacion , adjunto imagen. Por favor ayudarme con la solucion para el ingreso. Muchas gracias
Usuario: caaalvar'),
('18114445','2020-06-14 14:28','164','SOLUCIÓN: Se realiza validación del usuario caaalvar el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('18118985','2020-09-15 10:42','165','REPORTE: Tengo problemas para iniciar la sesión de SufiPro desde la aplicación CyberArk, esta generando un error al cargar la sesion. Se anexa el error  Usuario: CARANDGI
Address: 10.9.2.14
Server Name: Sufi_pro
'),
('18118985','2020-09-15 11:49','166','SOLUCIÓN: Se realiza el desbloqueo del usuario PSM Shadow user, en el servidor PSM de CyberArk y se realiza pruebas con el usuario, donde el usuario nos da el aval para cerrar el caso.'),
('18126660','2020-09-16 15:30','167','REPORTE: El colaborador indica que me ayudas a crear el incidentr y lo asignamos a TS Funciones Corporativas Seguridad Evolution para reportar un problema en una aplicacion es en cyberark no conecta.
Usuario: harojas'),
('18126660','2020-09-17 16:07','168','SOLUCIÓN: Se realiza la modificación en CyberArk, debido que el usuario se encontraba ocupado no era posible comprobar que el cambio que se realizó corrigiera el incidente reportado, se realizan las pruebas y el usuario nos confirma que podemos realizar el cierre del caso.'),
('18136156','2020-09-18 14:46','169','REPORTE: Actualmente se presenta inconvenientes para acceder a la base de datos de Monitoreo de la aplicación Authentic a través de Cyberark.
Servidor: SBBOGBBD02ST
Service name: MAUTHPDB
host name: 10.60.184.197

Servidor: SBMDEBBD02ST
Service name: MAUTHPDB
host name: 10.8.5.197'),
('18136156','2020-09-18 16:03','170','SOLUCIÓN: Se realiza validación del usuario ypatino el cual no se encuentra bloqueado en CyberArk, se realiza validación y se conciliación las cuentas, se realiza pruebas de acceso desde CyberArk satisfactoriamente.'),
('18136732','2020-09-18 15:43','171','REPORTE: Hace poco me quitaron los grupos de la VPN, lo cuál ya se logró resolver el incidente volviendolos a asignar más sin embargo al momento de conectarme a CYBERARK no logro ver ninguna base de datos a la cuales yo tenia acceso antes, solicito por favor me ayuden con el inconveniento, ya que trabajo para el área de valores atendiendo incidentes y es muy importante tener acceso a estas bases de datos
'),
('18136732','2020-09-18 16:17','172','RESPUESTA / TRANSFERENCIA: Se realiza validación y se evidencia que el usuario no cuenta con grupos asociados en PriveArk, debe realizar la solicitud por USM o validarlo con Tatiana Marcela Blandon

Flujo de usm
Inicio | Administración de Identidades y Accesos | Solicitud Acceso a CyberArk'),
('18139208','2020-09-21 7:14','173','REPORTE: El colaborador indica que no le permite el acceso a la aplicacion, se esta generando error de autenticacion
Usuario: mdlozano'),
('18139208','2020-09-21 7:27','174','SOLUCIÓN: Se realiza validación del usuario mdlozano el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('18140412','2020-09-21 9:41','175','REPORTE: El colaborador indica que presenta inconvenientes para acceder a las bases de datos de Hipotecario a través de CyberArk. le genera un error al tratar de conectarse con el servidor
Error: CyberArk No le permite el ingreso
Usuario: mpaguir '),
('18140412','2020-09-21 11:17','176','SOLUCIÓN: Se realiza llamada al usuario para validar el error, el usuario no informa que no se puede conectar a las bases de datos de Hipotecario e informa que el error se le presenta con la cuanta de conexión usrtdllo, ip svr 10.8.16.98, se realiza validación y se evidencia perdida del conector al momento de realizar la conexión, se realiza la modificación pertinente y se realiza prueba de conexión con el usuario satisfactoriamente.'),
('18140994','2020-09-21 10:26','177','REPORTE: el colaborador Indica que el usuario en cyberark se encuentra bloqueado
Usuario: jhvillad'),
('18140994','2020-09-21 10:46','178','SOLUCIÓN: Se realiza validación del usuario jhvillad el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk.'),
('18143704','2020-09-21 15:41','179','REPORTE: colaborador se comunica indicando por chat que El viernes formatearon mi laptop , y ahora no puedo abrir sesiones a servidores desde cyberark
svr de conexion: pbmdebpvio1302 / pbmdebpbdm06
IP del servidor: 10.8.3.76 / 10.8.16.123
Cuenta con el que ingresa al Servidor: padmin
Nota : Informa que son con cualquier servidor aix , linux, que se presenta la falla'),
('18143704','2020-09-21 16:08','180','SOLUCIÓN: Se procede a validar el caso y la imagen que adjunta se observa que es falta de certificado, se llama al usuario Flores Tejeida, Francisco Javier por Teams se le explican los pasos para la instalación desde la página http://vsc.bancolombia.corp/vsa/ciberseginfo/Paginas/Migraci%C3%B3n-a-CyberArk.aspx Se hacen pruebas es funcional, se le pide autorización al usuario para cerrar el caso y el autoriza el cierre.'),
('18146234','2020-09-22 11:16','181','REPORTE: El usuario indica que no puede ingresar a CyberArk ya que no le tome las credenciales. El colaborador indica que pudo ingresar el dia de hoy a las 10 am 
usuario de red: rmonsalv'),
('18146234','2020-09-22 11:26','182','SOLUCIÓN: Se realiza validación del usuario rmonsalv el cual se encuentra bloqueado en CyberArk se realiza activación, por favor realizar pruebas de conexión, se adjunta evidencias.
La herramienta cuenta con 5 intentos fallidos del acceso, por favor validar que no tenga el token bloqueado lo cual bloquea el usuario.
Si maneja aplicaciones como mobaxterm por favor validar que no se esté guardando la contraseña en el aplicativo el cual bloquea el usuario en CyberArk'),
('18147223','2020-09-22 13:35','183','REPORTE: El colaborador se comunica indicando que tengo problemas con mi acceso a conexión de servidores, pero ya dentro del CIBERARK, me parece un problema de certificado'),
('18147223','2020-09-22 13:40','184','SOLUCIÓN: Tu número de caso es el 18147223 y queda en estado Cancelado, te invitamos a comunicarte nuevamente con nosotros para ayudarte con tu necesidad registrando un nuevo Caso.'),
('18150477','2020-09-23 9:27','185','REPORTE: Incidente: El(la) colaborador(a) se comunica indicando me colaboras generando un incidente ya que no tenemos acceso a las consolas de datastage y asignar a este grupo "TS Funciones Corporativas  Seguridad Evolution". no esta dejando ingresar con el user DSADM
Error: aparece le error server refused to start a shell/command
Usuario: DSADM
ambiente produccion,
maquina afectada PBMDEBPDST12
IP: 10.8.16.103
y la maquina PBMDEBPDST09
IP: 10.8.16.104
Nosotros somos los administradores de datastage ese es el producto que administramos y no tenemos acceso a las maquinas en el momento

Nombre:Pablo Diaz
Número de Identificación: 1214717460
Correo electrónico: pabdiaz@bancolombia.com
Teléfono: 3153636625
'),
('18150477','2020-09-23 9:49','186','RESPUESTA / TRANSFERENCIA: Se realiza validación y se está presentado el siguiente error al conectar
“El servidor no aceptó la solicitud para iniciar un shell; consulte el registro del servidor para obtener más información”
se debe escalar al administrador de la plataforma AIX para su validación, se adjunta evidencia.')

--tabla oc

INSERT INTO oc (id_area,id,id_estado,id_prioridad,fecha_inicio, fecha_fin,responsable,afectados,descripcion)
	VALUES 
	('1','2801729','3','4','2020-07-31 17:04','2020-08-03 9:35','olserran','	Cardeno Cano, Claudia Patricia	','Se requiere incluir el siguiente servidor a Cyberark para realizar el acceso a este
Nombre servidor (Endpoint): aw1294-portaldcc-cer-id.csdkmgtfpmdd.us-east-1.rds.amazonaws.com
BD: pdcycqdb
Ambiente: Certificación'),
('1','2801730','3','4','2020-07-31 17:04','2020-08-03 9:06','olserran','	Cardeno Cano, Claudia Patricia','Se requiere incluir el siguiente servidor a Cyberark para realizar el acceso a este
Nombre servidor (Endpoint): aw1294-portaldcc-pdn-id.cxhifzzcfvrk.us-east-1.rds.amazonaws.com
BD: pdcycpdb
Ambiente: Producción'),
('1','2801695','3','4','2020-07-31 17:05','2020-08-03 9:29','olserran','Cardeno Cano, Claudia Patricia','Se requiere incluir el siguiente servidor de desarrollo a Cyberark para realiar el acceso a este
Nombre host (Endpoint): aw1294-portaldcc-dev-id.clz5ohluuj8u.us-east-1.rds.amazonaws.com
BD: pdcycddb
Ambiente: Desarrollo'),
('4','2781891','3','4','2020-08-05 14:10','2020-08-05 14:34','olserran','	Alzate Gomez, Dennis Andrea	','Tarea: 7500001  Necesidad: Se solicita autorización de ingreso al COB NIQUIA ZONA BLANCA para realizar modificación en las conexiones en el rack AE48, la actividad consiste en intercambiar el cable de uno de los puertos del Portchannel con el de la Interface ILO de cada servidor, de esta forma los puertos del Portchannel tendrán conexiones a dos switches diferentes, Adicional al cambio físico es necesario reconfigurar los puertos. Se realizará modificación al cierre de cableado de comunicaciones según el adjunto.

Beneficio:Contar con alta disponibilidad en la conexión de datos ya que ambas conexiones están a un solo switch'),
('1','2807784','3','4','2020-08-03 8:36','2020-08-03 9:47','olserran','Diaz Gomez, Pablo Andres','Como parte de la entrega del usuario DSADM a Boveda, se realizo la creacion del user CNXSPIAP en los servidores de Datastage desarrollo pbmdebddst06 pbmdebddst05, la clave del usuario DSADM ya se entrego a boveda por ende necesitamos retirar de CyberArk la cuenta DSADM.
Cualquier duda Pablo Diaz 3153636625'),
('1','2802315','3','4','2020-08-03 9:00','2020-08-03 10:49','olserran','	Cadavid Castro, Santiago','Por favor dar de baja las siguientes maquinas en RAC, se solicitaron con la OC 2593631, para realizar unas pruebas de migración del catalogo RMAN, pero el proyecto se va a implementar en Linux y no AIX por lo que ya no son requeridas.

pbmdebpbrm01 / pbmdebpbrm02

Saludos,'),
('1','2808017','5','4','2020-08-03 9:18','2020-08-03 11:17','olserran','Grisales Montoya, Maria Angelica','Se solicita ingresar el siguiente servidor Productivo en Cyberark Servidor: Sbcldpsdbs06 / Orion-produccion-sqldatabase-01
Base de Datos: Orion'),
('1','2797973','3','4','2020-08-03 10:19','2020-08-03 14:36','olserran','	Naranjo Arias, Santiago','Ciberseguridad). Adicionar servidor en la herramienta PAM.

Codigo AW : AW1167001

Nombre: LBMDEBQBM01V
IP : Asignadas bajo la OC 2795857
Sistema Operativo: Oracle Linux'),
('1','2807136','3','4','2020-08-03 10:33','2020-08-03 11:09','olserran','	Naranjo Arias, Santiago','Cordial Saludo,
Se requiere ingresar los Servidores LBMDEBPBDB01V - 10.8.34.162 LBMDEBPBDB02V 10.8.34.163 a CyberArk'),
('1','2794529','3','4','2020-08-03 10:58','2020-08-03 17:38','olserran','Jaramillo Franco, Claudia Milena','Se requiere aprovisionamiento virtual de un servidor en el dominio ATMBancolombia con las siguientes caracteristicas:

Dominio: ATMBancolombia
Sistema operativo: Windows Server 2016,
Procesador de 4 cores
RAM 16 GB
Disco C:\ 100 GB por estándar y D:\ 100 GB

Nombre: SBMDEBPVPR01V
VLAN 423
Centro de Costos: C103500130'),
('1','2808999','3','2','2020-08-03 11:05','2020-08-03 15:07','olserran','Rendon Chalarca, Diego Alejandro','Se requiere adicionar una maquina Linux RedHat a CiberArk, dado que anteriormente estaba en CiberArk, pero ya no se puede acceder por esta herramienta.

los datos de la maquina:
linea_base_rhel76 - 10.8.87.160


El grupo de perfil al que se le debe mostrar la maquina es: grptladmin'),
('1','2795786','3','2','2020-08-03 11:06','2020-08-03 15:24','olserran','Kakitapelli, Pradeep Kumar','Descripcion: Aprovisionamiento Servidor Adiconal para reemplazar Servidor en Granja de Citrix.
Actividad: Se debera aprovisonar el servidor fisico ubicado en el enclosure EBMDEBBE43-1 bahia 7 tal como se relaciona a continuacion
Sistema Operativo : windows 2016 Datacenter edition
Rol : Instalar HyperV Rol
Server name: SBMDEBHVN57
IP LAN: 10.8.32.19 - La cuel fue asignada por el area de Telecomunicaciones de Bancolombia
Disco C : 150 GB
Disco D : 150 GB
Instalar linea Base
Instalar Parches
Instalar Vulenerabilidades'),
('1','2809030','3','4','2020-08-03 11:12','2020-08-03 11:17','olserran','Martinez Suarez, Liza Janet','Creación bóveda Inter2
Se solicita crear una bóveda (BCO-P-BV-APP-INTER2) para custodiar usuario privilegiado de la aplicación inter2, se debe mostrar al perfil de la sección accesos aplicaciones: grptbovapps'),
('1','2809036','3','4','2020-08-03 11:21','2020-08-03 14:25','olserran','Martinez Suarez, Liza Janet','Creación bóveda Inter2
Se solicita crear una bóveda (BCO-P-BV-APP-INTER2) para custodiar usuario privilegiado de la aplicación inter2, se debe mostrar al perfil de la sección accesos aplicaciones: grptbovapps'),
('1','2807462','3','4','2020-08-03 17:40','2020-08-04 8:41','olserran','	olserran','Buen dia, por favor crear perfil para el personal de evolution Area infraestructura AdminEvoInfra, crear safe para la cuenta cnxipadc y presentarlo al perfil para poder hacer uso de la cuenta por RDP.'),
('1','2799601','3','4','2020-08-04 11:32','2020-08-04 12:25','olserran','Vargas Navas, Sebastian Orlando','Buen día
Se solicita el aprovisionamiento de un servidor virtual, para reemplazar al servidor svmdebts01v por obsolesencia de SO.

Codigo AW: AW0633001

Nombre: SBMDEBPSIF01V
IP: 10.8.32.41 - Vlan 401 (Asignada por telcos)
RAM: 8GB
Cores: 4
Disco C: Linea base
Disco D: 80GB
SO: Windows Server 2016

Cualquier duda contactarme'),
('1','	2810530','3','4','2020-08-04 12:23','2020-08-04 14:35','olserran','Naranjo Arias, Santiago','Cordial Saludo,
Se requiere ingresar el Servidor LBMDEBDBDB01V- 10.8.163.40 a CyberArk'),
('1','2811000','3','4','2020-08-04 14:44','2020-08-05 9:41','olserran','	Gonzalez Alvarez, Jesus Alberto','Favor matricular la cuenta CNXNPCWP, la cual será utilizada para los servidores de Linux de CWP en AWS.

La cuenta se debe presentar al perfil "Cloud_grpplepp", jefe aprobador Andres Felipe Rivas.

Los servidores a los cuales se va a ingresar son:
10.103.62.249
10.103.62.222'),
('1','2808919','3','4','2020-08-04 15:02','2020-08-04 16:52','olserran','	Marin Orrego, Carlos Eduardo','Buenas tardes.
Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBMDEBBD65 10.8.36.88 sharepoint Producción
SBMDEBBD66 10.8.36.89 sharepoint Producción'),
('1','2811256','3','4','2020-08-04 16:05','2020-08-04 16:53','olserran','	Lopez Parra, Diana','Se requiere apoyo para que a los perfiles de las personas de Administracion Plataformas se muestre las máquinas de Datatapower (ABMDEBDDTP02, ABMDEBQDTP02, ABMDEBPDTP03, ABMDEBPDTP04, ABMDEBPDTP05), tomar como referencia usuario dilparr:

Name
agallego
alarroy
alvelas
anfarist
aumoya
caaalvar
ceaherre
dadperez
daeduque
ehbermud
ejbetanc
ergil
evalbuen
gavrojas
jabuiles
jalba
jdvalenc
jemonsal
jhalmont
jholondo
jjsantam
joaossa
jsaez
juabad
jupmonto
lavellan
luamarti
mcuastuz
mgazzola
nsmonsal
omonsalv
sacramir
vcarranz
vhcardon
wfloaiza
Jecsepul
jnavarre'),
('1','2811572','3','4','2020-08-04 16:31','2020-08-04 17:23','olserran','Zuluaga, Juan Pablo','Se requiere el registro del servidor SBMDEBPBD66V de bases de datos que pertenece a las bases de datos de sharepoint, en cyberark para conexión a través de las cuentas sqlservice, cnxipsql y usrtsdba'),
('1','	2808710','3','4','2020-08-05 8:33','2020-08-05 11:52','olserran','Marin Orrego, Carlos Eduardo','Buenas tardes.
Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte
Servidor IP app Ambiente

SBMDEBPCHP01V 10.8.0.26 obs factoring produccion

NO LIBERAR IP'),
('1','2811108','3','4','2020-08-05 11:44','2020-08-05 14:36','olserran','Molina Moreno, Jeferson Yohan','por favor registrar la cuenta "cnxspiap" para los servidores "pbmdebdcas02", "pbmdebpihs04", "pbmdebpmgr02" y "pbmdebprec03" en la plataforma Cyberark con el perfil "grptpinteg".'),
('1','2811514','3','4','2020-08-05 11:45','2020-08-05 14:41','olserran','Diaz Gomez, Pablo Andres',' registrar la cuenta cnxspiap
para los servidores pbmdebpdst05, pbmdebpdst07, pbmdebpdst09, pbmdebpdst12 esta cuenta se le debe
presentar al perfil grptpinteg.'),
('1','2811772','3','4','2020-08-05 11:45','2020-08-05 17:23','olserran','	Salazar Restrepo, Carolina','buen dia por favor registrar la cuenta cnxspiap
para los servidores pbmdebqdst03 y pbmdebqdst04, esta cuenta se le debe presentar al perfil grptpinteg.

10.8.73.168 // pbmdebqdst03
10.8.73.167 // pbmdebqdst04'),
('1','2812575','3','4','2020-08-05 14:07','2020-08-05 17:44','olserran','Naranjo Garcia, Juan Gabriel','Se requiere cambiar el líder de los perfiles de administradores de Authentic en CyberArk: grptsadmin y grptsadmin_bd_IBM para que sea Omar John Rodriguez Cabarcas, ojrodrig.

Adicionalmente se requiere cambiar el nombre y la descripción de estos perfiles de la siguiente forma:
grptaadmin_bd_IBM: Administradores BD Authentic
grptaadmin: Administradores Aplicacion Authentic'),
('1','2813491','3','4','2020-08-05 16:34','2020-08-06 8:14','olserran','	Cifuentes Zuluaga, Jonathan','Se requiere el ingreso a la maquina:
Host: SBMDEBQBDS02V
IP: 10.8.72.166
Instance: SBMDEBQBDS02V\SEGHARDE

Dentro de los perfiles: grptBaseDatos_Banco y grptBaseDatos_TCS. Así mismo se debe gestionar que el acceso se pueda realizar con el usuario sqlservice al servidor Windows.'),
('1','2813195','3','4','2020-08-06 7:42','2020-08-06 8:57','olserran','	Naranjo Arias, Santiago','Cordial Saludo,

Se requiere ingresar el Servidor LBMDEBQBM01V - 10.8.72.49 CyberArk'),
('1','2814346','3','4','2020-08-06 14:42','2020-08-06 15:39','olserran','	Echavarria Areiza, John Anderson','Se solicita retirar el servidor SBMDEBWB6V con IP 10.8.150.91 de la plataforma Cyberark, esto debido a que el servidor fue dado de baja.'),
('4','2808979','3','4','2020-08-06 15:42','2020-08-07 17:12','cabarrig','Alzate Gomez, Dennis Andrea','Cierre de vulnerabilidades CyberArk- PSM2 - SXMDEBPPAM05V
Necesidad: Solución de vulnerabilidades servidores CyberArk para cumplimiento de lineamientos de seguridad

Riesgo: No realizar estas instalaciones quedarían expuestos los servidores a problemas de vulnerabilidades externas cómo ataques y programas maliciosos.

Solución: Realizar la instalación de los KB de Microsoft para re2r las vulnerabilidades

Impacto: No se genera impacto, se realizará reinicio en la ventana de mantenimiento y la operación será atendida por los otros dos nodos.'),
('4','2814207','3','4','2020-08-06 15:42','2020-08-07 10:32','cabarrig','	Alzate Gomez, Dennis Andrea','Cierre de vulnerabilidades CyberArk- PSM1 - SXMDEBPPAM04V

Necesidad: Solución de vulnerabilidades servidores CyberArk para cumplimiento de lineamientos de seguridad

Riesgo: No realizar estas instalaciones quedarían expuestos los servidores a problemas de vulnerabilidades externas cómo ataques y programas maliciosos.

Solución: Realizar la instalación de los KB de Microsoft para re2r las vulnerabilidades

Impacto: No se genera impacto, se realizará reinicio en la ventana de mantenimiento y la operación será atendida por los otros dos nodos.'),
('1','	2782243','3','4','2020-08-06 18:19','2020-08-10 8:04','olserran','	Vargas Navas, Sebastian Orlando','Buen día
Se requiere subir la versión del SO de RHEL 6.10 a RHEL 7.7 del servidor de base de datos de Murex para el ambiente Dev1, de esta forma cubrir la obsolesencia de SO sobre el servidor.

**El almacenamiento ya se ha solicitado con la OC: 2746227

Servidor (Base de Datos)
Nombre: SBMDEDBD10V
IP: 10.8.87.20
SO: OEL 7.7

Encargado de la actividad: IBM, Andres David Mejía'),
('1','2779146','3','4','2020-08-07 10:32','2020-08-10 9:26','olserran','Quintero Florez, Luis Eduardo','Buen dia
Se requiere 3 servidores fisicos windows con nombre...SBMDEBPRDG01 SBMDEBPRDG02 SBMDEBPRDG03
para un nuevo proyecto llamado relacionado con RDP de la direccion de Ciberseguridad'),
('1','2804028','3','4','2020-08-10 9:21','2020-08-10 9:35','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBPROTR01V 10.8.34.157 golf Producción'),
('1','2804256','3','4','2020-08-10 9:19','2020-08-10 9:33','olserran','	Marin Orrego, Carlos Eduardo	','Se procede con el retiro de los servidores Fisico que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Server Name Model Serial IP
EBMDEBBF48-2 C7000 SGH247PPSV 172.25.9.79'),
('1','2813343','3','4','2020-08-10 9:20','2020-08-10 9:36','olserran','	Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Servidor IP app Ambiente

SBMDEBTR05V 10.8.34.195 golf Producción'),
('1','2816069','3','4','2020-08-10 9:29','2020-08-10 14:04','olserran','	Valencia Mejia, Andres Felipe','
Se requiere ingresar a cyberark el acceso para los dba a las bases de datos de Bizagi go en la nube de AWS'),
('1','2807560','3','4','2020-08-10 10:01','2020-08-10 11:03','olserran','Osorio Tobon, Andres','Se solicita aprovisionar 3 máquinas virtuales para crecer el clúster de OpenShift Laboratorio 4.4 el cual está instalado en infraestructura IBM

estas tres máquinas se utilizaran para realizar la instalación del operador de Storge de OCP con una licencia de prueba, el costo de la infraestructura es asumido por plataformas centrales

NOTA: no se debe de asignar direccionamiento IP, debido a que se utilizaran las IP del Orquestador Vrealize donde se encuentra instalado el clúster actual

Cada una de las maquinas debe de tener asignado 16 VCP 32 GB de ram y 500 de almacenamiento para la aplicación de storage persistente'),
('5','	2782502','3','4','2020-08-10 15:59','2020-08-18 14:41','nzamudio','	Amezquita Rivera, Henry Mauricio','Realizar ejercicio de continuidad (DR) Cerrada, Servicios Panagon y Kofax
Activación:
-Escenario: Martes 18 de Agosto 07:30 am
-Retorno : Martes 18 de Agosto 05:30 pm'),
('1','2813506','3','4','2020-08-10 18:38','2020-08-11 8:15','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Servidor IP app Ambiente

SBMDEBBD07V - 10.8.36.191 IFRS Produccion'),
('1','2809878','3','4','2020-08-10 18:33','2020-08-11 8:22','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Ambiente Nombre servidor IP Aplicación Rol
Producción sbmdebwb6v 10.8.101.91 Encuenta - Eureka Aplicación'),
('1','2817884','3','4','2020-08-10 20:49','2020-08-12 14:44','olserran','Zapata Espinosa, Alexis Ernesto','Se requiere matricular a CiberArk la siguiente instancia de base de datos PostgreSQL para ingresar a ella 2nte Pgadmin4 y consola pgsql:

HOST: nu0026001-medios-de-pago-transversal-dev-clusteraurora.cluster-chmawzpfjyng.us-east-1.rds.amazonaws.com
IP: 10.104.79.8
Motor de base de datos: Aurora PostgreSQL
Nube: AWS RDS
Puerto:5432
Ambiente: Desarrollo'),
('1','2817834','5','4','2020-08-10 20:51','2020-08-11 16:12','olserran','Zapata Espinosa, Alexis Ernesto','Se requiere matricular a CiberArk la siguiente instancia de base de datos PostgreSQL para ingresar a ella 2nte Pgadmin4 y consola pgsql:

HOST: aw1315001-pago-sin-friccion-dev-clusteraurora.cluster-clz5ohluuj8u.us-east-1.rds.amazonaws.com
IP: 10.72.112.206
Motor de base de datos: Aurora PostgreSQL
Nube: AWS RDS
Puerto:5432
Ambiente: Desarrollo'),
('1','2817447','3','4','2020-08-10 22:51','2020-08-11 8:30','olserran','Ossa Duque, Jenny Marcela ','Ingreso a Cyberark Base de Datos SBMDEGBI02V\SOPORTEAPLICACOR'),
('1','2816815','3','4','2020-08-10 17:01','2020-08-10 17:39','olserran','Echavarria Areiza, John Anderson','Se solicita muy amablemente registrar nuevamente el servidor a continuación en CyberArk, al parecer este fue eliminado de la plataforma por error.

Nombre: SBMDEBPEWV01V
IP: 10.8.150.38
Ambiente: Producción

Se deben incluir las siguientes cuentas:
-cnxixsop'),
('4','2816997','3','4','2020-08-11 9:02','2020-08-11 14:57','cabarrig','	Alzate Gomez, Dennis Andrea','Cierre de vulnerabilidades CyberArk- CPM/PVWA - SXMDEBPPAM03V

Necesidad: Solución de vulnerabilidades servidores CyberArk para cumplimiento de lineamientos de seguridad

Riesgo: No realizar estas instalaciones quedarían expuestos los servidores a problemas de vulnerabilidades externas cómo ataques y programas maliciosos.

Solución: Realizar la instalación de los KB de Microsoft para re2r las vulnerabilidades

Impacto: No se genera impacto, se realizará reinicio en la ventana de mantenimiento y la operación será atendida por el otro nodo.'),
('1','2818009','5','4','2020-08-11 9:17','2020-08-11 10:41','olserran','Velasquez Atencio, Juan Carlos','Se solicita ingresar el siguiente servidor desarrollo en Cyberark Servidor: dms-corona-dev.apps.ambientesbc.lab
port:50100 Base de Datos: corona'),
('1','2816025','3','4','2020-08-11 14:25','2020-08-11 17:09','olserran','	Marin Orrego, Carlos Eduardo','(Analista Seguridad de TI) Eliminar la máquina en Beyond Trust.'),
('1','2818959','3','4','2020-08-11 16:51','2020-08-12 14:17','olserran','	Benjumea Varela, Victor Augusto','Cordial Saludo,

Se solicita ingresar el siguiente servidor Productivo en Cyberark con el usuario SQLSERVICE
Servidor: SBMDEBPBDU01V
IP: 10.8.149.230
Dominio: bancolombia.corp'),
('1','	2818626','5','4','2020-08-11 17:41','2020-08-12 9:39','olserran','Naranjo Arias, Santiago	','Cordial Saludo,
Se requiere ingresar el Servidor SBMDEBPBDU01V - 10.8.149.230'),
('1','2820305','3','4','2020-08-12 11:56','2020-08-12 12:38','olserran','	Sepulveda Marin, Maribet','Buenos días
En el adjunto entrego la actualización de novedades presentadas con la infraestructura NAC'),
('1','2820631','3','4','2020-08-12 15:08','2020-08-13 14:52','olserran','	Velasquez Atencio, Juan Carlos','Se solicita ingresar el siguiente servidor desarrollo en Cyberark Servidor: corona-rds-dev-rds.apps.ambientesbc.lab
port:50100 Base de Datos: corona'),
('1','2820961','3','4','2020-08-12 16:05','2020-08-13 8:58','olserran','	Rojas Blandon, Henry Adolfo','Registrar la nueva cuentas usrtauth en la aplicación CloudControl_WebApp
la contraseña de dicho usuario debe rotar periódicamente.'),
('1','2821139','3','4','2020-08-12 16:21','2020-08-12 17:36','olserran','	Pinzon Restrepo, Andres Felipe','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('1','2821121','3','4','2020-08-12 17:57','2020-08-13 8:00','olserran','	Salazar Restrepo, Carolina','buen dia por favor registrar la cuenta cnxspiap
para los servidores pbmdebqrec18- pbmdebqrec20 esta cuenta se le debe presentar al perfil grptpinteg.

10.8.73.209 // pbmdebqrec18
10.8.73.119 // pbmdebqrec20'),
('1','2804255','3','4','2020-08-13 9:50','2020-08-13 11:45','olserran','Marin Orrego, Carlos Eduardo	','Se procede con el retiro de los servidores Fisico que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Server Name Model Serial IP
EBMDEBBI34-3 C7000 2S1410PA91 10.8.53.9'),
('1','2821950','3','4','2020-08-13 9:55','2020-08-13 15:31','olserran','	Ramirez Giraldo, Jose Pablo	','buen dia para los siguientes SAFES se debe habilitar un OTP, para que despues de visualizar la clave esta se rote 1 hora despues.


Detalles de Safe: BCO-P-SRV-AS400-DANIGRIS
grptidanigris


Detalles de Safe: BCO-P-SRV-AS400-DIEALGUT
grptidiealgut


Detalles de Safe: BCO-P-SRV-AS400-LVILLA
grptilvilla


Detalles de Safe: BCO-P-SRV-AS400-SEAVARGA
grptiseavarga


Detalles de Safe: BCO-P-SRV-AS400-SJGUTIER
grptisjgutier'),
('1','2822061','3','4','2020-08-13 10:30','2020-08-13 11:57','olserran','	Echavarria Areiza, John Anderson','Se solicita por favor, agregar los siguientes servidores Linux a la plataforma Cyberark.

LBMDEBQINT02V 10.8.69.150
LBMDEBQINT03V 10.8.69.151'),
('1','2822108','3','4','2020-08-13 10:30','2020-08-13 12:11','olserran','Echavarria Areiza, John Anderson	','Se solicita por favor, agregar los siguientes servidores Linux a la plataforma Cyberark.

LBMDEBPINT01V 10.8.34.149
LBMDEBPINT02V 10.8.34.179'),
('1','2822190','3','4','2020-08-13 15:43','2020-08-14 8:31','olserran','	Echavarria Areiza, John Anderson','Se solicita por favor, agregar los siguientes servidores Linux a la plataforma Cyberark.

SBMDEQMUR36V 10.8.70.50
SBMDEQMUR37v 10.8.70.62
SBMDEQMUR38v 10.8.70.63
SBMDEQMUR40v 10.8.70.65
SBMDEQMUR41v 10.8.70.66
SBMDEQMUR42v 10.8.70.67
SBMDEQMUR43v 10.8.70.68
SBMDEQBD47V 10.8.70.69
SBMDEQBD48V 10.8.70.70
sbmdeqbd20v 10.8.75.116'),
('1','2822087','3','4','2020-08-13 15:43','2020-08-14 10:14','olserran','Saldarriaga Giraldo, Jairo David','Por favor registrar los siquientes servidores en ciber ark para el grupo de linux:

10.8.114.123 lbmdebpifw01
10.8.114.124 lbmdebpifw02
10.8.114.125 lbmdebpifw03
10.8.114.126 lbmdebpifw04
10.8.114.127 lbmdebpifw05
10.8.114.128 lbmdebpifw06
10.8.114.129 lbmdebpifw07
10.8.114.130 lbmdebpifw08
10.8.114.131 lbmdebpifw09
10.8.114.132 lbmdebpifm01v
10.8.114.133 lbmdebpifm02v
10.8.114.134 lbmdebpifm03v
10.8.114.135 lbmdebpifm04v
10.8.114.136 lbmdebpifm05v
10.8.114.137 lbmdebpifm06v'),
('1','	2822410','3','4','2020-08-14 14:14','2020-08-15 9:04','olserran','Piedrahita Londoño, Juan Jacobo','Por favor presentar el conector IBM Navigator for i para la cuenta QSECOFR CyberArk para las plataformas iSeries.'),
('1','2824620','3','4','2020-08-18 8:40','2020-08-18 10:11','olserran','	Gomez De la pava, Lukas Mauricio','Se requiere cambiar el aprobador en las solicitudes USM de Cyberark para los perfiles de Clave Dinamica (did):
grptdidhelp
grptdetectid

Actualmente está asociado a Jesus Navor (jnavor) y debe cambiar a Monica Maria Villa (monivill) como líder del área TyS Seguridad'),
('1','2825135','3','4','2020-08-18 10:33','2020-08-18 11:17','olserran','	Gonzalez Alvarez, Jesus Alberto	','Favor matricular la cuenta CNXIPSEP, la cual será utilizada para los servidores Windows de Antivirus onpremise.

Los servidores a los cuales se va a ingresar son:
SBMDEBSS03 - 10.8.54.38
SBMDEBSS04 - 10.8.54.39
SBMDEDSS05 - 10.8.33.15
SBMDEBCV05V - 10.8.45.55
SBMDEBCV06V - 10.8.45.56
SBMDEBCV13V - 10.8.45.5
SBMDEBSS03V - 10.8.54.37
SBMDEDSS04 - 10.8.33.14
SBMDEBPSSS01V - 10.8.33.9
SBMDEBPSSS02V - 10.8.33.10
SBMDEBPSSS03V - 10.8.33.11
SBMDEBPSSS04V - 172.25.0.199
SBMDEBPSSS05V - 172.25.64.36

Nota: Los servidores y la cuenta se deben presentar al perfil GRPPWEPP
El jefe aprobador es ANRIVAS - Andrés Felipe Rivas Gonzalez'),
('4','2793152','3','4','2020-08-18 8:31','2020-08-20 8:35','olserran','Alzate Gomez, Dennis Andrea',' Instalar certificado firmado en BAM y Boveda Niquia para establecer relación de confianza y continuar con la instalación de la Boveda Satellite por lo que es necesario realizar reinicio de la boveda principal

Beneficio: Continuar con la implemetación en Guatemala de los componentes de CyberARK

Impacto: Se realizará reinicio de la bóveda, se puede generar intermitencia a de 12:30 a 12:45 del medio día.'),
('1','2816026','3','4','2020-08-18 15:45','2020-08-18 15:52','olserran','	Marin Orrego, Carlos Eduardo	','Buenas tardes.
Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBBANBSE03v 10.5.134.14 switch producción'),
('1','2825864','3','4','2020-08-18 17:05','2020-08-19 9:44','olserran','	Cardeno Cano, Claudia Patricia','Buenos días,
Se requiere realizar la modificación del registro DNS en la conexiones establecidas en cyberark (sql developer y sqlplus), ya que al estar errado el DNS no se lleva a cabo de manera satisfactoria la conexión.

Nombre del servidor (Endpoint): aw1195001-auditoria-virtual-dev-id-oracle.clz5ohluuj8u.us-east-1.rds.amazonaws.com
DNS: auditoria-virtual-sg-dev-rds.apps.ambientesbc.com
BD: AUDVIDDB
Ambiente: Desarrollo
Motor de BD: Oracle'),
('1','2823290','3','4','2020-08-18 17:07','2020-08-18 17:12','olserran','	Bustillo Beltran, Ismael Jose','Aprovisionamiento Servicios Orquestados, solicitado para el usuario: ibustill. Para ver el detalle de la solicitud acceda a través del siguiente vínculo'),
('1','2825938','3','4','2020-08-18 17:05','2020-08-19 9:45','olserran','	Cardeno Cano, Claudia Patricia','Buenos días,
Se requiere realizar la modificación del registro DNS en la conexiones establecidas en cyberark (sql developer y sqlplus), ya que al estar errado el DNS no se lleva a cabo de manera satisfactoria la conexión.

Nombre del servidor (Endpoint): aw1195001-auditoria-virtual-cer-id.csdkmgtfpmdd.us-east-1.rds.amazonaws.com
DNS: auditoria-virtual-sg-cer-rds.apps.ambientesbc.com
BD: AUDVIQDB
Ambiente: Certificación
Motor de BD: Oracle'),
('1','2828981','3','4','2020-08-19 17:25','2020-08-20 8:23','olserran','	Cardeno Cano, Claudia Patricia','Se requiere incluir el siguiente servidor de desarrollo a Cyberark para realizar el acceso a este
Nombre host (Endpoint): nu0052001-codigos-enrutamiento-dev-id.chupuzogrp30.us-east-1.rds.amazonaws.com
BD: CODENDDB
Ambiente: Desarrollo
Motor de BD: PostgreSQL
DNS: codigos-enrutamiento-dev-rds.apps.ambientesbc.com'),
('5','2805248','3','4','2020-08-19 17:22','2020-08-19 19:36','nzamudio','	Fajardo Casas, Daniel Camilo','Realizar ejercicio de continuidad DR errado MQ Gateway

fecha de activación miercoles 19 de agosto 08:00 am
fecha de retorno miercoles 19 de agosto 05:30 pm

Máquinas involucradas:
Nodo 1 -> pbmdebpamg01 (10.8.16.236)


Impacto: No se presenta afectación de servicio ya que es un ejercicio 3'),
('4','2828698','3','4','2020-08-19 22:35','2020-08-20 12:16','juliandl',' 	Alzate Gomez, Dennis Andrea ','Por actividades de migración es necesario homologar los nuevos conectores de Oracle en los servidores On premises.

Beneficio: Garantizar que todos los componentes de la solución esten homologados en conectores para realizar las diferentes conexiones

Impacto:No se genera impacto, el reinicio de los componentes se realizará de manera escalonada y no genera afectación del servicio.'),
('1','2828660','3','4','2020-08-20 8:00','2020-08-20 8:37','olserran','Ossa Duque, Jenny Marcela	','Solicito amablemente sea ingresada la instancia SQL Server SBMDEQBI01v\soporteaplicacor a Cyberark , los datos de conexión son:
Ambiente: Certificación
Servidor: SBMDEQBI01v (10.8.128.15)
Instancia base de datos: SBMDEQBI01v\soporteaplicacor
Puerto: 62698
Motor: SQL Server
Muchas gracias.'),
('1','2829286','3','4','2020-08-20 9:57','2020-08-20 10:46','olserran','Naranjo Arias, Santiago','Se requiere acceso al servidor con IP 10.72.234.175 de AWS a traves de CyberArk

cuenta: CNXIPPWA'),
('1','2829335','3','4','2020-08-20 10:41','2020-08-20 11:07','olserran','	Londono Osorio, Anderson','Se solicita ingresar el siguiente servidor Productivo en Cyberark con el usuario SQLSERVICE.
Servidor: SBWPCLS-O72R8LS
IP: 10.72.234.175
Dominio: BANCOLOMBIA.CORP
PMO30897'),
('1','2829755','3','4','2020-08-20 11:02','2020-08-28 12:30','olserran','Gallego, John Carlos','Se requiere matricular a Cyber Ark la siguiente instancia de base de datos Aurora Postgres para ingresar a ella 2nte pgadmin4 y consola pgsql:

HOST: aw1384001-map-dev-clusteraurora.cluster-cmrxbejzr5ux.us-east-1.rds.amazonaws.com
IP: 10.104.123.199
Puerto: 5432
Motor de base de datos: Aurora Postgres
Nube: AWS RDS
Ambiente: Desarrollo'),
('1','2829937','5','4','2020-08-20 15:34','2020-08-21 16:02','olserran','	Molina Papamija, Yadimir','Se requiere registrar todos los servidores de linux y AIX en Cyberark para el perfil del usuario usrtbkup

Adjunto Listado Linux y AIX.'),
('1','2825545','3','4','2020-08-20 15:24','2020-08-20 16:27','olserran','	Marin Orrego, Carlos Eduardo','Buenas tardes.
Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

Sbmdebtr03v 10.8.34.194 golf Produccion'),
('1','2816034	','3','4','2020-08-20 17:35','2020-08-20 17:55','olserran','	Marin Orrego, Carlos Eduardo','Buenas tardes.
Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBMDEBWW03V – 172.25.192.39 transaccional produccion
SBMDEBWW10V – 172.25.192.40 transaccional produccion'),
('1','2821869','3','4','2020-08-21 14:58','2020-08-21 16:17','olserran','	Arango Ruiz, Cesar Octavio','Se requieren el aprovisionamiento de 2 maquinas en ambiente productivo de la DMZ para la actualización de la aplicación cornerstone en donde se encuentra con SO 2008 y se requiere pasar a 2016
Sistema Operativo: Windows Server 2016
Ram : 4 GB
Num de cores: 4 Core
Almacenamiento : Disco C: 100 GB - Disco D: 30 GB
Ambiente: Producción de la DMZ
Maquina 1: SBMDEPFTP01V
IP: 172.25.0.204

Maquina 2: SBMDEPFTP02V
IP: 172.25.0.205

Nota: Esta máquina se está solicitando para realizar actualización del Sistema Operativo el cual actualmente se encuentra en Windows Server 2008 de la DMZ, al momento de tener las nuevas maquinas y realizar la instalación de la Aplicación se enviara correo para solicitar darle de baja a las maquinas actuales.
- se realizo OC 2820440 para Homologar reglas de seguridad Cornerstone y agregar al dominio.

Nota:
la oc es para legalizar las maquinas porque la OC 2785770 fue cancelada por los tiempos y porque se debió solicitar permisos de propagacion de la VLAN y de permisos en FIREEWALL las maquinas ya se encuentran provisionadas porque no fueron retiradas de la OC anterior y se requiere terminar el aprovisionamiento de las maquinas y su respectiva legalización.'),
('1','2832101','3','4','2020-08-21 16:37','2020-08-21 16:58','olserran','	Cifuentes Zuluaga, Jonathan','Se requiere el ingreso a las maquinas:

Host1: SBMDEBPBDV03V
IP1: 10.8.225.133
Host2: SBMDEBPBDV04V
IP2: 10.8.225.134

Dentro de los perfiles: grptBaseDatos_Banco y grptBaseDatos_TCS. Así mismo se debe gestionar que el acceso se pueda realizar con el usuario sqlservice al servidor Windows.'),
('1','2832273','3','4','2020-08-21 16:38','2020-08-24 10:27','olserran','Londono Osorio, Anderson','Buen día se requiere adicionar el acceso de las bases de datos de la aplicación CreditLens.

*Adjunto documento detallado.'),
('1','2828187','3','4','2020-08-21 19:11','2020-08-24 8:18','olserran','	Marin Orrego, Carlos Eduardo	','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

hostname ip rol Produccion
prUSD02 10.8.126.25 Web
prUSD05 10.8.127.35 Web
prUSD06 10.8.127.37 Web
prUSD07 10.8.127.41 Web
prUSD08 10.8.127.41 Web
prUSD10 10.8.127.43 Web
prUSD12 10.8.127.35 Web
sbmdebmi02.old 10.8.41.155 Monitor
sbmdebmi03.old 10.8.41.156 Monitor
sbmdebmi04.old 10.8.41.157 Monitor
sbmdebmi05.old 10.8.41.158 Monitor
sbmdebmi06.old 10.8.41.159 Monitor
sbmdebmi07.old 10.8.41.160 Monitor
sbmdebmi08.old 10.8.41.161 Monitor
sbmdebmi12.old 10.8.41.163 Monitor
sbogdcmi13.old 10.60.41.128 Monito
sbogdcmi17.old 10.60.41.129 Monito
sbogdcmi31v.old 10.60.41.131 Monito
sbogdcmi32v.old 10.60.41.132 Monito
sbogdcmi33v.old 10.60.41.133 Monito
sbogdcmi34v.old 10.60.41.134 Monito
sbogdcmi35v.old 10.60.41.135 Monito
sbogdcmi36v.old 10.60.41.136'),
('1','2816060','3','4','2020-08-24 9:55','2020-08-24 10:46','olserran','	Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores fisicos que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app serial

SBMDEAGD07 - 10.4.80.154 odc CYZWHL1
'),
('1','2816044','3','4','2020-08-24 9:59','2020-08-24 10:46','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Fisicos que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

sb912btr2 10.11.11.12 transaccional produccion
sb912btr3 10.14.5.135 transaccional produccion
SB950TR1 10.85.20.3 transaccional produccion
sb030ctr2 10.14.5.137 transaccional produccion'),
('1','2816043','3','4','2020-08-24 9:57','2020-08-24 10:46','olserran','Marin Orrego, Carlos Eduardo	','Se procede con el retiro de los servidores que se fisicos menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SB0983CD1 10.98.10.3 transaccional produccion
sb245btr2 10.8.34.81 transaccional produccion
sb30btr1 10.20.13.6 transaccional produccion
sb487btr1 10.40.10.81 transaccional produccion
sb494btr1 10.20.13.81 transaccional produccion'),
('1','2833614','3','4','2020-08-24 11:31','2020-08-24 12:26','olserran','Zapata Espinosa, Alexis Ernesto','HOST: nu0026002-skynet-qa-id.ctw4p8wfthyv.us-east-1.rds.amazonaws.com
IP: 10.104.83.223
Motor de base de datos: PostgreSQL
Nube: AWS RDS
Puerto:50000
Ambiente: Certificacion
DNS : skynet-qa-rds.apps.ambientesbc.com'),
('1','2816040','3','4','2020-08-24 11:44','2020-08-24 14:14','olserran','	Marin Orrego, Carlos Eduardo','Buenas tardes.
Se procede con el retiro de los servidores Fisicos que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SB0025TR3 10.14.5.138 transaccional produccion
SB0437BTR1 10.14.5.139 transaccional produccion
sb075btr2 10.31.10.30 transaccional produccion
sb0940tr1 10.40.1.5 transaccional produccion'),
('1','2829856','3','4','2020-08-24 11:45','2020-08-24 14:11','olserran','	Marin Orrego, Carlos Eduardo','Buenas tardes.
Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBMDEAPKI7 10.8.51.46 PKI Produccion'),
('1','2833597','3','4','2020-08-24 12:04','2020-08-24 15:39','olserran','	Duran Ruiz, Cesar Augusto','Solicito crear el acceso a la base de datos NU0017001achenlineapdnid 2nte la aplicación correspondiente para las Bases de Datos Postgres.

Esta Base de Datos esta en el servidor
nu0017001-ach-en-linea-pdn-id.cxhifzzcfvrk.us-east-1.rds.amazonaws.com y escucha por el puerto 50000

El usuario de conexion se llama USRTUCDB y los perfiles grptBaseDatos_Banco y grptBaseDatos_TCS

De antemano gracias por su atención.'),
('1','2831456','3','4','2020-08-24 12:23','2020-08-24 12:36','olserran','Quimbayo Marin, Luis','Se requiere dar de baja al host PBMDEAQMUR01
VARRQDB - BDQATCS - MPCERT

Nota: Se adjunta el formato con las IP a devolver.'),
('1','2835184','3','4','2020-08-25 9:44','2020-08-25 11:05','olserran','Duran Ruiz, Cesar Augusto','Se requiere matricular a password safe la siguiente instancia de base de datos Postgres para ingresar a ella 2nte pgadmin4 y consola pgsql:

HOST: nu0017001-ach-en-linea-pdn-id.cxhifzzcfvrk.us-east-1.rds.amazonaws.com
RDS Address (DNS): http://ach-en-linea-rds.apps.bancolombia.com
Puerto: 50000
Motor de base de datos: Postgres
Nube: AWS RDS
Ambiente: Producción'),
('1','2825522','3','4','2020-08-25 11:31','2020-08-25 11:40','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte



NOMBRE IP ROL AMBIENTE
SBMDEBPBDR01V 10.8.51.23 Windows Server 2016 Produccion'),
('1','2824430','3','4','2020-08-26 16:17','2020-08-27 8:48','olserran','Osorio Tobon, Andres','Se solicita el aprovisionamiento de infraestructura virtual para que IBM realice la instalacion del Appliance de Vmware vRa Business for Cloud, esto con el fin de ampliar las capacidades de la plataforma de orquestación.

Nota : no se requiere asignacion de IP, porque ya se solicito la asignacion de este direccionamiento con las OC 2823898

S.O.: Linux (el sistema se instala por medio de una OVA)
Procesador: 4VCP
Memoria: 8GB
Amacenamiento: 100 GB
Servidor: SVRBOGBFC01

Justificación: Aprovisionar servidor para la implementación de la plataforma Business for Cloud de Vmware, no se realiza la solicitud por el flujo de orquestacion porque este tipo de solictudes de despliegues de OVAS no aplican por ese flujo
Beneficio: Tener Servicio de tarificación y control sobre la infraestructura desplegada
Impacto: Ninguno, es una implementación nueva.
Impacto de no hacerse: Procesamiento manual de información.'),
('1','2836129','3','4','2020-08-26 16:58','2020-08-26 17:37','olserran','	Salazar Herrera, Wilson Hernan','Solicitar nueva particion en el ambiente de desarrollo para el piloto de migración
de Bases de datos de 12c a 19c. Se tomará como prueba la aplicación "Bank Analyzer" -
servidor referencia pbmdebddad04.
Ambiente: Desarrollo
Servicio / Aplicación / Modulo: SAP BanK Analyzer
Tipo de aprovisionamiento: Virtual
Plataforma: pseries power 8
VLAN: 817
IP Referencia: 10.8.87.X
Nro. de Servidores: 1
Nombre Servidor 1: pbmdebdbsa01
Capacidad Servidor 1: 2na: CPU: 0.5 cores 26GB RAM
Sistema Operativo Servidor 1: AIX 7.2
Rol Sistema Operativo Servidor 1: Bases de datos
Producto Servidor 1: Oracle19C

NOTA: Asignar el espacio ASM indicado en el formato. Sin las etiquetas. cualquier duda informar. gracias

Se solicita traduicional por no tener completas las VLAN y la manera de desplegar el sistema a traves del orquestador de IBM.

Registrar en DNS:
10.8.87.150 pbmdebdbsa01

Registrar en Cyberark:
El servidor debe quedar registrado en CyberArk para el perfil: grptosapdb con la cuenta: oracle y tambien registrar el servidor a los grupos: grptpanplat, grptpanplat_ibm'),
('1','2836840','3','4','2020-08-27 17:32','2020-08-27 18:15','olserran','Quintero Florez, Luis Eduardo','Se requiere adicionar una segunda tarjeta de red a cada uno de los siguientes nodos para poder realizar posteriormente los cluster.

El proyecto se llama Hardening de Cajeros.
El centro de costos es PMO30692

Los servidores son:

Base de datos SBMDEBPBDD19V y SBMDEBPBDD20V (VLAN 544) , Hearbeat Vlan 529
Aplicacion : SBMDEBPSFL01V y SBMDEBPSFL02V (VLAN 545) , Hearbeat Vlan 529

Si se necesitan las ip son
Server de BD
SBMDEBPBDD19V, 10.8.149.165 y SBMDEBPBDD20V 10.8.149.166
Ip del Hearbeat es 7.1.160.26, 7.1.160.27 y Vlan es 529

Server de App
SBMDEBPSFL01V 10.8.149.213 y ,SBMDEBPSFL02V 10.8.149.214
Ip del Hearbeat es 7.1.160.28, 7.1.160.29 y Vlan es 529'),
('1','2836370','3','4','2020-08-27 17:26','2020-08-27 18:24','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Ambiente Nombre servidor IP Aplicación Rol App o BD
Producción SBMDEBKX30V 10.8.34.188 Data Líquida Bases de Datos
Producción SBMDEBKX31V 10.8.34.189 Data Líquida Bases de Datos'),
('1','2837393','3','4','2020-08-27 17:35','2020-08-27 18:12','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente'),
('1','2837150','3','4','2020-08-27 17:30','2020-08-27 18:14','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Hostname Ip Ambiente Roll
LBMDEBPWAF01V 172.25.127.27 Producción WAF'),
('1','2836038','3','4','2020-08-27 17:27','2020-08-27 18:17','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBMDEBPAPB01V 10.8.51.63 cumplimiento Produccion'),
('4','2840346','3','4','2020-08-28 9:11','2020-08-28 12:34','nzamudio','Alzate Gomez, Dennis Andrea','Modificación del archivo web.config para solución del caso problema 17999658 debido a que se esta quedando en cache otros usuarios de red

Beneficio: Solución al error presentado en el portal web, cargando correctamente los datos del usuario de red que inicia sesión

Impacto:No se genera impacto, el cambio se realiza sobre el componente DR de la solución'),
('1','2840432','3','4','2020-08-27 21:36','2020-08-28 9:02','olserran','Salazar Restrepo, Carolina ','Retirar la cuenta DSADM de los servidores de Datastage Certificación'),
('1','2753395','3','4','2020-08-28 9:55','2020-08-28 10:29','olserran','Vargas Navas, Sebastian Orlando','Buen día,
Se requiere subir la versión del SO de RHEL 6.10 a RHEL 7.7 del servidor de base de datos de Murex para el ambiente de Restauración, de esta forma cubrir la obsolesencia de SO sobre el servidor.

Codigo AW: AW0434001

Servidor (Base de Datos)
Nombre: SBMDEDBD15V
IP: 10.8.87.30
SO: OEL 7.7

Encargado de la actividad: IBM, Andres David Mejía'),
('5','2825723','2','4','2020-08-28 16:10',null,'olserran','Culma Cadavid, Jhon James','Probar el disaster recovery en IBM calle 100 del servicio IAM FE (Filiales del Exterior).
Se subirán servidores en IBM y aplicacion para verificar funcionamiento del mismo.
FECHAS Y HORAS DE LA ACTIVIDAD
INICIO ACTIVACION: Miércoles 02 de Septiembre 7:30 am
FIN RETORNO: Miércoles 02 de Septiembre 4:00 pm

MAQUINAS DEL SERVICIO DE IAM FE (FILIALES DEL EXTERIOR):

Nombre del servidor IP
LBMDEBPIAM01V 10.8.58.228
LBMDEBPIAM02V 10.8.58.229
LBMDEBPIAM03V 10.8.58.230
LBMDEBPIAM04V 10.8.58.231
LBMDEBPIAM05V 10.8.58.232

IMPACTO:
No se tiene impacto porque es un ejercicio de continuidad 3 que no afecta la operación.

RESPONSABLE ACTIVIDAD:
James Culma - Gerencia Servicios TI Funciones Corporativas Cel. 3105980228'),
('1','2841657','3','4','2020-08-28 16:36','2020-08-28 17:12','olserran','Gallego, John Carlos','Se requiere corregir en la matricula de Cyber Ark la siguiente instancia de base de datos motor MySQL para ingresar a ella 2nte MySQL Workbench y consola mysql clent:

HOST: aw1287-credito-pyme-dev-id.clz5ohluuj8u.us-east-1.rds.amazonaws.com
IP: 10.72.115.200
DNS: db-creditopyme-dev.apps.ambientesbc.com
Database: JCNPYDCD
Puerto: 50000
Motor de base de datos: MySQL
Nube: AWS RDS
Ambiente: Desarrollo

Según la prueba realizada, el DNS registrado actualmente es incorrecto.

Los usuarios necesarios para matrícula en Cyber Ark ya existen en el servicio de base de datos.'),
('1','2841658','3','4','2020-08-28 16:37','2020-08-28 17:38','olserran','	Gallego, John Carlos','Se requiere corregir en la matricula de Cyber Ark la siguiente instancia de base de datos motor MySQL para ingresar a ella 2nte MySQL Workbench y consola mysql clent:

HOST: aw1287-credito-pyme-qa-id.csdkmgtfpmdd.us-east-1.rds.amazonaws.com
IP: 10.72.145.45
DNS: db-creditopyme-qa.apps.ambientesbc.com
Database: JCNPYDCD
Puerto: 50000
Motor de base de datos: MySQL
Nube: AWS RDS
Ambiente: Certificación

Según la prueba realizada, el DNS registrado actualmente es incorrecto.

Los usuarios necesarios para matrícula en Cyber Ark ya existen en el servicio de base de datos.'),
('1','2841509','3','2','2020-08-28 16:45','2020-08-31 10:02','olserran','Molina Papamija, Yadimir','Se requiere registrar todos los servidores de linux administrados por TCS en la herramienta Cyberark para otorgar acceso al perfil del usuario USRTBKUP.

Adjunto Listado LinuX.'),
('1','2841167','3','4','2020-08-28 17:24','2020-08-28 18:19','olserran','Velasquez Atencio, Juan Carlos','e solicita ingresar el siguiente servidor desarrollo en Cyberark Servidor: brm-rds-qa-rds.apps.ambientesbc.lab
port: 50100 Base de Datos: QaDbBRM'),
('1','2841189','3','4','2020-08-28 17:29','2020-08-31 12:10','olserran','Velasquez Atencio, Juan Carlos','se solicita ingresar el siguiente servidor desarrollo en Cyberark Servidor: brm-rds-dev-rds.apps.ambientesbc.lab
port: 50100 Base de Datos: DevDbBRM'),
('1','2841242','3','4','2020-08-28 17:30','2020-08-28 18:06','olserran','Velasquez Atencio, Juan Carlos','se solicita ingresar el siguiente servidor desarrollo en Cyberark Servidor: corona-rds-qa-rds.apps.ambientesbc.lab
port: 50100 Base de Datos: corona'),
('1','2841328','3','4','2020-08-28 17:33','2020-08-31 8:37','olserran','Velasquez Atencio, Juan Carlos','se solicita ingresar el siguiente servidor desarrollo en Cyberark Servidor: litisoft-rds-qa-rds.apps.ambientesbc.lab
port: 50100 Base de Datos: dblitisoft'),
('1','2841739','3','4','2020-08-28 17:38','2020-08-31 13:08','olserran','	Velasquez Atencio, Juan Carlos','Se solicita ingresar el siguiente servidor desarrollo en Cyberark Servidor: wikiti-rds-qa-rds.apps.ambientesbc.lab
port: 50100 Base de Datos: wikitidb'),
('1','2842668','3','4','2020-08-31 16:24','2020-08-31 17:22','olserran','Zapata Espinosa, Alexis Ernesto','Se requiere matricular a CiberArk la siguiente instancia de base de datos PostgreSQL para ingresar a ella 2nte Pgadmin4 y consola pgsql:

HOST: nu0026001-medios-de-pago-transversal-qa-clusteraurora.cluster-ctw4p8wfthyv.us-east-1.rds.amazonaws.com
IP: 10.104.83.133
Motor de base de datos: Aurora PostgreSQL
Nube: AWS RDS
Puerto:5432
Ambiente: Calidad
DNS: medios-de-pago-transversal-qa-rds.apps.ambientesbc.com'),
('1','2838092','3','4','2020-08-31 15:40','2020-08-31 17:00','olserran','Marin Orrego, Carlos Eduardo','Buenas tardes.
Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Servidor IP app Ambiente

SBMDEBPAPB01V 10.8.51.63 cumplimiento produccion'),
('1','2836426','3','4','2020-08-31 15:42','2020-08-31 16:57','olserran','Marin Orrego, Carlos Eduardo','Buenas tardes.
Se procede con el retiro de los servidores Fisicos que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte.

Servidor IP app Ambiente

SBMDEBSE08 192.168.136.51 PAC Produccion USE153PNL9
SBMDEBSE07 192.168.136.50 PAC Produccion USE153PNLE
SBMDEBSE06 192.168.136.49 PAC Produccion USE153PNLC'),
('1','2843627','2','4','2020-08-31 17:12',null,'olserran','Londono Osorio, Anderson','Buen día se requiere adicionar el acceso de las bases de datos de la aplicación CreditLens a través de CiberArk.
*Adjunto documento detallado.'),
('1','2830395','2','4','2020-08-31 18:10',null,'olserran','	Quintero Florez, Luis Eduardo','Se requiere aprovisionar una máquina virtual "OVA" el cual servirá como appliance para instalar posteriormente una imagen con la aplicación FireEye del proyecto SOC

No se debe instalar ningún sistema operativo, ya que es una "OVA" y el software se instalará después

DESCRIPCIÓN DEL PROYECTO
En este servidor se instalar la aplicación para tener capacidades de inteligencia adicionales. La función que cumplirá el servidor será la de breach Simulator conocido como "VERODIN DIRECTOR" el cual correrá bajo el CentOS 7-8-2003.0 64bits, esta solución ayudar a revisar la efectividad de los controles (SIEM, EDR, Antivirus) tanto de Endpoint como de red los cuales hacen parte de ciberseguridad.
ESPECIFICACIONES DE HARDWARE

NOMBRE DEL SERVIDOR: ABMDEBPISC01V
PROCESADOR: 64-Bit x86 con cuatro Cores.
MEMORIA: 16GB
DISCO: 160GB
NETWORK: Una interfaz en la VLAN 526 con la IP: 10.8.147.250)'),
('4','2829779','2','4','2020-08-31 18:30',null,'cabarrig','	Alzate Gomez, Dennis Andrea','Cierre de vulnerabilidades CyberArk AWS- PSM 1-SXCLDWPPAM03')

--tabla oc junio

INSERT INTO oc (id_area,id,id_estado,id_prioridad,fecha_inicio, fecha_fin,responsable,afectados,descripcion)
	VALUES 
('1','2691878','3','4','2020-04-30 9:50','2020-05-12 8:19','olserran','	Alzate Gomez, Dennis Andrea','Continuar Migración PasswordSafe a CyberArk - 1 Modelo de Gestión de accesos - PMO27873'),
('5','2704403','3','4','2020-05-21 8:37','2020-06-01 10:26','juliandl','Fajardo Casas, Daniel Camilo','Ejercicio de continuidad DR Abierto servicio SAP BI-Colombia mediante la herramienta CRO, como parte del plan anual de continuidad'),
('5','2697329','3','4','2020-05-27 14:04','2020-06-03 9:51','juliandl','Fajardo Casas, Daniel Camilo','Ejercicio de continuidad DR Abierto de SAP PORTAL en Centro Alterno de Procesamiento de Datos por medio de OTV (Overlay Transport Virtualization - Tecnologia CISCO) y con la herramienta de automatización CRO

SERVIDORES INVOLUCRADOS EN LA PRUEBA
=====================================
??? SAP PORTAL ???
PBMDEBPASP01 SAP APPLICATON SERVER 1 PORTAL
PBMDEBPASP02 SAP APPLICATON SERVER 2 PORTAL
PBMDEBPASP03 SAP APPLICATON SERVER 3 PORTAL
PBMDEBPASP04 SAP APPLICATON SERVER 3 PORTAL
PBMDEBPCSP02 SAP ENQUEUE SERVER PORTAL
PBMDEBPBDP03 SAP BASE DE DATOS 1 PORTAL
PBMDEBPBDP04 SAP BASE DE DATOS 2 PORTAL
PBMDEBPRSP01 SAP REP SERVER PORTAL (esta máquina se apaga durante el ejercicio)'),
('1','2727283','5','4','2020-06-01 8:26','2020-06-01 8:32','olserran','	Hurtado Rojas, Leydi Lorena','Se requiere adicionar a CyberArk el acceso a los servidores LBMDEBPINT02V y LBMDEBPINT03V con el usuario usrtsecu'),
('1','2710344','3','4','2020-06-01 9:31','2020-06-01 9:43','olserran','Vargas Navas, Sebastian Orlando','Se requiere el aprovisionamiento de los siguientes servidores para cubrir la obsolesencia de SO sobre los servidores no productivos de murex, en el ambiente DEV 2

Se va a dar de baja los servidores anteriores con SO 6.10 y se re aprovisionarán con SO 7.7

**Los servidores van a quedar con los mismos nombres e IPs por temas administrativos, lo unico que cambiará en ellos será la versión de SO.

Servidor 1 (Orquestación)
Nombre: SBMDEDMUR04V
IP: 10.8.87.7
Cores: 8
RAM: 32
SO: Rhel 7.7

Servidor 2 (Negocio)
Nombre: SBMDEDMUR05V
IP: 10.8.87.8
Cores: 8
RAM: 64
SO: Rhel 7.7

Servidor 3 (Var - MLC)
Nombre: SBMDEDMUR06V
IP: 10.8.87.9
CoreS: 8
RAM: 32
SO: Rhel 7.7

Servidor 4 (Base de Datos)
Nombre: SBMDEDBD11V
IP: 10.8.87.21
Cores: 8
RAM: 64
SO: OEL 7.7'),
('1','2711082','3','4','2020-06-01 16:19','2020-06-02 12:35','olserran','Sarmiento Herrera, Christian Fabian','Cordial saludo , por favor matricular la cuenta cnxipfra en cyberark .

'),
('1','2711083','5','4','2020-06-01 16:21','2020-06-01 17:44','olserran','	Sarmiento Herrera, Christian Fabian','Cordial saludo por favor crear el perfil GRPPBASEDATOS_FRAUDE en cyberark el cual se encuentra vinculado a la cuentade de DA y BD cnxipfra .'),
('1','2721779','3','4','2020-06-01 15:57','2020-06-01 16:45','olserran','Diaz Gomez, Pablo Andres','Se requiere el apagado y eliminacion de las maquinas de mq GBM
Producción AIX 10.52.144.21 PBPAMTPMEB02
Producción AIX 10.52.144.100 PBPAMTPMEB03
Debido a que ya se migraron para niquia con el pmo30328 traslado de GBM a niquia'),
('1','2727471','3','4','2020-06-02 11:31','2020-06-02 11:44','olserran','	Molina Moreno, Jeferson Yohan','Se requiere de la eliminación de los servidores Pseries:
PBPAMTPIHS01.BANCOLOMBIA.CORP
PBPAMTPIHS02.BANCOLOMBIA.CORP
PBPAMTPWAS01.BANCOLOMBIA.CORP
PBPAMTPWAS02.BANCOLOMBIA.CORP

Los mencionados servidores se encuentran en el Datacenter de GBM en Panamá.'),
('1','2728712','5','4','2020-06-02 12:26','2020-06-03 9:18','olserran','Suarez Perez, Belfor Ferney','Se requiere adicionar a CyberArk el acceso a los servidores SBMDEBPBDP01V -10.8.133.140'),
('1','2724608','3','4','2020-06-02 12:50','2020-06-02 15:26','olserran','	Roman Rosero, Oscar Julian','Por daños en el S.O. al momento de la implementacion, se solicita por favor VOLVER A CREAR el servidor virtual SBMDEBPSSS06V. Por favor conservar la misma IP asignada ya anteriormente y los mismos recursos de hardware:'),
('1','2696391','3','4','2020-06-02 21:23','2020-06-03 8:08','olserran','Jimenez Marquez, Pablo Andres','Descripción de tarea   
(Analista Cyberseguridad) Matricular las maquinas en la herramienta PAM'),
('1','2729448','3','4','2020-06-03 9:40','2020-06-03 10:59','olserran','	Molina Moreno, Jeferson Yohan','Se requiere de la eliminación de los servidores Pseries:

PBPAMTPWAS03.BANCOLOMBIA.CORP
PBPAMTPWAS04.BANCOLOMBIA.CORP

Los mencionados servidores se encuentran en el Datacenter de GBM en Panamá.'),
('1','2703959','3','4','2020-06-03 9:22','2020-06-05 17:27','olserran','	Alzate Gomez, Dennis Andrea','Toma de control cuentas CyberArk - 1 Modelo de Gestión de accesos - PMO27873'),
('1','2708198','3','4','2020-06-03 15:00','2020-06-03 15:38','olserran','Grisales Montoya, Maria Angelica','Se requiere dar de baja el siguiente servidor porque fue migrado desde el año pasado:
pbmdebpbst01: 10.8.3.72'),
('1','2708216','3','4','2020-06-03 15:01','2020-06-03 15:37','olserran','	Grisales Montoya, Maria Angelica','Se requiere dar de baja el siguiente servidor porque fue migrado desde el año pasado:
pbmdebpbst02: 10.8.3.73'),
('1','2734510','3','4','2020-06-03 15:18','2020-06-03 17:11','olserran','	Palacio Mejia, Juan David','Buen dia, Se registran servidores CNXIXSOP
SBMDEBRI01V con ip 10.8.34.158
SBMDEBRI02V con ip 10.8.34.159
SBMDEBRI03V con ip 10.8.34.7
SBMDEBRP01V con ip 10.8.34.208
sbmdebrp11V con ip 10.8.34.223'),
('1','2733561','3','4','2020-06-04 9:42','2020-06-04 10:23','olserran','	Henao Acevedo, Cesar Augusto','Se requiere apagar y eliminar las maquinas EBANKING FE, CONSOLA TECNICA FE GBM

Servidor: PBPAMTPBDI01
Ip: 10.52.144.24
Servidor: PBPAMTPBDI02
Ip: 10.52.144.25'),
('1','2733976','3','4','2020-06-04 9:42','2020-06-04 10:25','olserran','	Alvarez Botero, Kevin Alejandro','Eliminacion servidor pseries pbpamtpnim01 (infra GBM)'),
('1','2731604','3','4','2020-06-04 11:11','2020-06-04 16:42','olserran','Gomez Taba, Pablo Arturo','Por favor eliminar la particion lpbmdebdbsh01 y eliminar los registros de DNS y CYBERARK

lpbmdebdbsh01 - 10.8.64.79'),
('1','2713297','3','4','2020-06-04 16:41','2020-06-05 8:08','olserran','Gomez Ramirez, Francis Adrian','Devolución Maquinas PSeries BizagiAC OnPremise.'),
('1','2732669','3','4','2020-06-04 16:40','2020-06-05 8:06','olserran','Villanueva luque, Alvaro Jose','Solicitud eliminación servidores GBM pbpamtptsm02 y pbpamtptsm03'),
('1','2736703','3','4','2020-06-04 17:02','2020-06-05 14:51','olserran','	Portillo Rodriguez, Oscar David','PMO31347 - Certificación Filiales Modificación IP´s - Mantener usuario Oracle con acceso al RACK'),
('1','2737318','5','4','2020-06-05 11:28','2020-06-08 8:35','olserran','	Zapata Espinosa, Alexis Ernesto','Se requiere crear el usuario usradmin para
Ambiente: PDN
host :nu0020001-contracargos-pdn-id.cxhifzzcfvrk.us-east-1.rds.amazonaws.com
puerto 50000
Engine : MySQL
habilitar acceso por MySQLWorkbench'),
('1','2737294','3','4','2020-06-05 12:23','2020-06-05 12:36','olserran','	Suarez Perez, Belfor Ferney','Se requiere adicionar a CyberArk el acceso a los servidores SBMDEBPBDP01V'),
('1','2738142','3','4','2020-06-05 14:56','2020-06-05 20:13','olserran','	Portillo Rodriguez, Oscar David','PMO31347 - Certificación Filiales Modificación IP´s - Mantener usuario Oracle con acceso al RACK'),
('1','2737545','3','4','2020-06-05 16:44','2020-06-10 8:26','olserran','		Alzate Gomez, Dennis Andrea','Toma de control cuentas CyberArk - 1 Modelo de Gestión de accesos - PMO27873'),
('1','2731942','3','4','2020-06-08 8:47','2020-06-08 14:04','olserran','		Sarmiento Herrera, Christian Fabian','Favor crear el perfil grppbdfraude en cyberark el cual se encuentra vinculado a la cuentade de DA y BD cnxipfra . con el fin de acceder a las instancias SQl'),
('1','2730163','3','4','2020-06-08 15:32','2020-06-08 15:52','olserran','	Naranjo Arias, Santiago','Se requieren 2 nuevos servidores para la actualizacion de la aplicacion Biovoz en ambiente de Cetificacion con Sistema Operativo Winodws Server 2016
Sistema Operativo: Windows Server 2016
Ram : 8 GB
Num de cores:2 Core
Almacenamiento : Disco C: 100 gb - Disco D: 100 gb
Ambiente: Certificacion
IP : 10.8.72.95 - entregada bajo la OC 2727355
Nombre : SBMDEBQBV03V

Sistema Operativo: Windows Server 2016
Ram : 8 GB
Num de cores:2 Core
Almacenamiento : Disco C: 100 gb - Disco D: 100 gb
Ambiente: Certificacion
IP : 10.8.72.96 - entregada bajo la OC 2727355
Nombre : SBMDEBQBV04V'),
('1','2736492','3','4','2020-06-08 15:38','2020-06-08 15:52','olserran','Quintero Henao, William Alonso','La Reinstalacion del SO servidor SBMDEGEX02V 10.8.69.169 Windows Server 2012 R2 STD para el servicio de plataforma de correo (Exchange) en el ambiente de certificación.

Problema: Se requiere reitirar el Sercidor de la infraestructura de Exchange de manera adecuada


Solución: La Reinstalacion del SO servidor SBMDEGEX02V 10.8.69.169 Windows Server 2012 R2 STD para el servicio de plataforma de correo (Exchange) en el ambiente de certificación'),
('1','2739938','3','4','2020-06-09 9:03','2020-06-09 11:44','olserran','	Cortes Escobar, Alexander','
Favor crear el perfil eb ciberark grptpsapAWS'),
('5','2717597','3','4','2020-06-09 9:21','2020-06-11 12:08','juliandl','	Fajardo Casas, Daniel Camilo','Ejercicio programado de Continuidad de TI DR abierto HUB Corporativo
OC TS Funciones Corporativas Seguridad Evolution Ejercicios de Continuidad'),
('1','2741864','3','4','2020-06-09 11:52','2020-06-09 16:19','olserran','		Cortes Escobar, Alexander','AL Perfil de ciberark grptpsapAWS, Se necesita registrar las cuentas srtsape y oraclee incluir las maquinas del ERP que será migradas a AWS'),
('1','2723669','3','4','2020-06-10 10:23','2020-06-10 14:10','olserran','Ramirez Rodriguez, Hugo Alejandro','Solicitud de los siguientes servidores virtuales para POC VRP. Estos servidores serán dados de baja una ves se termine la implementación de la POC la cual se estima para finales de Junio. Todas las maquinas se desplegan con 4 cores y 8 de RAM con 100 GB de disco.

ABMDEBQVRM01V - OVA
ABMDEBQVIM01V - OVA
ABMDEBQVRG01V - OVA
LBMDEBQVRA01V - RHEL 7.7
LBMDEBQVRA02V - RHEL 7.7
SBMDEBQVRA03V - WIN2016'),
('1','2720716','3','4','2020-06-10 11:21','2020-06-10 12:03','olserran','	Gomez Taba, Pablo Arturo','se necesita crear 2 maquinas para el proceso de migracion de la BD SAP SOLMAN

xbmdebpbsh01 (nodo 1)

/usr/sap 60GB
/hana 5GB
SWAP 20GB
Memoria RAM 660GB
CORE 4

xbmdebpbsh02 (nodo 2)

/usr/sap 60GB
/hana 5GB
SWAP 20GB
Memoria RAM 660GB
CORE 4'),
('4','	2744032','3','4','2020-06-10 16:41','2020-06-11 15:42','cabarrig','	Alzate Gomez, Dennis Andrea','Ampliación de memoria en los componentes PSM de Niquía SXMDEBPPAM04V -SXMDEBPPAM08V'),
('1','2744548','3','4','2020-06-11 8:09','2020-06-11 13:54','olserran','Avila Poo, David Alonso','Por favor actualización Jefe responsable Perfil - grptlAdminfo_Solati a Carlos Mauricio Gutierrez Velez (camaguti). Debido a que este es el jefe aprobador de las solicitudes.'),
('1','2744537','3','4','2020-06-11 12:26','2020-06-11 14:51','olserran','Mantilla Pabon, Gustavo','Se requiere resgistrar el servidor pbmdebqrtv02 en la herramienta de Cyberark.'),
('1','2738793','3','4','2020-06-11 9:41','2020-06-11 12:07','olserran','Gil Prada, Jesus Alberto','Se requiere un Servidor Virtual ambiente de Certificación

IP:10.8.101.50 (temporal ) VLAN 1313

Nombre :: sbmdesapt01v (temporal)
Sistema operativo :: Microsoft Windows Server 2016 Standard
Procesador :: 8 cores'),
('1','2737419','3','4','2020-06-11 9:37','2020-06-11 12:07','olserran','	Sosa Correa, Octavio Adolfo','Por favor aprovisionar servidor para prueba de concepto, tener presente cada una de las caracteristicas que se adjuntan en la solicitud.'),
('1','2746543','3','4','2020-06-11 19:02','2020-06-12 9:26','olserran','	Henao Acevedo, Cesar Augusto	','Se solicita ingresar el siguiente servidor Productivo en Cyberark con el usuario SQLSERVICE.
Servidor: SBPAMBPBDEU01V
IP: 10.8.147.11
Dominio: bancolombia.corp'),
('1','2746570','3','4','2020-06-11 19:03','2020-06-12 14:48','olserran','	Henao Acevedo, Cesar Augusto','Se requiere ingreso en Cyberark por Developer, Sqlplus para la BD INTEGPDB de CONSOLA TECNICA
Servidor: LBMDEBPBDC01V
Ip: 10.8.19.44
Servidor: LBMDEBPBDC02V
Ip: 10.8.19.45
BD: INTEGPDB
Puerto: 51529'),
('1','2745315','3','4','2020-06-12 12:48','2020-06-12 14:57','olserran','	Mejia Fernandez, Leidy Johana','Se requiere retirar cualquier clase de registros ( DNS , Cyberark, monitoreo, Ip´s) sobre los siguientes servidores de QA y Desarrollo:
pbmdeaqend01 - 10.8.64.78
pbmdebqald04 - 10.8.64.94
PBMDEBQALD05 - 10.8.64.95
pbmdebdald02 - 10.8.80.139
pbmdebdald03 - 10.8.80.140'),
('1','2747397','3','4','2020-06-12 14:43','2020-06-12 18:48','olserran','	Mesa Pinilla, Paula Andrea','Buen día,
Solicito amablemente realizar cambio de IP del servidor Windows SVMDEBAP03V alojado en CyberArk, el cambio sería de la siguiente forma:

Información actual:
SVMDEBAP03V con IP 10.8.51.29

Quedando de la siguiente forma:
SVMDEBAP03V con IP 10.8.150.90'),
('1','2747588','5','4','2020-06-12 14:44','2020-06-12 16:55','olserran','	Naranjo Arias, Santiago','Se requiere acceso al servidor con IP 10.72.189.192 de AWS a traves de CyberArk'),
('4','2748700','3','4','2020-06-13 11:49','2020-06-13 19:23','cabarrig','	Alzate Gomez, Dennis Andrea','Actualización de firmware, ilo y bios componente PSM de Niquía SXMDEBPPAM08V'),
('1','	2741228','3','4','2020-06-16 17:11','2020-06-17 9:14','olserran','	Quintana Roa, Ivan','Aprovisionamiento de Servidor Virtual Audisoft'),
('1','2739661','3','4','2020-06-16 17:07','2020-06-17 9:03','olserran','	Velez Bedoya, Carlos Mario','Se requiere realizar Upgrade de Sistema Operativo de Windows Server 2012 a Windows Server 2016 Standard ...'),
('1','	2750369','3','4','2020-06-16 19:20','2020-06-17 8:41','olserran','Naranjo Arias, Santiago','Eliminacion cuenta CNXIPLNX Servidores DID'),
('1','2751349','3','4','2020-06-17 10:59','2020-06-17 15:12','olserran','	Lopera Carmona, Javier Alexander','Para las pruebas que se vienen realizando por parte del equipo de Bases de datos con el parchado automatico a través de Cloud Control 13C, se requiere que las contraseñas del usuario ORACLE en los servidores pbmdebqrbd01 - pbmdebqrbd02 sean iguales, ya que ambos servidores forman parte del RAC "racbd".

Servidores: pbmdebqrbd01 - pbmdebqrbd02
Cuenta: Oracle
Necesidad: Que la cuenta oracle en ambos servidores tengan exactamente la misma clave de acceso.'),
('1','2753016','3','4','2020-06-18 8:23','2020-06-18 11:38','olserran','	Gomez Taba, Pablo Arturo','por favor matricular las cuentas usrtsape y usrtsapb en los servidores xbmdebpbsh01 y xbmdebpbsh02'),
('1','2751288','3','4','2020-06-18 9:00','2020-06-23 19:00','juliandl','	Alzate Gomez, Dennis Andrea','Instalar certificado firmado en BAM y Boveda Niquia para establecer relación de confianza y continuar con la instalación de la Boveda Satellite por lo que es necesario realizar reinicio de la boveda principal

Beneficio: Continuar con la implemetación en Guatemala de los componentes de CyberARK

Impacto: Se genera indisponibilidad del servicio durante 2 momentos de la ventana de mantenimiento de 12:00 pm a 12:30pm y de 1:00 pm a 1:30 pm en los reinicios de la boveda, el resto de la ventana es para actividades previas y pruebas luego de activar la bóveda'),
('1','2750851','3','2','2020-06-19 15:55','2020-06-19 17:07','olserran','	Asprilla Mosquera, Luis Alberto','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('1','2747954','3','2','2020-06-19 16:14','2020-06-19 16:30','olserran','	Carrillo Gutierrez, Cesar Augusto','(Analista Cyberseguridad) Matricular las maquinas en la herramienta PAM'),
('1','	2741606','3','4','2020-06-19 18:18','2020-06-23 9:58','olserran','Mejia Fernandez, Leidy Johana','Eliminacion de servidor productivo SAS Cuantificacion'),
('1','	2749198','3','4','2020-06-19 18:18','2020-06-23 9:59','olserran','Agudelo, Edinson Eudrey','(Analista Seguridad de TI) Eliminar la máquina en Beyond Trust.'),
('1','2730074','3','4','2020-06-20 14:33','2020-06-23 8:13','olserran','Fajardo Casas, Daniel Camilo','Ejercicio de continuidad HA MQ Gateway'),
('1','2738350','3','4','2020-06-18 13:59','2020-06-18 16:07','olserran','Quintana Roa, Ivan','(Analista Cyberseguridad) Matricular las maquinas en la herramienta PAM'),
('1','2743524','3','4','2020-06-23 9:53','2020-06-23 15:55','olserran','Cordoba Castillo, Carlos Marlon','(Ciberseguridad). Adicionar servidor en la herramienta PAM.'),
('1','2748186','3','4','2020-06-23 13:33','2020-06-23 14:37','olserran','	Naranjo Arias, Santiago','Cordial Saludo;

Se requieren 2 nuevos servidores para la actualizacion de la aplicacion Biovoz en Ambiente de produccion con Sistema Operativo Winodws Server 2016

Sistema Operativo: Windows Server 2016
Ram : 8 GB
Num de cores:2 Core
Almacenamiento : Disco C: 100 gb - Disco D: 100 gb
Ambiente: Produccion
IP : 10.8.50.62 - entregada bajo la OC 2745601
Nombre : SBMDEBPBV05V

Sistema Operativo: Windows Server 2016
Ram : 8 GB
Num de cores:2 Core
Almacenamiento : Disco C: 100 gb - Disco D: 100 gb
Ambiente: Produccion
IP : 10.8.50.62 - entregada bajo la OC 2745601
Nombre : SBMDEBPBV06V'),
('1','2750498','3','4','2020-06-23 13:38','2020-06-23 14:37','olserran','Naranjo Arias, Santiago','(Analista Cyberseguridad) Matricular las maquinas en la herramienta PAM'),
('1','2757413','3','4','2020-06-23 11:22','2020-06-23 12:08','olserran','	Jimenez Arias, Olga Lorena','Buenos días.

Se requiere darle permisos a la cuenta en Cyberak CNXIXSOP para acceder al servidor SBDRPBPBDKX01, que es la cuenta que se me habilita para accesos a servidores cuando me logueo a CyberArk con el usuario de red oljimene.'),
('1','2750573','3','4','2020-06-17 8:43','2020-06-17 10:47','olserran','	Portillo Rodriguez, Oscar David','Buen día.
Solito atentamente cambiar la IP relacionadas a continuación para las BD´s de Finacle FE para la cuenta: usrtodba
PBMDEBQFIN52 - 10.8.73.230)- scan-cfinfe/ 1523 / FINFEQDB
PBMDEBQFIN53 - 10.8.73.231) - scan-cfinfe/ 1523 / FINFEQDB'),
('1','	2758708','3','4','2020-06-24 9:37','2020-06-24 10:12','olserran','Gil Prada, Jesus Alberto','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre'),
('1','2759197','3','4','2020-06-24 11:28','2020-06-24 12:15','olserran','Mesa Pinilla, Paula Andrea','Eliminar server SVMDEBAP03V - 10.8.150.90 en CyberArk Cod AW:AW0658001'),
('1','2759285','3','4','2020-06-24 16:14','2020-06-25 10:27','olserran','	Junco Aldana, Yohan Mauricio	','Se solicita se ingresen las bases de datos para ser accedidas desde CyberArk con SQLPlus y SQLDeveloper con el rol de DBA

LBMDEBDHDC01V (10.8.141.184) - DECCADDB
LBMDEBQHDC01V (10.8.137.201) - DECCAQDB
LBMDEBPHDC01V (10.8.133.4) - DECCAPDB'),
('1','2760259','3','4','2020-06-24 17:15','2020-06-25 9:28','olserran','	Mesa Pinilla, Paula Andrea','Buen día,
Solicito amablemente ingresar el servidor SBMDEBPOWV01V- 10.8.51.29 en CyberArk con la cuenta CNXIXSOP , esto debido a que se realizó renovación del servidor y migración de la aplicación y el anterior se retiró de CyberArk.'),
('1','	2759230','3','4','2020-06-25 8:25','2020-06-25 9:11','olserran','Marin Orrego, Carlos Eduardo','buenos dias
se requiere retirar los siguientes servidores de la Herramienta cyberark'),
('1','	2760067','3','4','2020-06-24 18:05','2020-06-25 8:47','olserran','Tobar De jesus, Clara Milena','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('1','2760893','3','4','2020-06-25 14:05','2020-06-25 15:17','olserran','	Cadavid Alvarez, Andres Felipe','Buenos Dias

Necesidad del cambio:Se requiere adicionar a CyberArk el acceso a los servidores xbmdebpbsh01 (10.8.177.11). xbmdebpbsh02 (10.8.177.12) con el usuario
usrtbkup y mostrarlos al perfil grptlbkup'),
('1','2761649','3','4','2020-06-25 16:26','2020-06-26 8:27','olserran','	Cortes Rivera, Hamilton Oswaldo','Solicitamos de su gestión para registrar el server lbmdebplzdb01 con ip 10.8.115.83 y el server lbmdebplzdb02 con ip 10.8.115.84 ambos pertenecientes al dominio bancolombia.corp con el usuario oracle.

Muchas gracias.'),
('1','2761045','3','4','2020-06-25 22:28','2020-06-26 12:21','olserran','Rojas Blandon, Henry Adolfo','	Seguridad Corporativa.Mantenimiento de Cuentas en CyberArk'),
('1','2762818','3','4','2020-06-26 15:04','2020-06-26 15:30','olserran','	Sepulveda Marin, Maribet','En el adjunto encontrarán el detalle de los servidores que deben ser retirados del grupo NAC o lo que serán'),
('1','2754222','3','4','2020-06-26 16:19','2020-06-26 17:31','olserran','	Herrera Cabrera, Axel','Como parte del Habilitador 1580884 solicitan aprovisionar un servidor para Desarrollo con las siguientes especificaciones:

Nombre: SBMDEBDM01V
Sistema Operativo : Windows Server 2016
Memoria : 4GB
Discos (2): C:\ [70 GB], D:\ [30 GB]
Cores : 4'),
('1','2749789','3','4','2020-06-26 16:31','2020-06-26 17:37','olserran','Cordoba Castillo, Carlos Marlon','Se solicita Servidor el cual es requerido por obsolescencia del servidor actual del 1 de Biovoz en el ambiente de certificación, se va a cambiar de sistema operativo de AIX a Linux.

Ambiente: Certificación
Servicio / Aplicación / Modulo: BioVoz
Tipo de aprovisionamiento: Virtual
Plataforma: X86
VLAN: 620
IP Referencia: 10.8.73.64
Nro. de Servidores: 1
Nombre Servidor 1: LBMDEBQBDB01V'),
('5','2760787','3','4','2020-06-26 16:26','2020-06-28 5:23','olserran','Calderon Florez, Brian Andres','Se requiere realizar la actualización de licencias en Finacle Nequi. A continuación se describe el proceso a seguir:

1. Instalar este archivo usando la utilidad “License Update” del FDM.
2. Tomar “backup” de la tabla TBAADM.LICDT de bases de datos y el nombre de basedatos es FINBDPDB.
3. Borrar los contenidos de TBAADM.LICENSING_DETAILS_TABLE
el sentencia es delete from TBAADM.LICENSING_DETAILS_TABLE;
(commit tanto al paso 2 como al 3)'),
('1','2761006','3','4','2020-06-29 10:17','2020-06-30 8:03','olserran','	Vargas Monsalve, Henry Alberto','Se requiere dar de baja la maquina PBMDEBDTSM01 para poder realizar la liberación de la instancia histórica de backup IBM Spectrum Protect (CARABOBO)

Requerimiento:

1- Eliminación del filesystem de la BD de IBM Spectrum Protect.'),
('1','2756805','3','4','2020-06-30 10:30','2020-06-30 11:43','olserran','	Gomez Ramirez, Francis Adrian','Buenos días.

Les informamos que los siguientes servidores de la graja PSeries de producción, que atienden la Base de datos BizagiGF, pueden ser desmontados, debido a que la infraestructura de esta aplicación ya fue migrada a AWS:

PBMDEBPBIZ06 10.8.59.215
PBMDEBPBIZ07 10.8.59.216
PBMDEBPBIZ08 10.8.59.222
Se adjunta AMM para asegurar eliminar el monitoreo de las variables y servidores'),
('1','2752246','3','4','2020-06-30 11:02','2020-06-30 15:03','olserran','	Londoño Ortiz, Wilmar Jovany','Se solicita cambiar le nombre es este servidor SB623BTR1 por sb0593tr1, El servidor continua con el mismo direccionamiento IP

El servidor es fisico y se encuentra en el enlace operativo de Manizales'),
('1','2752189','3','4','2020-06-30 11:55','2020-06-30 15:03','olserran','	Londoño Ortiz, Wilmar Jovany','Se solicita cambiar le nombre es este servidor SB970TR1 por sb0164tr1, El servidor continua con el mismo direccionamiento IP

El servidor es fisico y se encuentra en el enlace operativo de Pereira'),
('1','2761796','3','4','2020-06-30 15:29','2020-06-30 15:43','olserran','Galvis Giraldo, Luis Carlos ','Dar de baja servidores pSeries no usados del aplicativo AW0453

pbmdebpbhd01 - Producción
pbmdebdbhd01 - Desarrollo
pbmdebqbhd01 - Certificación
'),
('1','2765601','3','4','2020-06-30 17:15','2020-06-30 17:27','olserran','Vasquez Ochoa, Monica Alexandra ','Se requiere eliminar los balanceadores de carga de Filiales del Exterior de la herramienta Cyberark ya que fueron dados de baja'),
('1','2761420','3','4','2020-06-30 17:33','2020-06-30 17:40','olserran',' 	Arango Ruiz, Cesar Octavio ','Se requieren el aprovisionamiento de una maquina en ambiente certificación para la actualización de la aplicación cornerstone en donde se encuentra con SO 2012 y se requiere pasar a 2016 '),
('1','2759903','3','4','2020-06-30 17:38','2020-06-30 17:42','olserran',' 	Alandete Penate, Milton Dairon ','e tiene la necesidad de aprovisionar nuevamente la maquina SBMDEQBD09V'),
('1','2740154','3','4','2020-06-30 17:50','2020-06-30 17:42','olserran','Vargas Navas, Sebastian Orlando ','Se requiere el aprovisionamiento de los siguientes servidores para cubrir la obsolesencia de SO sobre los servidores no productivos de murex, en el ambiente DEV 3'),
('1','2746154','3','4','2020-06-30 17:50','2020-06-30 17:42','olserran','Vargas Navas, Sebastian Orlando ','Se requiere el aprovisionamiento de los siguientes servidores para cubrir la obsolesencia de SO sobre los servidores no productivos de murex, en el ambiente DEV 1')


--tabla oc julio

INSERT INTO oc (id,id_estado,id_prioridad,id_area,fecha_inicio, fecha_fin,responsable,afectados,descripcion)
	VALUES 
('2750462','3','4','1','2020-07-01 9:50','2020-07-01 10:47','olserran','Londono Atehortua, Juan Alejandro','Se requiere actualizar los servidores actuales de CA APM de RHEL 6 a RHEL 7
Solucion:
Instalar nuevos servidores para actualizar la version de Redhat 7.7 en servidores de Monitoreo IBM
Beneficios:
Mejorar el versionamiento de SO asi como cerrar las vulnerabilidades a la fecha.
Impacto de la actividad:
No genera impacto son maquinas nuevas.
Impacto de no hacerse:
Los servidores continuen con vulnerabilidades activas.
Aplica GACDW: Si
Nota: Los cambios NO generan afectación del servicio. No afecta Linea base.No generan costos para el Cliente.
Maquinas a solicitar
Redhat Version 7.7
sbmdebmi02 --> 10.8.41.155
sbmdebmi03 --> 10.8.41.156
sbmdebmi04 --> 10.8.41.157
sbmdebmi05 --> 10.8.41.158
sbmdebmi06 --> 10.8.41.159
sbmdebmi07 --> 10.8.41.160
sbmdebmi08 --> 10.8.41.161
sbmdebmi12 --> 10.8.41.163
sbogdcmi13 --> 10.60.41.128
sbogdcmi17 --> 10.60.41.129'),
('2766170','3','4','1','2020-07-01 9:58','2020-07-06 9:33','olserran','	Alzate Gomez, Dennis Andrea','Se realiza carga de datos y toma de control de las cuentas de Bases de datos de las instancias de AWS

Beneficio: Se tendrá más 1idades, como alcance a recursos de nube, custodia y control de usuarios en aplicaciones, alertamiento por comportamientos anómalos, bloqueo de ejecución de comandos, entre otras.

Impacto: No se generará impacto ya que toda la actividad es realizada con el área de Bases de datos'),
('2766316','3','4','1','2020-07-01 11:06','2020-07-01 12:41','olserran','	Alandete Penate, Milton Dairon','Desde el PMO30328 - Traslado Datacenter GBM a NIQUÍA


Se necesita registrar la cuenta de sqlservice en la consola CyberArk ya que la maquina SBMDEQBD09V IP 10.8.71.137 tendrá rol de base datos en Certificacion.'),
('2767418','3','4','1','2020-07-01 16:50','2020-07-02 9:00','olserran',' 	Arango Ruiz, Cesar Octavio ','Solicito registrar los siguientes servidores del proyecto Edin en CyberArk en todas las cuentas de línea base y cuenta usrtadmi, usrthelp, grptlinte, usrtpdc

Certificación
SERVER SBMDEQSG01V
IP 172.25.127.21

Desarrollo
SERVER SBMDEGSG01V
IP 172.25.127.5'),
('2767225','3','4','1','2020-07-01 16:50','2020-07-02 8:41','olserran','Pinzon Restrepo, Andres Felipe ','e requiere matricular a CyberArk la siguiente máquina en producción (AWS)

manage-bizagibeg.apps.bancolombia.corp (10.103.24.211)
bizagibega.apps.bancolombia.corp (10.103.26.74)
bizagibegr.apps.bancolombia.corp (10.103.25.201) '),
('2768441','3','4','1','2020-07-02 11:55','2020-07-02 15:58','olserran','	Suarez Perez, Belfor Ferney','Se requiere adicionar a CyberArk el acceso al servidor SBMDEBQBDF01V -  10.8.137.4'),
('2729814','3','4','5','2020-07-02 11:35','2020-07-02 12:18','juliandl','	Fajardo Casas, Daniel Camilo','Realizar Ejercicio de Continuidad TI - DR Abierto SAP PI

FECHAS DE LA ACTIVIDAD:
==================
ACTIVACIÓN: Domingo 21 de junio 2020 - 12:00 am
RETORNO: lunes 29 de junio 2020 - 12:00 am

Elemento de Configuración- Rol

SAP PI
PBMDEBPASX01 10.8.176.99 App
PBMDEBPASX02 10.8.176.100 App
PBMDEBPCSX01 10.8.176.96 Enqueue
pbmdebprsx01 10.8.176.98 Replication
PBMDEBPBDX01 10.8.176.89 BD
PBMDEBPBDX02 10.8.176.94 BD
'),
('2768551','3','4','1','2020-07-02 14:01','2020-07-02 16:02','olserran','Gutierrez Ocampo, Maria Isabel','Buenos días
se solicita cambio al aprobador de los flujos usm de creacion / modificación para el perfil grpsoportebd_fe

El aprobador de este perfil debe ser: JETOBON'),
('2768137','3','4','1','2020-07-02 14:18','2020-07-02 16:57','olserran','Escudero Almeida, Eric Emiro','Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2767109','3','4','1','2020-07-02 15:20','2020-07-02 16:32','olserran','	Marin Orrego, Carlos Eduardo','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2756976','3','4','1','2020-07-02 17:17','2020-07-03 9:56','olserran','Herrera Cabrera, Axel','(Ciberseguridad). Adicionar servidor en la herramienta PAM.'),
('2770207','3','4','1','2020-07-03 10:52','2020-07-03 11:49','olserran','	Pinzon Restrepo, Andres Felipe','Se requiere realizar los siguientes cambios en CyberArk:

(Eliminar) bizagibega.apps.bancolombia.corp
(Eliminar) bizagibegr.apps.bancolombia.corp

(Cambiar IP) manage-bizagibeg.apps.bancolombia.corp -> 10.103.24.211
(Crear) bizagibeg-asga.apps.bancolombia.corp -> 10.103.28.51
(Crear) bizagibeg-asgr.apps.bancolombia.corp -> 10.103.24.86'),
('2770133','3','4','1','2020-07-03 11:55','2020-07-03 14:04','olserran','	Apolinar Cruz, Harold Jorge','Se solicita ingresar el siguiente servidor de DESARROLLO a Cyberark con la cuenta SQLSERVICE y USRTDBAS,
Servidor: SBMDEBDKTC01V - IP 10.8.69.197
Dominio: Ambientesbc.lab'),
('2762139','3','4','1','2020-07-03 16:35','2020-07-06 9:19','olserran','Gil Prada, Jesus Alberto','Se realiza carga de datos y toma de control de las cuentas de Bases de datos de las instancias de AWS

Beneficio: Se tendrá más 1idades, como alcance a recursos de nube, custodia y Solicitud de Servidores Virtuales Certificación - Proyecto ALM CV10 AW0929001 - Axiom - Reportería Legal'),
('2752371','3','4','1','2020-07-06 9:29','2020-07-06 10:20','olserran','Vargas Navas, Sebastian Orlando','Se requiere subir la versión del SO de RHEL 6.10 a RHEL 7.7 del servidor de base de datos de Murex para el ambiente Dev3, de esta forma cubrir la obsolesencia de SO sobre el servidor.

** Ya se ha solicitado la adición del nuevo almacenamiento con la OC: 2745599

Codigo AW: AW0434001
Servidor (Base de Datos)
Nombre: SBMDEDBD12V
IP: 10.8.87.22
SO: OEL 7.7'),
('2773117','3','4','1','2020-07-06 17:18','2020-07-06 18:03','olserran','Benjumea Varela, Victor Augusto','Buenas tardes por favor incluir los servidores 10.8.71.151 y 10.8.71.133 con la cuenta sqlservice en AMBIENTES'),
('2764259','3','4','1','2020-07-06 18:32','2020-07-07 9:39','olserran','	Gil Prada, Jesus Alberto','Necesidad: Aprovisionar 01 Servidores Virtuales, Proyecto Upgrade ALM CV10 en ambiente de Producción

Solución: aprovisionar servidores con las siguientes especificaciones:

Nota: Por favor garantizar que el hostname esté en minuscula en todos los servidores
Características de Servidores:

Servidor #1
Ambiente: bancolombia.corp
Name Server: lbmdebpaxw01v
IP:10.8.151.196
VLAN:535
Sistema Operativo: RedHat Enterprise Linux Server release 7.7
Procesador: 4 Cores
Memoria RAM: 32GB
/opt 100GB
/var/log 30GB'),
('2772069','3','4','1','2020-07-07 7:38','2020-07-07 8:24','olserran','	Marin Orrego, Carlos Eduardo','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2770235','3','4','1','2020-07-07 12:04','2020-07-07 14:08','olserran','Naranjo Arias, Santiago','Descripción de la orden   
Cordial Saludo;
Se requieren 1 nuevo servidor para la actualizacion de la aplicacion BRM en Ambiente de Certificacion con Sistema Operativo Windows Server 2016

Sistema Operativo: Windows Server 2016
Ram : 8 GB
Num de cores:4 Core
Almacenamiento : C:\ 100 GB – D:\ 5GB
Ambiente: Cerificacion
IP : 10.8.71.17- entregada bajo la OC 2768388
Nombre : SBMDEBQBRM01V'),
('2768376','3','4','1','2020-07-07 14:07','2020-07-07 14:15','olserran','	Velez Bedoya, Carlos Mario','Se requiere realizar instalancion de Sistema Operativo de Windows Server 2012 los siguientes servidores de PowerBI:
Ambiente Desarrollo
COD: AW1144001
Nombre original IP Nuevo Nombre
SBMDEBDTC01V 10.8.88.8
SBMDEBDTC02V 10.8.88.11
SBMDEBDTC03V 10.8.88.12
SBMDEBDTC04V 10.8.128.16
SBMDEBDTC05V 10.8.128.17
SBMDEBDTC06V 10.8.128.18'),
('2769277','3','4','1','2020-07-07 14:37','2020-07-08 9:09','olserran','	Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBMDEBLA01V 10.8.34.185 contenedor app PRODUCCION
SBMDEBLA02V 10.8.34.186 contenedor app PRODUCCION'),
('2769454','3','4','1','2020-07-07 15:54','2020-07-08 8:52','olserran','Marin Orrego, Carlos Eduardo','Se procede con el apagado de los servidores FISICO que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Servidor aplicativo IP serial

STMDEGAP01 factoring 10.8.34.88 2UX81700K0
'),
('2769472','3','4','1','2020-07-07 14:34','2020-07-08 8:39','olserran','	Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBMDEBBD33 - 10.8.36.134 – Safyr BD produccion
SBMDEBBD34 - 10.8.36.135 – Safyr BD produccion'),
('2775053','3','4','1','2020-07-07 17:36','2020-07-08 8:18','olserran','	Garcia Jaramillo, Maria Margarita','Buenas tardes
Solicito que por favor me ayuden con el retiro de los siguientes usuarios en CyberArk

Ambiente Nombre servidor IP maquina usuario
Produccion PBMDEAPMTA01 10.4.80.54 sacuanti
Produccion PBMDEAPMTA01 10.4.80.54 scuasrv    
Produccion PBMDEAPMTA01 10.4.80.54 scuademo
Produccion PBMDEAPMTA01 10.4.80.54 saserv11
Produccion PBMDEAPMTA01 10.4.80.54 saserv12 
Produccion PBMDEAPMTA01 10.4.80.54 saserv13 

NOTA: Aplicacion Cuantificacion de Riesgo'),
('2774815','3','4','1','2020-07-07 17:01','2020-07-07 17:51','olserran','	Mosquera Martinez, Luz Yadys','Buenas tardes

El objetivo del pedido es cambiar de administrador del perfil de CyberArck para el grupo grppwwolf.

Nombre Administrador Anterior: Lina Maria Restrepo Giraldo
Nombre Administrador Actual: Ana Catalina Cadavid Lopez'),
('2770823','3','4','1','2020-07-08 9:16','2020-07-08 10:27','olserran','	Salazar Restrepo, Carolina','tan amable nos colaboran aumentando 4 Cores a la máquina de certificación de Api Connect (ABMDEBPGWQ01V) con IP: 10.8.151.103.
Finalmente la máquina debe quedar con 8 Cores.
EL PMO que asume los costos es: PMO31280'),
('2764245','3','4','1','2020-07-08 17:25','2020-07-09 10:51','olserran','	Gil Prada, Jesus Alberto','Necesidad: Aprovisionar 02 Servidores Virtuales, Proyecto Upgrade ALM CV10 en ambiente de Producción

Solución: aprovisionar servidores con las siguientes especificaciones:

Nota: Por favor garantizar que el hostname esté en minuscula en todos los servidores
Características de Servidores:

Servidor #1
Ambiente: bancolombia.corp
Name Server: lbmdebpaxm02v
IP:10.8.151.197
VLAN:535
Sistema Operativo: RedHat RedHat Enterprise Linux Server release 7.7
Procesador: 16
Memoria RAM: 64GB
/opt 100GB
/var/log 30GB
Almacenamiento Local distribuirlo de la siguiente manera:
1 FS Adicional en un disco diferente al de línea base así: /opt/axiom 200GB

Servidor #2
Ambiente: bancolombia.corp
Name Server: lbmdebpaxm03v
IP:10.8.151.198'),
('2765586','3','4','1','2020-07-08 19:36','2020-07-09 8:35','olserran','	Naranjo Arias, Santiago','Se requieren 2 nuevos servidores para la actualizacion de la aplicacion Biovoz en Ambiente de Produccion con Sistema Operativo Linux RedHat 7.7

Sistema Operativo: Linux RedHat 7.7
Ram : 8 GB
Num de cores:2 Core
Almacenamiento : Definido por Linea Base
Ambiente: Produccion
IP : 10.8.50.39- entregada bajo la OC 2761926
Nombre : LBMDEBPBV01V


Sistema Operativo: Linux RedHat 7.7
Ram : 8 GB
Num de cores:2 Core
Almacenamiento : Definido por linea Base
Ambiente: Produccion
IP : 10.8.50.40 - entregada bajo la OC 2761926
Nombre : LBMDEBPBV02V'),
('2777996','5','4','1','2020-07-09 11:36','2020-07-09 15:39','olserran','	Arango Ruiz, Cesar Octavio','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2777504','3','4','1','2020-07-09 15:10','2020-07-10 15:28','olserran','Salazar Restrepo, Carolina','Buenos Días
Se requiere apoyo para que a los perfiles de las personas de control de acceso se muestre las máquinas de Datatapower (ABMDEBDDTP02, ABMDEBQDTP02, ABMDEBPDTP03, ABMDEBPDTP04, ABMDEBPDTP05):
JORCALLE
ARVELEZ
AFVASQUE
NATCASTA
ANYROJAS
PAACEVED
JOPRAMIR
DIEALGUT
DANIGRIS
JESCARDO
LVILLA
SJGUTIER
SEAVARGA
EVMENDOZ
FVVELEZ'),
('2778173','3','4','1','2020-07-09 17:47','2020-07-10 10:34','olserran','	Cardeno Cano, Claudia Patricia','Se requiere incluir el siguiente servidor a Cyberark para realiar el acceso a este
Nombre host: SBMDEBPBDIA01V
IP: 10.8.34.152'),
('2769412','3','4','1','2020-07-07 18:01','2020-07-09 18:11','olserran','	Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Ambiente Nombre servidor IP Aplicación Rol
Producción SVMDEBAP02V 10.8.34.233 Ordenes Web Aplicación'),
('2778903','3','4','1','2020-07-09 19:37','2020-07-10 15:05','olserran','	Naranjo Arias, Santiago','Cordial Saludo;
Se requiere acceso al servidor con IP 10.72.189.192 de AWS a traves de CyberArk

cuenta: CNXIPPWA'),
('2776820','3','4','1','2020-07-10 9:58','2020-07-10 11:46','olserran','Marin Orrego, Carlos Eduardo','
(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2779727','3','4','1','2020-07-10 10:46','2020-07-10 16:11','olserran','	Diaz Gomez, Pablo Andres','Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2779605','3','4','1','2020-07-10 10:46','2020-07-10 12:15','olserran','Salazar Restrepo, Carolina','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2780305','3','4','4','2020-07-10 16:25','2020-07-12 11:22','cabarrig','	Alzate Gomez, Dennis Andrea','Realizar cierre de vulnerabilidades en los componentes PSM de CyberArk, relacionadas a los protocolos TLS 1.0 y 1.1
PSM2: SXMDEBPPAM08V - PSM 3: SXMDEBPPAM05V

Beneficio: Cierre de vulnerabilidades y cumplimiento politicas de seguridad Banco

Impacto: No se genera, la actividad se realiza en la ventana de mantenimiento de la aplicación y se realizará reinicio de los nodos PSM2 y PSM3 escalonado que no genera impacto ya que en el reinicio los otros nodos soportan la 4.'),
('2778496','3','4','5','2020-07-10 18:33','2020-07-11 4:55','juliandl','	Munoz Sanchez, Yannick Mauricio','Se requiere realizar la actualización de licencias en Finacle Nequi. A continuación se describe el proceso a seguir:

1. Instalar este archivo usando la utilidad “License Update” del FDM.
2. Tomar “backup” de la tabla TBAADM.LICDT de bases de datos y el nombre de basedatos es FINBDPDB.
3. Borrar los contenidos de TBAADM.LICENSING_DETAILS_TABLE
el sentencia es delete from TBAADM.LICENSING_DETAILS_TABLE;
(commit tanto al paso 2 como al 3)
4. Ejecutar los siguientes comandos en el servidor de aplicación:
export FIN_BANK_ID=1500
exectrusteduser.com sh.com
libx4001
5. Ejecutar los siguientes comandos en el servidor de aplicación
export FIN_BANK_ID=1600
exectrusteduser.com sh.com
libx4001

Paquetes Harvest:
AW1011_FINACLE_BCO_DIG-01728 BD
AW1011_FINACLE_BCO_DIG-01729 APP'),
('2781985','3','4','1','2020-07-13 10:26','2020-07-14 8:50','olserran','Arango Ruiz, Cesar Octavio','Solicito registrar los siguientes servidores del proyecto Edin en CyberArk en todas las cuentas de línea base y cuenta usrtadmi, usrthelp, grptlinte, usrtpdc

Certificación
SERVER SBMDEQSG01V
IP 172.25.127.21

Desarrollo
SERVER SBMDEGSG01V
IP 172.25.127.5

Cuentas:
usrtadmi (grptdetectid)
usrthelp (grptdidhelp)
grptlinte - Linux'),
('2781694','3','4','1','2020-07-13 10:46','2020-07-14 14:18','olserran','	Salazar Restrepo, Carolina','Buenos Días
Se requiere apoyo para que a los perfiles de las personas de control de acceso se modifique la contraseña en las máquinas de Datatapower(ABMDEBDDTP02, ABMDEBQDTP02, ABMDEBPDTP03, ABMDEBPDTP04, ABMDEBPDTP05), en CyberArk:
JORCALLE
ARVELEZ
AFVASQUE
NATCASTA
ANYROJAS
PAACEVED
JOPRAMIR
DIEALGUT
DANIGRIS
JESCARDO
LVILLA
SJGUTIER
SEAVARGA
EVMENDOZ
FVVELEZ

Asignar a Oscar Serrano

Mil gracias!!'),
('2782077','3','4','1','2020-07-13 11:19','2020-07-13 11:47','olserran','	Martinez Vasquez, Victor Andres','Se solicita ingresar el siguiente servidor Productivo en Cyberark con el usuario USRTDBAS.
Servidor: SBMDEQBD09V
IP: 10.8.71.137
Dominio: ambientesbc.lab'),
('2774948','3','4','1','2020-07-13 11:54','2020-07-13 15:28','olserran','	Agudelo, Edinson Eudrey','Aprovisionamiento Servicios Orquestados, solicitado para el usuario: edinagud. Para ver el detalle de la solicitud acceda a través del siguiente vínculo:'),
('2779758','3','4','1','2020-07-13 12:00','2020-07-13 15:20','olserran','	Agudelo, Edinson Eudrey','Aprovisionamiento Servicios Orquestados, solicitado para el usuario: edinagud. Para ver el detalle de la solicitud acceda a través del siguiente vínculo'),
('2733355','3','4','5','2020-07-13 14:06','2020-07-13 14:22','olserran','Uribe Alvarez, Alejandro','Ejercicio Continuidad DR 3 Gestor Web'),
('2783593','3','4','1','2020-07-14 8:42','2020-07-14 12:42','olserran','	Velasquez Atencio, Juan Carlos','Se solicita ingresar el siguiente servidor Productivo en Cyberark Servidor: sitiotransval-rds-pdn-rds.apps.bancolombia.corp
port:50301'),
('2784080','3','4','1','2020-07-14 16:19','2020-07-15 11:09','olserran','Suarez Perez, Belfor Ferney','Se requiere adicionar a CyberArk el acceso al servidor SBMDEBPBDA01V'),
('2784342','3','4','1','2020-07-14 16:22','2020-07-14 17:18','olserran','	Londono Osorio, Anderson','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2783634','3','4','1','2020-07-14 17:14','2020-07-15 8:35','olserran','Marin Orrego, Carlos Eduardo','Los siguientes servidores se requieren eliminar de cyberark
Ambiente Nombre servidor IP
Producción SBMDEBBD30 10.8.36.130
desarrollo Sbmdegpp01v 10.8.69.110'),
('2776287','3','4','1','2020-07-14 19:36','2020-07-15 10:10','olserran','Taborda Gonzalez, Luis Mauricio','Solicitud servidores para HA de PANAGON (clúster)'),
('2785170','3','4','1','2020-07-15 8:30','2020-07-15 10:03','olserran','	Villalobos Ramirez, Ricardo','se solicita la insersion del servidor pbmdebpsp03 a ciberark, y adicionarles los perfiles grptpanplat_ibm, grptpanplat


pbmdebpsp03 - 10.60.3.180'),
('2785880','3','4','1','2020-07-15 10:55','2020-07-15 14:57','olserran','	Apolinar Cruz, Harold Jorge','Se solicita adicionar el siguiente servidor de CAPACITACION a Cyberark con la cuenta usrtodba a la base de datos SIFNCDB para ingresar por el predeterminado y por sqldeveloper

SERVIDOR PBMDEBQDBW05
IP 10.8.73.173
PUERTO 1523
BD SIFNCDB'),
('2786247','3','4','1','2020-07-15 11:45','2020-07-15 15:35','olserran','	Vargas Arana, Carlos Alberto','solicito su colaboracion para el ingreso del usuario oracle

servidor: PBMDEBQBAL01
ip: 10.8.82.222'),
('2786267','3','4','1','2020-07-15 11:49','2020-07-15 16:09','olserran','	Vargas Arana, Carlos Alberto','solicito su colaboracion para el ingreso del usuario oracle
servidor:pbmdebqbal02
ip 10.8.82.228'),
('2784740','3','4','1','2020-07-15 15:21','2020-07-15 16:12','olserran','	Agudelo, Edinson Eudrey','Solicitud eliminación de servidor pbmdebqbal02 ip 10.8.82.228'),
('2786835','3','4','1','2020-07-15 16:35','2020-07-15 17:08','olserran','Londoño Guzman, Juan Esteban','Servidores integración Control M - ClearPath'),
('2778831','3','4','1','2020-07-15 16:40','2020-07-16 9:55','olserran','Londoño Guzman, Juan Esteban','Servidores integración Control M - ClearPath'),
('2786970','3','4','1','2020-07-15 16:47','2020-07-16 8:30','olserran','	Echavarria Areiza, John Anderson','Agregar servidor Windows a CyberArk - Encuenta Valores - HA 1680443'),
('2781959','3','4','1','2020-07-15 19:02','2020-07-16 9:25','olserran','Naranjo Arias, Santiago','Aprovisionamiento de 1 maquina en ambiente de Desarrollo - Aplicacion Biometria'),
('2765886','3','4','1','2020-07-16 9:13','2020-07-16 9:58','olserran','	Arevalo Manzano, Hervin Alexi','Aprovisionamiento de cores (CPU) en el servidor DASH de NOI.

Necesidad:Aprovisionamiento de cores (CPU) en el servidor DASH de NOI.La OC es de uso interno de IBM y no genera costo a Bancolombia.

Solucion: Aprovisionamiento de cores (CPU) en el servidor DASH de NOI.

Beneficio: Garantizar que la plataforma NOI en su componente DASH centralizado temga el mayor rendimiento.

Impacto de la actividad: Medio, No se tiene impacto sobre los servicios del banco, dado que es una plataforma interna de IBM.

Impacto de no hacerse de inmediato la plataforma en la medida que se construyan dashboard y se integren herramientas con Predictive, ELK, GNM, Dynamics, Runbook Automation se presentaran altos consumos de cpu y degradacion del servicio.

Nota: Los cambios NO generan afectación del servicio. No afecta Linea base. No afecta GACDW. No requiere notificaciones a CGM.'),
('2787677','3','4','1','2020-07-16 9:55','2020-07-16 15:16','olserran','	Zapata Restrepo, Maria Paulina','se solicita el ingreso de las siguientes bases de datos a ciber ark

DNS:db-bizbegd-dev.apps.ambientesbc.lab
endpoint: aw1176001-bizagi-beg-dev-rdsd.c2sdzkupvvzq.us-east-1.rds.amazonaws.com
IP: 10.104.23.189
Puerto: 50201
Base de datos: BIZAGIBG
ambiente: desarrollo

DNS: db-bizbega-qa.apps.ambientesbc.lab
endpoint: aw1176001-bizagi-beg-qa-rdsa.c5pv1cenec9x.us-east-1.rds.amazonaws.com
IP: 10.104.27.182
Puerto: 50201
Base de datos: BIZAGIBG
ambiente: certificacion'),
('2787588','3','4','1','2020-07-16 9:55','2020-07-16 11:42','olserran','	Zapata Restrepo, Maria Paulina','se solicita el ingreso de la base de datos de bizagi beg a ciber ark

DNS: db-bizbega.apps.bancolombia.corp
endpoint: aw1176001-bizagi-beg-pdn-rdsa.cqhrsy4dxtj1.us-east-1.rds.amazonaws.com
ip: 10.103.30.233
puerto: 50201
base de datos: BIZAGIBG
ambiente: produccion'),
('2787432','3','4','1','2020-07-16 10:11','2020-07-16 14:53','olserran','	Correa Atehortua, Eliana','Buen día,
Favor eliminar el perfil grptpgbm de CyberArk.
Gracias'),
('2784716','3','4','1','2020-07-16 13:15','2020-07-16 17:27','olserran','	Agudelo, Edinson Eudrey	','Aprovisionamiento Servicios Orquestados, solicitado para el usuario: edinagud. Para ver el detalle de la solicitud acceda a través del siguiente vínculo'),
('2787565','3','4','1','2020-07-16 14:30','2020-07-16 15:28','olserran','	Gaviria Gallego, Juan felipe','Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2787592','3','4','1','2020-07-16 14:30','2020-07-17 8:14','olserran','	Gaviria Gallego, Juan felipe','Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2759330','3','4','1','2020-07-16 14:58','2020-07-16 16:16','olserran','	Alandete Penate, Milton Dairon','(Analista Cyberseguridad) Matricular las maquinas en la herramienta PAM'),
('2787658','3','4','1','2020-07-16 15:02','2020-07-17 9:40','olserran','Osorio Tobon, Andres','Se solicita crear un cuenta de servicio en ciberark, con el fin de automatizar el registro de maquinas desde Vrealize IBM.'),
('2788617','3','4','1','2020-07-16 16:22','2020-07-16 16:46','olserran','	Calderon Florez, Brian Andres','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre'),
('2788038','3','4','5','2020-07-16 18:13','2020-07-18 12:53','nzamudio','Alzate Gomez, Dennis Andrea	','Actualización cliente Performance Navigator iSeries Proyecto Modelo de Gestión de accesos - PMO27873'),
('2762527','3','4','5','2020-07-17 5:28','2020-07-17 8:59','juliandl',' 	Fajardo Casas, Daniel Camilo ','Retorno Evento Real DR Abierto MQ7 Corporativo

Servidores a intervenir.
pbmdebpmeb01
'),
('2789386','3','4','1','2020-07-17 10:17','2020-07-17 14:36','olserran','	Calderon Florez, Brian Andres','Por favor registrar los siguientes servidores :
pbmdebpfin30
pbmdebpfin31
pbmdebpfin32
pbmdebpfin33
pbmdebpfin35
pbmdebpfin36
pbmdebpfin37
pbmdebpfin38
asociados al perfil grpppNequi con las cuenta de usuario usrtanpl.'),
('2790345','3','4','1','2020-07-17 17:03','2020-07-21 9:49','olserran','Cadavid Castro, Santiago','Agradezco por favor ingresar el siguiente servidor a CyberArk LBMDEBQBDB01V (certificación)'),
('2774950','3','4','1','2020-07-17 8:18','2020-07-17 17:44','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Servidor IP app Ambiente'),
('2775875','3','4','1','2020-07-10 11:00','2020-07-17 17:33','olserran','	Marin Orrego, Carlos Eduardo	','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Ambiente Nombre servidor IP Aplicación Rol
Producción SBMDEBBD30 10.8.36.130 Comisiones Base de Datos'),
('2780963','3','4','1','2020-07-17 8:21','2020-07-17 17:38','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Servidor IP app Ambiente

SBMDEBPAUD01V 10.8.51.10 audiosoft Producción'),
('2774137','3','4','1','2020-07-10 10:48','2020-07-17 17:37','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBMDEBPLOT01V 10.8.150.20 lotus Producción'),
('2756527','3','4','1','2020-07-19 8:17','2020-07-20 11:00','olserran','	Fajardo Casas, Daniel Camilo','scripción de la orden   
Se requiere realizar ejercicio de continuidad HA - Cajón 22 pseries

Necesidad: Validar el correcto funcionamiento de HA para el cajón 22 pseries
Se dará inicio con actividades previas 11:00 pm .
Se realizará el apagado del cajón 22, validando que los servicios que allí residen, roten al cajón 21 y continúen funcionando de manera exitosa.'),
('2767320','3','4','1','2020-07-20 10:06','2020-07-21 8:11','olserran','Palacio Mejia, Juan David','Necesidad: Se requiere el formateo del servidor: SBMDEBPRP26V, almacenamiento ( C$ (S.O ), D $ (300 GB), MEMORY RAM 32 GB, 16 Cores.
Beneficio: Se requiere máquina con línea base para instalación de aplicación desde IQBOT´s
Impacto: No hay impacto ya que el servidor no está siendo utilizado por la aplicación'),
('2789584','3','4','1','2020-07-21 9:44','2020-07-21 10:24','olserran','Vargas Arana, Carlos Alberto','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2789598','3','4','1','2020-07-21 9:43','2020-07-21 11:35','olserran','	Vargas Arana, Carlos Alberto','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2789632','3','4','1','2020-07-21 9:44','2020-07-21 10:46','olserran','Vargas Arana, Carlos Alberto','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2775176','3','4','1','2020-07-21 10:33','2020-07-21 14:08','olserran','Gomez Taba, Pablo Arturo','(Analista Seguridad de TI) Eliminar la máquina en Beyond Trust.'),
('2769562','3','4','1','2020-07-21 12:25','2020-07-21 15:34','olserran','	Marin Orrego, Carlos Eduardo','EL SERVICIO PASSWORD SAFE YA NO SE ENCUENTRA PRODUCTIVO DESDE EL 30/06/2020.'),
('2791930','3','4','1','2020-07-21 13:34','2020-07-21 15:19','olserran','Gaviria Gallego, Juan felipe','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2792466','5','4','1','2020-07-21 15:27','2020-07-21 15:51','olserran','Pinilla Cardenas, Dayro Andres','Cordial saludo,
solicito amablemente sea ingresada la Base de datos del Nuevo proyecto Seguros Bancolombia a Cyberark , los datos de conexión son:
Ambiente: Desarrollo.
dbname SEGURDCD
engine postgres
port 5432
host nu0064001-seguros-dev-clusteraurora.cluster-ckfpt7z960ad.us-east-1.rds.amazonaws.com
Muchas gracias!!'),
('2793083','3','4','1','2020-07-22 8:53','2020-07-22 10:24','olserran','Henao Acevedo, Cesar Augusto','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2779987','3','4','1','2020-07-22 10:01','2020-07-22 11:38','olserran','Roman Rosero, Oscar Julian','(Analista Cyberseguridad) Matricular las maquinas en la herramienta PAM'),
('2793374','5','4','1','2020-07-22 10:25','2020-07-22 14:24','olserran','	Quintero Perez, Mauricio','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2793611','3','4','1','2020-07-22 10:39','2020-07-22 16:19','olserran','	Calderon Florez, Brian Andres','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2793080','3','4','1','2020-07-22 10:38','2020-07-22 11:14','olserran','	Sepulveda Marin, Maribet','En el adjunto encontrarán el detalle de los servidores que deben ser retirados del grupo NAC o los que deben ser modificados.

Por favor eliminar las Sedes que Esten en estado 3.'),
('2763110','3','4','1','2020-07-22 13:06','2020-07-22 15:45','olserran','Vargas Navas, Sebastian Orlando','(Ciberseguridad). Adicionar servidor en la herramienta PAM.'),
('2795260','3','4','1','2020-07-23 8:57','2020-07-23 10:58','olserran','Pinilla Cardenas, Dayro Andres','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2794341','3','4','1','2020-07-23 10:53','2020-07-23 16:14','olserran','Diago Perez, Francisco Andres','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2794364','3','4','1','2020-07-23 10:53','2020-07-23 16:06','olserran','	Diago Perez, Francisco Andres	','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2785054','3','4','1','2020-07-23 11:31','2020-07-23 14:49','olserran','Naranjo Arias, Santiago','(Analista Cyberseguridad) Matricular las maquinas en la herramienta PAM'),
('2784603','3','4','1','2020-07-23 11:59','2020-07-23 14:02','olserran','	Gomez Velez, Andres	','(Analista Cyberseguridad) Matricular las maquinas en la herramienta PAM'),
('2794155','3','4','1','2020-07-23 10:53','2020-07-23 16:11','olserran','	Diago Perez, Francisco Andres','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2796172','3','4','1','2020-07-23 16:01','2020-07-23 17:32','olserran','	Naranjo Arias, Santiago','Cordial Saludo,

Se requiere ingresar el Servidor LBMDEBDBM01V - IP : 10.8.163.40 a CyberArk'),
('2777552','3','4','5','2020-07-23 16:40','2020-07-24 8:56','nzamudio','	Morales Avila, Andres Antonio','Probar el disaster recovery en IBM calle 100 de los servicios de Filiales del exterior traslados desde GBM a niquia (DR Peru a DR Bogota)
Se subiran servidores en IBM y servicios de Base de datos y aplicacion para verificar funcionamiento luego del montaje de la replica
FECHAS Y HORAS DE LA ACTIVIDAD
INICIO ACTIVACION: Martes 21 de Julio 8:00 am
FIN RETORNO: Viernes 24 de Julio 4:00 p.m


MAQUINAS Y SERVICIOS DE FILIALES DEL EXTERIOR

pbmdebpfmq04 BUS FE
SBMDEBPBDD12V Cumplimiento FE Panama
SBMDEBPCUP01V Cumplimiento FE Panama'),
('2791662','3','4','1','2020-07-23 18:38','2020-07-24 9:03','olserran','Alandete Penate, Milton Dairo','Se tiene la necesidad de aprovisionar nuevamente la maquina SBMDEQBD09V la cual fue dada de baja y eliminada por error orden de cambio 2745442, es indispensable que conserve el mismo nombre direccionamiento y Sistema Operativo 2012 .R2 Standard.

Código AW0826001
Nombre SBMDEQBD09V
Windows server 2012 R2 STD
Dirección IP 10.8.71.137
VLAN 616'),
('2776456','3','4','5','2020-07-24 7:22','2020-07-27 9:16','nzamudio','Fajardo Casas, Daniel Camilo','Implementación Cambio
Ejercicio de continuidad DR Abierto servicio SAP BI (BW)-Colombia'),
('2795675','3','4','4','2020-07-24 10:43','2020-07-26 17:57','olserran','	Alzate Gomez, Dennis Andrea','Implementación Cambio
Vulnerabilidades en el PVWA2-SXMDEBPPAM02V.'),
('2793713','3','4','4','2020-07-24 10:28','2020-07-25 17:52','olserran','	Alzate Gomez, Dennis Andrea','Modificación ruta de almacenamiento de la Boveda'),
('2791265','3','4','1','2020-07-24 11:01','2020-07-24 14:45','olserran','	Marin Orrego, Carlos Eduardo','(Analista Seguridad de TI) Eliminar la máquina en Beyond Trust.'),
('2798601','5','4','1','2020-07-24 20:45','2020-07-25 16:34','olserran','Zapata Espinosa, Alexis Ernesto','Se requiere matricular a CiberArk la siguiente instancia de base de datos PostgreSQL para ingresar a ella mediante Pgadmin4 y consola pgsql:

HOST: nu0026002-skynet-pdn-id.ch4mwk6xffcj.us-east-1.rds.amazonaws.com
IP: 10.103.94.247
Motor de base de datos: PostgreSQL
Nube: AWS RDS
Puerto:50000
Ambiente: Produccion'),
('2798543','5','4','1','2020-07-24 20:08','2020-07-25 16:36','olserran','	Zapata Espinosa, Alexis Ernesto','Se requiere matricular a CiberArk la siguiente instancia de base de datos PostgreSQL para ingresar a ella mediante Pgadmin4 y consola pgsql:

HOST: nu0026001-medios-de-pago-transversal-pdn-clusteraurora.cluster-ch4mwk6xffcj.us-east-1.rds.amazonaws.com
IP: 10.103.95.86
Motor de base de datos: Aurora PostgreSQL
Nube: AWS RDS
Puerto:5432
Ambiente: Produccion'),
('2744160','3','4','5','2020-07-27 6:14','2020-07-27 8:52','nzamudio','Lopez Trejos, Mauricio','Ejercicio de Continuidad TI DR Abierta - Gestión Fraude (Modeler)
Ejecutar ejercicio de continuidad de Modeler validar el correcto funcionamiento de su implementación en alta disponibilidad y de recuperación ante desastre en el datacenter de Calle 100 IBM
 
Escenarios:
1. ACTIVACIÓN:
Domingo 26 de julio de 2020, hora 12:00 am – 1:40 am
Se activa el HA servidores de BD en Niquia - Calle 100 y Web en Niquia
2:00 am – 3:40 am
Se apagan los servidores de base de datos y sitio web en Niquia.
Se suben los servidores de base de datos y sitio web en calle 100'),
('2799709','3','4','1','2020-07-27 12:00','2020-07-27 15:41','olserran','Camacho Bravo, Jose Mauricio','Se requiere ingreso en Cyberark por Developer, Sqlplus para la BD CONSOLATENCIAFE, DESARROLLO Y CERTIFICACION
Servidor: LBMDEBDBDC01V
Ip: 10.8.141.134
Servidor: LBMDEBQBDC01V
Ip: 10.8.137.205
Puerto: 51529'),
('2800006','5','4','1','2020-07-27 14:16','2020-07-28 13:14','olserran','Gomez Villa, Esteban	',' registrar los servidores lbcldwpcm01 y lbcldwpcm02 con IP 10.103.64.20 y 10.103.71.20 respectivamente con la cuenta USRTADMI para que se le presente al perfil grpplcontrolm_admin. Muchas gracias por su ayuda.'),
('2763185','3','4','1','2020-07-27 16:30','2020-07-27 16:49','olserran','	Vargas Navas, Sebastian Orlando','Se requiere el aprovisionamiento de los siguientes servidores para cubrir la obsolesencia de SO sobre los servidores no productivos de murex, en el ambiente "Performance 1"

Se va a dar de baja los servidores anteriores con SO 6.10 y se re aprovisionarán con SO 7.7'),
('2800155','3','4','1','2020-07-27 18:19','2020-07-28 8:19','olserran','Pacheco Cardenas, Carlos Arturo','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2797682','5','4','1','2020-07-27 18:31','2020-07-28 8:54','olserran','	Diago Perez, Francisco Andres','
(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2797732','5','4','1','2020-07-27 18:31','2020-07-28 8:55','olserran','Diago Perez, Francisco Andres','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2799894','5','4','1','2020-07-27 18:33','2020-07-30 15:51','olserran','Zapata Espinosa, Alexis Ernesto','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2799910','5','4','1','2020-07-27 18:32','2020-07-28 8:12','olserran','Zapata Espinosa, Alexis Ernesto','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2790114','3','4','1','2020-07-28 8:08','2020-07-28 10:08','olserran','Agudelo, Edinson Eudrey','Solicitud Eliminación servidor de gestion documental PBMDEAPECM08

Se require por parte de la celula OBELIX y servicio gestión documental

- Descripción: Apagado y Eliminación del servidor de banco de imágenes PBMDEAPECM08 para poder continuar con la jubilación de UCM.

ip a entregar

10.4.80.72
7.2.9.6
7.2.0.55
10.9.130.46'),
('2800482','3','4','1','2020-07-28 9:06','2020-07-28 10:10','olserran','	Marin Orrego, Carlos Eduardo','Buenas tardes
por favor eliminar los siguientes servidores de cyberark
Target system address servername
10.8.71.15 SBMDECSI05
10.8.72.126 sbmdecsi07v
10.8.69.11 SBMDEDWB01V'),
('2801024','3','4','4','2020-07-28 8:57','2020-07-29 4:46','cabarrig','	Alzate Gomez, Dennis Andrea','Cierre de vulnerabilidades CyberArk -PVWA2-SXMDEBPPAM02V
Solución: Realizar la instalación de los KB de Microsoft para remediar las vulnerabilidades'),
('2799818','3','4','1','2020-07-28 10:02','2020-07-28 14:13','olserran','	Garcia Jaramillo, Maria Margarita','Solicito que por favor me ayuden para que el siguiente grupo CyberArk grptpsapb quede a nombre de Jaime Eduardo Marulanda Lopez <JAIMARUL@bancolombia.com.co>
Muchas gracias'),
('2800896','3','4','1','2020-07-27 9:04','2020-07-28 10:17','olserran','Gonzalez Alvarez, Jesus Alberto','
Favor crear el perfil "Cloud_grpplepp " el cual va a ser usado para ingresar a los servidores linux de Antivirus en AWS, , jefe aprobador ANRIVAS.'),
('2801726','3','4','1','2020-07-28 12:53','2020-07-28 15:04','olserran','Uran Salazar, Elizabeth','Buenos días, por favor me colaboran retirando los permisos del usuario usrtsecu de los servidores PTMDEBDAMQ01 y PTMDEBQAMQ01 dado que estos son servidores de Banistmo, los cuales no son administrados desde mi área y desconozco la razón por la cual nuestro usuario tiene permisos.'),
('2801884','3','4','1','2020-07-28 17:21','2020-07-28 17:51','olserran','Alandete Penate, Milton Dairo','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2791260','3','4','1','2020-07-29 9:28','2020-07-29 10:33','olserran','	Marin Orrego, Carlos Eduardo','Buenas tardes.

Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBMDEBMS01 (10.8.41.25) orquestador produccion
SBMDEBMS02 (10.8.41.26) orquestador produccion
SBMDEBMS07 (10.8.41.77) cluster produccion'),
('2802842','3','4','4','2020-07-29 9:33','2020-07-29 15:31','nzamudio','	Alzate Gomez, Dennis Andrea','Necesidad: Realizar la actualización del cliente Performance Navigator a la versión 19.1 en los componentes de CyberArk

Beneficio: Garantizar la 1idad de este conector ya que la versión instalada esta fuera de soporte.

Impacto: No se genera, la actividad no requiere reinicio.'),
('2788078','3','4','1','2020-07-29 10:29','2020-07-29 11:44','olserran','	Herrera Cabrera, Axel','Como parte del Habilitador 1661293 necesitan aprovisionar un servidor de Producción para BRM con las siguientes specs:

SBMDEBPBRM01V

SO: Windows Server 2016
CPU: 6 Cores
RAM: 8 GB
Discos: [C:\ 100 GB] [D:\ 5 GB]
Dirección IP: Cualquiera disponible en la VLAN 1338.

Código AW1166001.'),
('2790443','3','4','1','2020-07-29 10:46','2020-07-29 11:26','olserran','Marin Orrego, Carlos Eduardo','Buenas tardes.

Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SVMDEBAP04 – 10.8.150.86 – SAE-produccion
SVMDEBAP05 – 10.8.150.87 – SAE-produccion
SVMDEBAP06 – 10.8.150.88 – SAE-produccion
SVMDEBAP00 – 10.8.150.84 – SAE-produccion'),
('2803797','3','4','1','2020-07-29 15:40','2020-07-31 11:23','olserran','Gonzalez Hernandez, Darwin Leon','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2780866','3','4','1','2020-07-29 9:25','2020-07-30 9:35','olserran','Marin Orrego, Carlos Eduardo','Tarea no aplica - Password Safe salió de producción.

 por favor no generar alertas y retirar de cualquier consola, programación o reporte



Servidor aplicativo IP serial

SBMDEBCSTT stratus 10.10.220.99 N/A'),
('2794327','3','4','1','2020-07-30 9:28','2020-07-30 9:43','olserran','	Bustillo Beltran, Ismael Jose','Para realizar la configuración de Multi Tenants sobre el Almacenamiento para Respaldos DD6900-MDE, el proveedor Dell me está solicitando el despliegue de una OVA DDMC (Data Domain Management Central) encargado de las tareas de Monitoreo y Administración del DataDomain. En el Adjunto relaciono sustentación de la OVA. En el siguiente FTP se encuentra la OVA:
https://ftp.emc.com/action/login?domain=ftp.emc.com&username=NA1pmCmMxA&password=8sjNj8BBBB'),
('2804806','3','4','1','2020-07-30 11:00','2020-07-30 21:12','olserran','	Galeano Zuluaga, David','Buenos días, por favor crear las siguientes bovedas que se le presenten al perfil grptbovsucursales ver archivo adjunto.'),
('2793086','3','4','5','2020-07-30 11:42','2020-07-30 14:13','nzamudio','	Mazo Chanci, David Efrain','PMO29771 - Proyecto Obsolescencia Valores 2020 - Migración del servidor de aplicación - Eureka'),
('2805151','3','4','1','2020-07-30 12:09','2020-07-30 15:55','olserran','Henao Acevedo, Cesar Augusto','Se requiere ingreso en Cyberark por Developer, Sqlplus para la BD CONSOLA TECNICA FE, DESARROLLO Y CERTIFICACION
Servidor: LBMDEBDBDC01V
Ip: 10.8.141.134
Servidor: LBMDEBQBDC01V
Ip: 10.8.137.205
Puerto: 51529'),
('2804556','3','4','1','2020-07-30 12:10','2020-07-31 14:54','olserran','	Zapata Espinosa, Alexis Ernesto','Se requiere matricular a CiberArk la siguiente instancia de base de datos PostgreSQL para ingresar a ella mediante Pgadmin4 y consola pgsql:

HOST: nu0026001-medios-de-pago-transversal-pdn-clusteraurora.cluster-ch4mwk6xffcj.us-east-1.rds.amazonaws.com
IP: 10.103.95.86
Motor de base de datos: Aurora PostgreSQL
Nube: AWS RDS
Puerto:5432
Ambiente: Produccion'),
('2804615','3','4','1','2020-07-30 12:10','2020-07-30 16:37','olserran','Zapata Espinosa, Alexis Ernesto','Se requiere matricular a CiberArk la siguiente instancia de base de datos PostgreSQL para ingresar a ella mediante Pgadmin4 y consola pgsql:

HOST: nu0026002-skynet-pdn-id.ch4mwk6xffcj.us-east-1.rds.amazonaws.com
IP: 10.103.94.247
Motor de base de datos: PostgreSQL
Nube: AWS RDS
Puerto:50000
Ambiente: Produccion'),
('2805183','3','4','1','2020-07-30 15:31','2020-07-31 9:06','olserran','Diago Perez, Francisco Andres','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2800693','3','4','1','2020-07-30 16:44','2020-07-31 16:41','olserran','	Gallego, John Carlos','Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2805371','3','4','1','2020-07-30 16:45','2020-07-31 9:57','olserran','Gallego, John Carlos','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2804240','3','4','1','2020-07-31 15:18','2020-07-31 17:22','olserran','Marin Orrego, Carlos Eduardo','(Analista Seguridad de TI) Eliminar la máquina en Beyond Trust.'),
('2807471','3','4','1','2020-07-31 16:54','2020-07-31 18:32','olserran','	Palacio Isaza, Edwin','Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2807585','3','4','1','2020-07-31 16:54','2020-07-31 18:31','olserran','	Palacio Isaza, Edwin','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2803300','3','4','1','2020-07-31 17:19','2020-07-31 18:59','olserran','	Osorio Tobon, Andres','(Ciberseguridad). Adicionar servidor en la herramienta PAM.')

--tabla oc septiembre

INSERT INTO oc (id,id_estado,id_prioridad,id_area,fecha_inicio, fecha_fin,responsable,afectados,descripcion)
	VALUES 
('2844122','3','4','4','2020-09-01 11:38','2020-09-01 14:26','nzamudio','Alzate Gomez, Dennis Andrea','Necesidad: Realizar la actualización del cliente Performance Navigator a la versión 19.1 en los componentes de CyberArk

Beneficio: Garantizar la 1idad de este conector ya que la versión instalada esta fuera de soporte.

Impacto:No se genera, la actividad no requiere reinicio.'),
('2804702','3','4','1','2020-09-01 11:59','2020-09-01 14:15','olserran','Arango Ruiz, Cesar Octavio','Buen dia,
Se requiere aprovisionar un servidor físico con SO 2016 para el servicio de Respaldos Factoring y Crédito Hipotecario “Clearpath” esto por obsolescencia del servidor SBMDEBCH03 IP 10.8.0.26 de clearpath con SO 2008 r2, es necesario que este servidor sea físico porque la conectividad con San datamover no es posible realizarse desde un servidor virtual porque no hay conectividad, ya se realizó pruebas con un servidor Virtual 2016 y no fue posible colocarlo en funcionamiento donde es necesario en otro servidor físico en Hitachi donde el servidor SBMDEBCH03 ya se encuentra en HItachi

Ambientes: Productivo
Maquina: SBMDEBPCHP02
Ip: 10.8.0.28
Vlan: 9
SO: Windows 2016 Físico
RAM: 4GB
CPU: 4 Cores
Almacenamiento: C: 100GB + SO línea base
D: 100GB disco
Presentar 1disco de 5Gigas El disco no se debe inicializar, solo se debe presentar
Codigo AWS: _AW0520001 "Factoring / Cartera y Colocaciones_Cartera y Colocaciones (Factoring)_AW0520001"
Nota:
Se debe presentar un disco de 5Gigas El disco se debe presentar en los 2 servidores que
se listan a continuación y el disco no se debe inicializar, solo se debe presentar a las maquina.

CLEAR PATH DLLOS = 10 00 00 90 FA 91 5D C7 Servidor Windows: SBMDEBPCHP02

Se requiere la instalación del servidor por obsolescencia de para el servicios de Respaldos Factoring y Crédito Hipotecario “Clearpath”.
Validación de servicio por :
Arias-Sandoval, Mauricio: correo: Mauricio.Arias-Sandoval@co.unisys.com
Claudia Andrea Rodriguez, correo: claudia.rodriguez@co.unisys.com
Carlos Eduardo Marin Orrego <CAEMARIN@BANCOLOMBIA.COM.CO>'),
('2845177','3','4','1','2020-09-01 15:06','2020-09-01 16:14','olserran','Martinez Suarez, Liza Janet','Buenas tardes, se solicita crear la boveda BCO-P-BV-PL-BO para custodia de usuarios de BO, esta boveda debe ser visible para el perfil grptbovapps'),
('2845720','3','4','1','2020-09-01 16:53','2020-09-02 10:46','olserran','	Zapata Espinosa, Alexis Ernesto','Se requiere matricular a CiberArk la siguiente instancia de base de datos PostgreSQL para ingresar a ella mediante Pgadmin4 y consola pgsql:

HOST: aw1315001-pago-sin-friccion-dev-clusteraurora.cluster-clz5ohluuj8u.us-east-1.rds.amazonaws.com
IP: 10.72.115.29
Motor de base de datos: Aurora PostgreSQL
Nube: AWS RDS
Puerto:5432
Ambiente: Desarrollo
BD: pagoddb
DNS: pago-sin-friccion-dev-rds.apps.ambientesbc.com'),
('2845777','3','4','1','2020-09-01 16:53','2020-09-02 9:21','olserran','	Ruiz Serna, Ricardo Alberto','Retirar cuentas de Conexión de Cyberark las cuales las Bases de Datos fueron Migradas o Retiradas. Se adjunta archivo en Excel con la información de las cuentas que se deben retirar.'),
('2834537','3','4','1','2020-09-01 17:24','2020-09-02 9:19','olserran','	Marin Orrego, Carlos Eduardo','Buenas tardes.
Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte.

NOMBRE IP App AMBIENTE
SBMDEBBV01V 10.8.50.19 BIOVOZ Produccion
SBMDEBBV02V 10.8.50.20 BIOVOZ Produccion
SBMDEBBV03V 10.8.50.41 BIOVOZ Produccion
SBMDEBBV04V 10.8.50.48 BIOVOZ Produccion'),
('2844509','3','4','1','2020-09-02 10:24','2020-09-02 18:16','olserran','Grisales Patino, Jhon Faber','solicita maquina para instalación de ambiente de desarrollo para el servicio de UrbanCode Deploy

Memoria RAM: 8 GB
Core’s: 0,4 (2 virtuales)

Almacenamiento:
Rootvg=80GB
/opt/ibm-ucd=50GB
/db2/db2qurbc=10GB
/db2/db2dump=10GB
/db2/data=80GB
/db2/log_dir=20GB
/db2/log_fail=20GB
/db2/backup=30GB
Sistema Operativo: AIX 7.2

Registrar en DNS:
10.8.80.17 pbmdebddvs01

Registrar en Cyberark:
El servidor debe quedar registrado en CyberArk a los grupos: grptpanplat, grptpanplat_ibm'),
('2847024','3','4','1','2020-09-02 10:51','2020-09-03 8:31','olserran','	Navarro Navarro, Pedro Fernando','Descripción de la orden   
Se requiere que se habilite el acceso a las siguientes maquinas en la grupo: GRPPICOMPUTODCB

Las maquinas son: WASNLSV3 y WASSV3
cuentas de acceso usadas: USRWDCB - USRTOPER'),
('2847531','3','4','1','2020-09-02 15:32','2020-09-03 8:25','olserran','	Cortes Escobar, Alexander','Favor cambiar en ciber ARK el nombre del servidor PBMDEBDDED02 con IP 10.8.80.141 por el nombre PBMDEBDDED02ON'),
('2846866','3','4','1','2020-09-02 16:04','2020-09-02 18:33','olserran','Villegas Gamboa, Guillermo','se requiere corregir el nombre del servidor y la IP de la cuenta del usuario USRTODBA asociada a la instancia de base de datos BP2 pues están erradas y generar errores.

actualmente la IP que aparece es 10.52.2.112 y el nombre de servidor es scan-sapbife

los datos correctos son:
IP: 10.8.19.54
Server-name: scan-sappbw2'),
('2847107','3','4','4','2020-09-03 10:24','2020-09-03 15:21','cabarrig','	Alzate Gomez, Dennis Andrea','Necesidad: Solución de vulnerabilidades servidores CyberArk para cumplimiento de lineamientos de seguridad

Riesgo: No realizar estas instalaciones quedarían expuestos los servidores a problemas de vulnerabilidades externas cómo ataques y programas maliciosos.

Solución: Realizar la instalación de los KB de Microsoft para remediar las vulnerabilidades

Impacto: No se genera impacto, se realizará reinicio en la ventana de mantenimiento y la 4 será atendida por los otros nodos.'),
('2846051','3','4','4','2020-09-03 14:28','2020-09-04 15:11','juliandl','Alzate Gomez, Dennis Andrea','Necesidad: Configuración Bóveda Pirncipal Bancolombia y Satellite Guatemala para establecer relación de confianza y continuar con la instalación de la Boveda Satellite por lo que es necesario realizar reinicio de la bóveda principal.

Beneficio: Continuar con la implemetación en Guatemala de los componentes de CyberARK

Impacto: Se realizará reinicio de la bóveda, el servicio siempre estará disponible, se puede generar intermitencia a de 12:30 a 12:40 del medio día durante la ventana de mantenimiento.'),
('2847612','3','4','1','2020-09-03 11:51','2020-09-04 9:49','olserran','	Cortes Escobar, Alexander','Favor registrar cuenta ciberark nuevo server PBMDEBDDED02 con IP 10.104.156.99 en AWS
Los usuarios de Ciber son CNXNSAPB y el grupo es grptpsapb
CNXNSAPE . los grupos son grptpsape y grptpsapAWS'),
('2848008','3','4','1','2020-09-03 12:12','2020-09-03 15:42','olserran','	Villada Castano, Jorge Hernan','Buenas tardes, cordial saludo. Se requiere actualizar los registros de CyberArk de los servidores indicados en el archivo adjunto en esta orden, para corregir los errores de conexión a las bases de datos Oracle correspondientes.

Gracias.'),
('2848950','3','4','1','2020-09-03 11:51','2020-09-04 10:36','olserran','	Cortes Escobar, Alexander','Favor registrar cuenta ciberark nuevo server lbcldwddbe01 con IP [10.104.157.163] en AWS
Los usuarios de Ciber son:
CNXNSAPB y el grupo es grptpsapb
CNXNSAPE . los grupos son grptpsape y grptpsapAWS
CNXNORAC y el grupo oracle'),
('2841917','3','4','4','2020-09-03 10:13','2020-09-03 10:49','olserran','	Alzate Gomez, Dennis Andrea','Intervención servidores CyberARK - Ingreso a DataCenter Niquia Rack AE43 y Rack AY48'),
('2848724','3','4','1','2020-09-03 15:33','2020-09-03 16:00','olserran','	Atehortua Agudelo, Angel Mauricio','Favor Crear el grupo GRPPINEON- Grupo de Producción ISERIES Proyecto Neon.

El nombre del aprobador de este perfil sera Ruben Dario Cardenas Henao'),
('2848706','3','4','4','2020-09-03 15:56','2020-09-11 9:58','cabarrig','Alzate Gomez, Dennis Andrea','Remediación vulnerabilidades AWS - PVWA1'),
('2839872','3','4','1','2020-09-03 16:47','2020-09-03 17:11','olserran','	Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Servidor IP app Ambiente

LBPAMBPAXM03V 10.8.147.13 FE producción
LBPAMBPAXM04V 10.8.147.14 FE produccion'),
('2834671','3','4','1','2020-09-03 16:54','2020-09-03 17:13','olserran','	Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Fisicos que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


SBBAQOSA01 MXQ543060Y B0521087 HP PROLIANT DL 360 G9 10.40.10.12 SERVIDOR ARCHIVOS BLADE SERVIDOR DE ARCHIVOS HP BLADE
SBBQAMS01 USE21510MJ L0602831 HP PROLIANT ML 330 G6 10.40.10.121 SCCM TORRE OPERATIVO'),
('2849715','3','4','1','2020-09-03 17:06','2020-09-04 9:23','olserran','	Atehortua Agudelo, Angel Mauricio','Se solicita registrar en CyberArk las cuentas de conexión MCXIERSR - NCXIERSR para los servidores Medellín y Nacional. en PRODUCCION
Por favor presentar al perfil GRPPINEON los conectores necesarios para el ingreso a los servidores son mediante los clientes IBM ACCES CLIENTS SOLUTION , ONDEMAND Y MICRO FOCUS EXTRA! X-TREME.'),
('2849945','3','4','1','2020-09-03 18:15','2020-09-04 8:13','olserran','	Cortes Escobar, Alexander','Favor crear los siguientes perfiles
Cloud_grplpsapb
Cloud_grplpsape

El jefe aprobar es Jaime Marulanda- jaimarul'),
('2850035','3','4','1','2020-09-03 18:41','2020-09-04 8:12','olserran','	Pineda Hernandez, Ildefonso Jose','Crear el siguiente perfil CLOUD_GRPLOSAPDB , el aprobador de este perfil es para Jose Luis Montoya'),
('2838123','3','4','1','2020-09-04 13:45','2020-09-04 15:38','olserran','Gomez Ramirez, Francis Adrian','Les informamos que los siguientes servidores de la graja PSeries de producción, que atienden la Base de datos BizagiBEG, pueden ser desmontados, debido a que la infraestructura de esta aplicación ya fue migrada a AWS:

PBMDEBPBIZ04 10.8.59.202
PBMDEBPBIZ05 10.8.59.203
PBMDEBPBIZ11 10.8.59.212

De antemano muchas gracias.

Saludos,'),
('2828562','3','4','1','2020-09-04 13:46','2020-09-04 15:45','olserran','Agudelo, Edinson Eudrey',' Se requiere realizar el desaprovisionamiento de las maquinas de certificación y producción de la plataforma Oracle ECM, la cual se encuentra en servidores pseries.


PBMDEAPECM01
PBMDEAPECM02
PBMDEAPECM03
PBMDEAPECM04
PBMDEAPECM05
PBMDEAPECM06
PBMDEAPECM07

- Nombre: Andres Felipe Cadavid Gutierrez
- Celular: 3042430073
- Extensión: 31093
- Correo: andcadav@bancolombia.com.co
- Epica del proyecto: 1281920
- nombre celula: TID10
- PMO: PMO31419


Direccionamiento ip a entregar

PBMDEAPECM01 10.4.80.77; 7.2.9.53; 7.2.0.153; 1.1.1.45; 10.10.10.19
PBMDEAPECM02 10.4.80.69; 7.2.9.4; 1.1.1.46; 7.2.0.183; 10.9.130.40,
PBMDEAPECM03 10.4.80.78; 7.2.9.54; 1.1.1.43; 7.2.0.52; 10.9.130.41
PBMDEAPECM04 10.4.80.70; 7.2.9.3; 1.1.1.44; 7.2.0.54; 10.9.130.42
PBMDEAPECM05 10.4.80.79; 7.2.9.55; 1.1.1.47; 7.2.0.53; 7.1.5.34; 7.1.5.35; 10.9.130.43
PBMDEAPECM06 10.4.80.71; 1.1.1.48; 7.2.9.5; 7.2.0.82; 10.9.130.44;
PBMDEAPECM07 10.4.80.80; 7.2.9.56; 7.2.0.48; 10.9.130.45;'),
('2831222','3','4','1','2020-09-04 13:46','2020-09-04 15:37','olserran','	Zapata Restrepo, Maria Paulina','Por migración de gestor Perú, se hace devolución de la maquina pbmdebpgep01, y se requiere su eliminación, la base de datos que se encontraba en dicho servidor ya fue dada de baja'),
('2851088','3','4','1','2020-09-04 16:20','2020-09-04 17:24','olserran','	Gallego, John Carlos','Se requiere matricular a Cyber Ark la siguiente instancia de base de datos MySQL para ingresar a ella mediante MySQL Workbench y consola mysql:

HOST: aw1287-credito-pyme-pdn-id.cxhifzzcfvrk.us-east-1.rds.amazonaws.com
IP: 10.72.194.119
DNS: credito-pyme-rds.apps.bancolombia.com
Puerto: 50000
Motor de base de datos: MySQL
Nube: AWS RDS
Ambiente: Producción
Base de Datos: JCNPYPCD

Se comprobó exitosamente que existen los usuarios cnxupcdb y usrtucdb'),
('2850495','3','4','1','2020-09-04 16:51','2020-09-04 17:25','olserran','	Zapata Espinosa, Alexis Ernesto','HOST: nu0020001-contracargos-qa-id.csdkmgtfpmdd.us-east-1.rds.amazonaws.com
IP: 10.72.147.214
Motor de base de datos: MySQL
Nube: AWS RDS
Puerto:50000
Ambiente: Certificacion
DNS : contracargos-qa-rds.apps.ambientesbc.com'),
('2850683','3','4','1','2020-09-04 18:29','2020-09-07 8:45','olserran','	Benjumea Varela, Victor Augusto','Se solicita ingresar los siguientes servidor Productivos en Cyberark con el usuario SQLSERVICE
Servidores: SBMDEBPBDU02V - SBMDEBPBDU03V
IP: 10.8.149.231 - 10.8.149.232
Dominio: bancolombia.corp'),
('2852264','3','4','1','2020-09-07 8:51','2020-09-07 9:17','olserran','	Mantilla Pabon, Gustavo','Se requiere resgistrar los servidores pbmdebqgpf01 y pbmdebqgpf02 en la herramienta de Cyberark.

pbmdebqgpf01 10.8.66.100
pbmdebqgpf02 10.8.66.101'),
('2850667','3','4','1','2020-09-07 12:09','2020-09-07 14:33','olserran','Agudelo, Edinson Eudrey','Aprovisionamiento Servicios Orquestados, solicitado para el usuario: edinagud. Para ver el detalle de la solicitud acceda a través del siguiente vínculo: Detalle del Servicio

IPS asociadas de servicio

pbmdebqbht01 10.8.82.25
pbmdebqbht02 10.8.82.160'),
('2847060','3','4','1','2020-09-07 17:06','2020-09-08 8:06','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores fisicos que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Server Name Model Serial IP
SBMDEGFV42 PROLIANT BL660C G8 MXQ51003KB 10.8.71.135
SBMDEGFV43 PROLIANT BL660C G8 MXQ51003KF 10.8.71.136'),
('2854259','3','4','1','2020-09-08 8:49','2020-09-08 9:56','olserran','	Naranjo Arias, Santiago','Se requiere acceso al servidor con IP 10.72.231.170 de AWS a traves de CyberArk

cuenta: CNXIPPWA'),
('2846825','3','4','4','2020-09-08 8:35','2020-09-10 9:13','nzamudio','Alzate Gomez, Dennis Andrea','Actualización Configuración Bóveda Qradar

Necesidad: Es necesario modificar la configuración para que desde la bóveda se pueden enviar las notificaciones a Qradar correctamente ya que actualmente no se están enviado los datos completos para el monitoreo lógico

Beneficio: Enviar las notificaciones al SOC de manera correcta para realizar el monitoreo logico de los servidores evidenciando los datos correctos.

Impacto: El servicio siempre estará disponible, se puede presentar intermitencia en el horario de 12:20pm a 12:30pm'),
('2853398','3','4','1','2020-09-08 11:53','2020-09-08 16:05','olserran','	Salazar Restrepo, Carolina','Por favor nos colaboran presentando el conector WebGui al perfil grppdpower, en las siguientes máquinas DAtapower:
ABMDEBDDTP02 , ABMDEBQDTP02, ABMDEBPDTP03, ABMDEBPDTP04, ABMDEBPDTP05'),
('2853546','3','4','1','2020-09-08 13:55','2020-09-08 15:49','olserran','	Palacio Isaza, Edwin','Por favor crear el siguiente perfil Cloud_grptpapp en ciberark

Aprobador Omar John Rodriguez Cabarcas'),
('2839947','3','4','1','2020-09-08 16:41','2020-09-08 17:47','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte

Hostname Ip Ambiente Roll
SBMDECAC14 172.30.224.6 Produccion GOLF'),
('2852495','3','4','1','2020-09-08 16:38','2020-09-09 8:04','olserran','	Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte
Servidor IP app Ambiente

svmdedap04v 10.8.101.64 Ordenes Web – Safyr Produccion'),
('2850379','3','4','1','2020-09-08 16:40','2020-09-09 8:02','olserran','Marin Orrego, Carlos Eduardo	','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte
Servidor IP app Ambiente

SBMDEBGD01V 10.8.101.40 Visor ECM Producción
SBMDEBGD02V 10.8.101.41 Visor ECM Producción'),
('2852379','3','4','1','2020-09-08 16:39','2020-09-09 8:03','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte
Servidor IP app Ambiente
SBMDEBGD01V 10.8.101.40 Gestion doc Produccion
SBMDEBGD02V 10.8.101.41 Gestion doc Produccion'),
('2854686','3','4','1','2020-09-08 17:38','2020-09-11 15:59','olserran','Aponte Dominguez, Yibrin Noe','se requiere adicionar el acceso de las bases de datos de la aplicación THANOS ambientes certificacion y desarrollo.

usuario oracle de sistema operativo acceso ssh.

*Adjunto documento detallado.'),
('2855467','3','4','1','2020-09-08 17:33','2020-09-09 8:38','olserran','	Palacio Isaza, Edwin','asignar el usaurio CNXNSIA al grupo Cloud_grptpapp

Aprobador Omar John Rodriguez Cabarcas'),
('2854552','3','4','1','2020-09-08 18:18','2020-09-09 12:00','olserran','	Grisales Patino, Jhon Faber','Se solicita adicionar el usuario CNXIDRTC al grupo grpppadmin_RTC de CyberArk para el servidor PBMDEBDDVS01.

Usuario: CNXIDRTC
Servidor: PBMDEBDDVS01
IP: 10.8.80.17
Grupo: grpppadmin_RTC'),
('2856427','3','4','1','2020-09-09 9:24','2020-09-09 10:37','olserran','	Londono Osorio, Anderson','Se solicita ingresar el siguiente servidor Productivo en Cyberark con el usuario SQLSERVICE.
Servidor: SBWPCLS-D7QM19I
IP: 10.72.232.4
Dominio: BANCOLOMBIA.CORP
PMO30897'),
('2855580','3','3','1','2020-09-09 9:44','2020-09-09 11:43','olserran','	Ocampo Pamplona, Luisa Fernanda','Se solicita ingresar los siguientes servidores de producción a Cyberark con las cuenta SQLSERVICE, USRTSDBA, CNXIPSQL
Servidor: SBMDEBPBDWS07V
IP: 10.8.59.76
Servidor: SBMDEBPBDWS08V
IP: 10.8.59.77
Dominio: Bancolombia.corp'),
('2855956','3','4','4','2020-09-10 8:34','2020-09-11 17:37','juliandl','	Alzate Gomez, Dennis Andrea','Actualización Configuración Bóveda Qradar

Necesidad: Es necesario modificar la configuración para que desde la bóveda se pueden enviar las notificaciones a Qradar correctamente ya que actualmente no se están enviado los datos completos para el monitoreo lógico

Beneficio: Enviar las notificaciones al SOC de manera correcta para realizar el monitoreo logico de los servidores evidenciando los datos correctos.

Impacto: El servicio siempre estará disponible, se puede presentar intermitencia en el horario de 12:20pm a 12:30pm

Se programa nuevamente la actividad debido a que el cambio con la OC 2846825 fue fallido.'),
('2858559','3','4','1','2020-09-10 10:12','2020-09-10 14:44','olserran','Salazar Herrera, Wilson Hernan','Con el propósito de evitar la verificación de las cuentas de los usuarios

USRTTOOL
USRTBKUP
USRTOPER

Se concluyó que la solución era crear una plataforma donde no se ejecute verificación de estas. Por lo anterior se crea esta OC para solicitar e apoyo de dicha creación y aplicarla a todos y cada uno de los servidores AIX de nuestra plataforma y en adelante a los servidores que ingresen y que también tienen dichas cuentas.'),
('2859388','3','4','1','2020-09-10 16:43','2020-09-10 18:36','olserran','De los rios Perez, Pastor Fernando','En CyberArk
Se requiere legalizar el cambio realizado en la plantilla de conexion de la maquina WASDRP (10.60.107.14), el cual consistio en cambiar en la conexion el tipo de seguridad a TLS 1.2.

Gracias'),
('2850402','3','4','1','2020-09-11 9:14','2020-09-11 12:06','olserran','	Velez Bedoya, Carlos Mario','Se requiere aprovisionar dos nuevo sevidores los cuales reemplazan los servidores actuales de Powerbi PDN, por vencimiento de leasing


SBMDEBPPBS03 - 10.8.114.X
SBMDEBPPBS04 - 10.8.114.X


Contacto: Carlos Mario Velez Bedoya <cmvelez@bancolombia.com.co Celular 301 636 3248'),
('2838971','3','4','1','2020-09-11 11:08','2020-09-11 14:18','olserran','	Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Fisico que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte
Servidor IP app Serial

SBCLOAMS01 10.30.225.5 SCC USE148M7V5'),
('2861019','3','4','4','2020-09-11 15:15','2020-09-12 12:50','olserran','Alzate Gomez, Dennis Andrea','Necesidad: Se requiere realizar el cambio para habilitar el registro de log detallado para la integración LDAP y de esta manera identificar el motivo porque la resolución de nombres para el dominio Banistmo no se está completando actualmente.

Beneficio: Si se identifica la causa raíz del error, es posible iniciar acciones para corregir la falla y completar con éxito la integración LDAP con Banistmo

Impacto: La línea a aplicar solo es la habilitación de log detallado por lo que no hay impacto en el servicio.'),
('2860594','3','4','1','2020-09-11 16:11','2020-09-11 16:35','olserran','	Cardeno Cano, Claudia Patricia','Se requiere incluir el siguiente servidor de certificación a Cyberark para realizar el acceso a este
Nombre host (Endpoint): nu0052001-codigos-enrutamiento-qa-id.clyzowbq4izr.us-east-1.rds.amazonaws.com
BD: CODENQDB
Ambiente: Certificación
Motor de BD: PostgreSQL
DNS: codigos-enrutamiento-qa-rds.apps.ambientesbc.com'),
('2860645','3','4','1','2020-09-11 16:13','2020-09-11 16:43','olserran','Ocampo Pamplona, Luisa Fernanda','Se solicita ingresar el siguiente servidor de certificación a Cyberark con la cuenta usrtdbas.
Servidor: SBMDEBQBDD09V
IP: 10.8.72.194
Dominio: Ambientesbc.lab'),
('2855649','3','4','1','2020-09-11 16:23','2020-09-11 16:52','olserran','	Quintero Florez, Luis Eduardo','Se requiere aprovisionar una máquina virtual "OVA" el cual servirá como appliance para instalar posteriormente una imagen con la aplicación FireEye del proyecto SOC
en ambiente de certificacion
No se debe instalar ningún sistema operativo, ya que es una "OVA" y el software se instalará en el momento que nos informen de TSC

DESCRIPCIÓN DEL PROYECTO
En este servidor se va instalar la aplicación para tener capacidades de inteligencia adicionales y probar unas 1idades en Certificacion.
La función que cumplirá el servidor será la de breach Simulator conocido como "VERODIN DIRECTOR" el cual correrá bajo el CentOS esta solución ayudar a revisar la efectividad de los controles (SIEM, EDR, Antivirus) tanto de Endpoint como de red los cuales hacen parte de ciberseguridad.
ESPECIFICACIONES DE HARDWARE

NOMBRE DEL SERVIDOR: ABMDEBQISC01V
AMBIENTE: CERTIFICACION
PROCESADOR: 64-Bit x86 con dos Cores.
MEMORIA: 8 GB
DISCO: 50GB
NETWORK: 2 interfaces de red. 10.8.155.196 (ilo) Vlan 719 Y 10.8.155.212 (administracion o red) Vlan 720

Notas:
• Se adjunta documentación de las especificaciones del server y la imagen de la relación con los componentes a monitorear
• PMO es PMO29559
• Para el análisis de este servidor se conversó con Anyelo y Hugo
• Se envio correo informando de la propagacion de las Vlans


IMPACTO EN EL SERVICIO:
• No hay impacto, por el contrario, busca validar la eficiencia de los controles que se vienen implementando en SOC'),
('2860768','3','4','1','2020-09-11 17:31','2020-09-14 16:08','olserran','Londoño Lopera, Gustavo Alexander','Por favor me pueden ayudar en ingresar el listado de servidores Linux a CyberArk. Estos servidores son Onpremise y que puedan acceder con las cuentas:

Usuarios línea base Linux:
Rol Cuenta local
Administradores sistema operativo usrtadmi - usrtpdc
Usuarios de Control de Acceso usrtsecu
Operadores de Respaldo - Backup TSM usrtoper
Administradores de Respaldo – Backup TSM usrtbkup
Administradores de Herramientas Monitoreo usrttool
Cuenta integración CyberArk cnxiplnx
Cuenta Escaneos Qualys svccum01'),
('2861897','3','4','1','2020-09-14 7:57','2020-09-14 8:20','olserran','Cortes Escobar, Alexander','Favor cambiar en ciber ARK el nombre del servidor PBMDEBQCIE01 con IP 10.8.73.131 por el nombre PBMDEBQCIE01ON
Por migración a AWS'),
('2862188','3','4','1','2020-09-14 11:13','2020-09-15 10:56','olserran','Valencia Mejia, Andres Felipe','se requiere ingrear a cyberark el acceso a la base de datos de Automation Anywhere que esta siendo migrada a la nube de aws'),
('2861612','3','4','1','2020-09-14 14:59','2020-09-14 16:20','olserran','Atehortua Agudelo, Angel Mauricio ','Cambiar Aprobador en el Perfil GRPPINEON - Perfil de Producción ISERIES Proyecto Neon '),
('2864538','3','4','1','2020-09-14 16:53','2020-09-14 17:13','olserran','Foronda Ochoa, Maria Cristina ','Ingresar dominio aws a CiberArk'),
('2865195','3','4','1','2020-09-14 21:01','2020-09-15 9:57','olserran','Cortes Escobar, Alexander ','Registrar cuenta ciberark nuevo server pbmdebqcie01 con IP 10.104.158.61 en AWS

Los usuarios de Ciber son CNXNSAPB y el grupo es cloud_grplpsap'),

('2865891','3','4','1','2020-09-15 11:39','2020-09-15 14:49','olserran','Molina Moreno, Jeferson Yohan','Buen día,
Por favor registrar la cuenta "cnxspiap" para los siguientes servidores pseries:
pbmdebdcas02
pbmdebpihs04
pbmdebpmgr02
pbmdebprec03

Dicha cuenta se le debe presentar al perfil "grptpinteg".

Muchas Gracias!'),
('2865877','3','4','1','2020-09-15 14:49','2020-09-15 17:31','olserran','Cortes Escobar, Alexander','Favor registrar cuenta ciberark nuevo server lbcldwqbde01 con IP 10.104.159.185 en AWS'),
('2840089','3','4','1','2020-09-15 17:21','2020-09-15 17:34','olserran','Marin Orrego, Carlos Eduardo ','Eliminacion servidores 
exmdebpvws01 10.8.97.80 exsxi USE31629C5'),
('2867051','3','4','1','2020-09-16 9:29','2020-09-16 14:19','olserran','	Castrillon Gaviria, Sebastian','Buenas noches, se solicita la creación de una boveda con el nombre BCO-P-BV-PL-NEQUI-SU para custodiar los usuarios privilegiados de nequi, inicialmente se debe crear vacia para posteriormente ingresar los usuarios una vez se realice el cambio de contraseña ,
se le debe presentar al perfil grptbovplataformas.'),
('2866241','3','4','1','2020-09-16 10:19','2020-09-16 14:26','olserran','Apolinar Cruz, Harold Jorge','Se solicita ingresar los servidores (SBMDEBBD61 y SBMDEBBD62) de PRODUCCION a Cyberark con la cuenta SQLSERVICE y USRTSDBA,

SBMDEBBD61 10.8.39.232
SBMDEBBD62 10.8.39.233

Dominio: bancolombia.corp'),
('2866653','3','4','1','2020-09-16 10:22','2020-09-16 17:35','olserran','	Pacheco Cardenas, Carlos Arturo','Registro en Cyberark de la RDS nu0014001-lifecoach-capa-gestion-qa-id.csdkmgtfpmdd.us-east-1.rds.amazonaws.com'),
('2866600','3','4','1','2020-09-16 10:33','2020-09-16 17:32','olserran','	Pacheco Cardenas, Carlos Arturo','Registro en Cyberark del la RDS nu0014001-lifecoach-capa-gestion-dev-id.clz5ohluuj8u.us-east-1.rds.amazonaws.com,'),
('2867201','3','4','1','2020-06-16 16:42','2020-06-17 8:51','olserran','Palacio Isaza, Edwin ','Agregar el siguiente servidor al grupo Cloud_grptpapp usuario de conexion CNXNSIA
PBMDEBDDED02 - 10.104.156.99'),
('2868107','3','4','1','2020-06-16 17:33','2020-06-18 8:46','olserran','Urdaneta Brancho, Dayana Emperatriz ','Modificar el host y motor registrado para esta base de datos, ya que se registro como MYSQL y es oracle
 base de datos NEGFIDDB '),
('2864411','3','4','1','2020-06-16 15:46','2020-06-17 8:33','olserran','Marin Orrego, Carlos Eduardo ','Eliminar la máquina en Beyond Trust. 
sbmdebwf06v -> 10.8.102.79
Sbmdebpwf07v -> 10.8.102.82
sbmdebpwf08v -> 10.8.102.84
sbmdebpwf09v -> 10.8.102.87
sbmdebpwf10v -> 10.8.102.88'),
('2864394','3','4','1','2020-06-16 15:45','2020-06-17 8:23','olserran',' 	Marin Orrego, Carlos Eduardo ','Eliminar la máquina en Beyond Trust. 
sbmdebwf06v -> 10.8.102.79
Sbmdebpwf07v -> 10.8.102.82
sbmdebpwf08v -> 10.8.102.84
sbmdebpwf09v -> 10.8.102.87
sbmdebpwf10v -> 10.8.102.88'),
('2864412','3','4','1','2020-09-16 15:40','2020-06-17 8:40','olserran',' 	Marin Orrego, Carlos Eduardo ','Eliminar la máquina en Beyond Trust. 
sbmdebpwf11v -> 10.8.102.94
Sbmdebpwf12v -> 10.8.102.83
Sbmdebpwf13v -> 10.8.102.85
Sbmdebpwf14v -> 10.8.102.86'),
('2868903','3','4','1','2020-09-17 9:02','2020-09-17 9:41','olserran','Foronda Ochoa, Maria Cristina','Se requiere matricular a Ciberark el siguiente dominio en producción

se indican los datos en las propiedades de la oc'),
('2817716','2','4','5','2020-09-17 9:01',null,'olserran','Bermudez Arbelaez, Freddy','Realizar ejercicio de continuidad DR abierta para el servicio Detect ID
OBJETIVO
======================================
Ejecutar ejercicio de Detect ID soportado en el componente tecnológico pSeries buscando validar el correcto funcionamiento de su implementación en recuperación ante desastre.

FECHAS DE LA ACTIVIDAD
======================================
ACTIVACIÓN: Sábado 26 00:00 03:30 de septiembre 2020
RETORNO: Domingo 27 00:00 03:30 de septiembre 2020

SERVIDORES INVOLUCRADOS EN EL EJERCICIO
======================================
SBMDEBAF02V
SBMDEBAF03V
PBMDEBPDID03
PBMDEBPDID04

AFECTACIÓN
======================================
Durante la activación y retorno ejecución del ejercicio, se tendrá una afectación
en las transmisiones programadas en las fechas y en horarios de 00:00 am a 03:00 am'),
('2859454','3','4','1','2020-09-17 9:48','2020-09-17 12:12','olserran','	Herrera Cabrera, Axel','Como parte del Habilitador 1780788 se necesitan aprovisionar dos servidores App para SIA Producción mediante la modalidad de Versionamiento con estas especificaciones:

LBMDEBPSIA01V y LBMDEBPSIA02V
Sistema Operativo: Linux Red Hat 7.7
RAM: 32 GB
Cores: 10

Filesystems/discos adicionales:

/data2 50GB (montar en el disco primario del SO)
/copylogssia 100GB (disco aparte)

IPs pueden ser las que estén disponibles en la VLAN 1338.
------------
Estos servidores reemplazaran dentro de poco a los bare-metal SBMDEBSI01 [serial USE407S061, IP: 10.8.105.211] y SBMDEBSI02 [serial USE407S05V, IP: 10.8.105.212] que actualmente contienen la solución (Microfocus Identity Manager 4.5). Las specs iniciales se pondran a prueba y ampliaran más adelante de ser necesario con una OC separada.

Octavio A. Sosa está enterado de esta actividad, se acordó con él en reunión del 10/9/2020, 9:00am.
------------
Código AW0881001.'),
('2869055','3','4','4','2020-09-18 11:25','2020-09-19 13:43','cabarrig','Alzate Gomez, Dennis Andrea','Cierre de vulnerabilidades CyberArk- PSM -SXMDEBPPAM08V - SXMDEBPPAM05V
Necesidad: Solución de vulnerabilidades servidores CyberArk para cumplimiento de lineamientos de seguridad

Riesgo: No realizar estas instalaciones quedarían expuestos los servidores a problemas de vulnerabilidades externas cómo ataques y programas maliciosos.

Solución: Realizar la instalación de los KB de Microsoft para remediar las vulnerabilidades

Impacto: No se genera impacto, se realizará reinicio en la ventana de mantenimiento y la 4 será atendida por los otros nodos.'),
('2868993','3','4','4','2020-09-18 11:25','2020-09-20 14:23','cabarrig','Alzate Gomez, Dennis Andrea','Cierre de vulnerabilidades CyberArk AWS- PSM -SXMDEBPPAM04V
Necesidad: Solución de vulnerabilidades servidores CyberArk para cumplimiento de lineamientos de seguridad

Riesgo: No realizar estas instalaciones quedarían expuestos los servidores a problemas de vulnerabilidades externas cómo ataques y programas maliciosos.

Solución: Realizar la instalación de los KB de Microsoft para remediar las vulnerabilidades

Impacto: No se genera impacto, se realizará reinicio en la ventana de mantenimiento y la 4 será atendida por los otros nodos.'),
('2869078','3','4','4','2020-09-21 13:53','2020-09-21 14:03','cabarrig','Alzate Gomez, Dennis Andrea','Cierre de vulnerabilidades CyberArk- PSM -SXMDEBPPAM02V
Necesidad: Solución de vulnerabilidades servidores CyberArk para cumplimiento de lineamientos de seguridad

Riesgo: No realizar estas instalaciones quedarían expuestos los servidores a problemas de vulnerabilidades externas cómo ataques y programas maliciosos.

Solución: Realizar la instalación de los KB de Microsoft para remediar las vulnerabilidades

Impacto: No se genera impacto, se realizará reinicio en la ventana de mantenimiento y la 4 será atendida por los otros nodos.'),
('2869096','3','4','4','2020-09-22 15:21','2020-09-22 18:19','cabarrig','Alzate Gomez, Dennis Andrea','Cierre de vulnerabilidades CyberArk- PSM -SXMDEBPPAM03V
Necesidad: Solución de vulnerabilidades servidores CyberArk para cumplimiento de lineamientos de seguridad

Riesgo: No realizar estas instalaciones quedarían expuestos los servidores a problemas de vulnerabilidades externas cómo ataques y programas maliciosos.

Solución: Realizar la instalación de los KB de Microsoft para remediar las vulnerabilidades

Impacto: No se genera impacto, se realizará reinicio en la ventana de mantenimiento y la 4 será atendida por los otros nodos.'),
('2850339','3','4','1','2020-09-17 11:48','2020-09-17 12:48','olserran','	Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Fisico que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Server Name Model Serial IP
EBMDEBAF34-3 C7000 MXQ43501HP 10.8.53.138'),
('2850646','3','4','1','2020-09-17 11:57','2020-09-17 12:50','olserran','Marin Orrego, Carlos Eduardo','
Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Server Name Model Serial IP
EBMDEBAF34-2 C7000 USE419Y83X 10.8.53.152'),
('2850588','3','4','1','2020-09-17 12:01','2020-09-17 12:38','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Fisico que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Server Name ip Serial
SBMDEBSE27 192.168.136.47 USE413V6TV'),
('2853341','3','4','1','2020-09-17 11:50','2020-09-17 12:46','olserran','Marin Orrego, Carlos Eduardo','Cambio en Produccion.Bancolombia.Estandar.Aprovisionamiento.Eliminacion Wintel TCS'),
('2867874','3','4','1','2020-09-17 12:11','2020-09-17 15:10','olserran','	Duran Ruiz, Cesar Augusto','Se requiere matricular a CyberArk la siguiente instancia de base de datos Oracle

HOST: aw1300001-recargas-dev-ref.clz5ohluuj8u.us-east-1.rds.amazonaws.com
RDS Address (DNS): recargas-datical-dev-rds.apps.ambientesbc.com
Puerto: 50000
Motor de base de datos: Oracle
Nube: AWS RDS
Ambiente: Referencia'),
('2868802','3','4','1','2020-09-17 13:20','2020-09-17 14:43','olserran','Sepulveda Marin, Maribet','Muy buenas tardes

En el adjunto se encuentra la actualizacion del estado de servidores NAC a la fecha.'),
('2865256','3','4','1','2020-09-17 14:16','2020-09-17 14:46','olserran','Marin Orrego, Carlos Eduardo ','Eliminar la máquina en Beyond Trust. 
SBMDEBRI03V 10.8.34.7 automatismo produccion'),
('2844689','3','4','1','2020-09-17 14:13','2020-09-17 15:48','olserran','Sosa Correa, Octavio Adolfo ','Se solicita apagar servidor fisico segun solicitud de los administradores del mismo -TCS

SBMDEGFV20 10.8.69.233 USE419Y841 Produccion Hyper-V'),
('2870033','3','4','1','2020-09-17 16:14','2020-09-21 11:56','olserran','Herrera Cabrera, Axel ','Ingresar a los servidores

LBMDEBPSIA01V 10.8.105.203
LBMDEBPSIA02V 10.8.105.204'),
('2869733','3','4','1','2020-09-18 10:39','2020-09-18 14:07','olserran','	Marin Orrego, Carlos Eduardo','Buen dia por favor eliminar los siguientes servidores de la herramienta, se tiene la respectiva orden donde se dieron de baja, por favor hacer el telnet de alcanzabiliadad como medida preliminar antes de ejecutar la eliminación. PUERTO 22

para estos dos servidores solo se requiere actualizar los nombres

ip 10.8.72.19 nombre correcto: LBMDEBQAPM04V Nombre actual: sbmdeghg01v

ip 10.8.72.15 nombre correcto: LBMDEBQAPM03V Nombre actual: sbmdegag02v'),
('2868916','3','4','4','2020-09-18 11:24','2020-09-22 15:03','olserran','Alzate Gomez, Dennis Andrea','Configuración PVWA Banistmo - Proyecto PAM - CyberArk

Necesidad: Habilitar la configuraión de los PVWA de Banistmo para el logueo de los usuarios.

Solución: Establecer el parametro del método de autenticación en Enabled en el archivo web.cof.ini. Este cambio
solo se realiza en los servidores de Banistmo pero con la replicación en la Bóvedas se reflejará en el portal web de Colombia.

Impacto: La actividad no tienen impacto en el servicio.'),
('2869685','3','4','1','2020-09-18 17:03','2020-09-21 8:33','olserran','Jimenez Pacheco, Angel David ','Ingresar el siguiente servidor a CyberArk LBMDEBQBDC02V, esto con el fin de realizar pruebas de concepto en SQLServer en Linux'),
('2870193','3','4','1','2020-09-18 17:05','2020-09-18 17:21','olserran',' 	Suarez Perez, Belfor Ferney ','incluir el siguiente servidor a Cyberark para realizar el acceso a este
SBMDEBPBDM02V
10.8.133.7 '),
('2870629','3','4','1','2020-09-18 17:14','2020-09-21 11:53','olserran','Velasquez Atencio, Juan Carlos ','Ingresar el siguiente servidor desarrollo en Cyberark Servidor: wikiti-rds-rds.apps.bancolombia.corp
port: 50100 Base de Datos: wikitidb'),
('2871557','3','4','1','2020-09-18 17:19','2020-09-21 10:19','olserran','Gomez Taba, Pablo Arturo ','Crear el acceso a la base de datos mur01adb en el servidor SBMDEQBD45V mediante las aplicaciones SQL developer y SQL Plus, desde cyberark a través del usuario usrtodba'),
('2871558','3','4','1','2020-09-18 17:19','2020-09-21 10:12','olserran','Gomez Taba, Pablo Arturo ','Crear el acceso a la base de datos dat01adb en el servidor SBMDEQBD45V mediante las aplicaciones SQL developer y SQL Plus, desde cyberark a través del usuario usrtodba'),
('2871599','3','4','1','2020-09-18 17:20','2020-09-21 10:28','olserran','Gomez Taba, Pablo Arturo ','Crear el acceso a la base de datos mur01adb en el servidor SBMDEQBD46V mediante las aplicaciones SQL developer y SQL Plus, desde cyberark a través del usuario usrtodba'),
('2871600','3','4','1','2020-09-18 17:24','2020-09-21 10:31','olserran','Gomez Taba, Pablo Arturo ','Crear el acceso a la base de datos dat01adb en el servidor SBMDEQBD46V mediante las aplicaciones SQL developer y SQL Plus, desde cyberark a través del usuario usrtodba'),
('2871611','3','4','1','2020-09-18 17:26','2020-09-21 10:42','olserran','Gomez Taba, Pablo Arturo ','Crear el acceso a la base de datos mur01fdb en el servidor SBMDEQBD47V mediante las aplicaciones SQL developer y SQL Plus, desde cyberark a través del usuario usrtodba.'),
('2871612','3','4','1','2020-09-18 18:15','2020-09-21 10:37','olserran','Gomez Taba, Pablo Arturo ','Crear el acceso a la base de datos dat01fdb en el servidor SBMDEQBD47V mediante las aplicaciones SQL developer y SQL Plus, desde cyberark a través del usuario usrtodba'),
('2871635','3','4','1','2020-09-18 20:48','2020-09-21 10:48','olserran','Gomez Taba, Pablo Arturo ','Crear el acceso a la base de datos mur01fdb en el servidor SBMDEQBD48V mediante las aplicaciones SQL developer y SQL Plus, desde cyberark a través del usuario usrtodba'),
('2871636','3','4','1','2020-09-18 20:48','2020-09-21 10:55','olserran','Gomez Taba, Pablo Arturo ','Crear el acceso a la base de datos dat01fdb en el servidor SBMDEQBD48V mediante las aplicaciones SQL developer y SQL Plus, desde cyberark a través del usuario usrtodba. '),
('2871702','3','4','1','2020-09-21 7:17','2020-09-21 11:04','olserran','Taborda Gonzalez, Luis Mauricio ','Por políticas banco y lineamientos de seguridad se solicita por favor el ingreso de los siguientes servidores de App de Automation Anywhere CyberArk

Servidores:
SBMDEBRP06V
10.8.34.247

SBMDEBRP07V
10.8.34.248

SBMDEBPRP10V
10.8.34.74

SBMDEBPRP11V
10.8.34.136
'),
('2866321','3','4','4','2020-09-21 9:18','2020-09-21 14:35','olserran','Agudelo, Edinson Eudrey ','Se requiere realizar el apagado y desaprovisionamiento de las maquinas de BD de producción de la plataforma Oracle ECM, la cual se encuentra en servidores pseries.
- Detalle:
- Servidores: PBMDEBPECM11 y PBMDEBPECM12
- Las Bases de Datos ya se encuentran apagadas'),
('2865533','3','4','4','2020-09-21 10:38','2020-09-21 14:35','olserran','Marin Orrego, Carlos Eduardo ','Eliminar la máquina en Beyond Trust

Servidor IP app Ambiente

SBOGDCMI31 10.60.41.131(NO LIBERAR ESTA IP) murex Produccion
LBMDEBDJMP02V 10.8.127.54 Murex Produccion
LBMDEBDJMP01V 10.8.127.48 app produccion'),
('2872196','3','4','1','2020-09-21 11:32','2020-09-21 17:20','olserran','Velasquez Atencio, Juan Carlos ','Se solicita ingresar el siguiente servidor Certificación en Cyberark Servidor: corona-rds-rds.apps.bancolombia.corp'),
('2873058','3','4','1','2020-09-21 11:33','2020-09-21 15:17','olserran',' 	Mesa Renteria, Jose Fernando ','Se requiere matricular a Ciberark el siguiente dominio en producción'),
('2872884','3','4','1','2020-09-21 12:29','2020-09-21 15:38','olserran','Benjumea Varela, Victor Augusto ','Se requiere acceso al servidor LBMDEBDBDB01V con IP 10.8.163.40 a través de CyberArk '),
('2872629','3','4','1','2020-09-21 15:13','2020-09-21 16:19','olserran','Naranjo Arias, Santiago','Se requiere acceso al servidor con IP 10.72.231.194 de AWS a traves de CyberArk'),
('2866896','3','4','1','2020-09-21 17:30','2020-09-22 9:00','olserran','		Arevalo Manzano, Hervin Alexi','Aprovisionamiento de cores (CPU) y memoria en los servidor de NOI. Proyecto Oficina de transformacion - IBM
'),
('2854463','3','4','1','2020-09-21 18:02','2020-09-22 8:22','olserran','	Agudelo, Edinson Eudrey','Solicitud eliminación servidores datastage FE pbmdebpfds01 pbmdebpfds02 pbmdebpfds03 pbmdebpfds04'),
('2873381','3','4','1','2020-09-22 9:20','2020-09-22 14:20','olserran',' 	Ossa Duque, Jenny Marcela ','ingresada la instancia SQL Server STMDEBPMTDSQL\PAPROSQLCO06 a Cyberark , los datos de conexión son:
Ambiente: Producción
Servidor: STMDEBPMTDSQL (10.5.242.235)
Instancia base de datos: STMDEBPMTDSQL\PAPROSQLCO06
Puerto: 59551
Motor: SQL Server'),
('2873368','3','4','1','2020-09-22 9:19','2020-09-22 14:26','olserran','Ossa Duque, Jenny Marcela ','ingresada la instancia SQL Server STMDEBQMTD01V\PAUATSQLMTD02 a Cyberark , los datos de conexión son:
Ambiente: Certificación
Servidor: STMDEBQMTD01V (10.5.211.110)
Instancia base de datos: STMDEBQMTD01V\PAUATSQLMTD02
Puerto: 65087
Motor: SQL Server'),
('2873338','3','4','1','2020-09-22 9:20','2020-09-22 14:29','olserran','Ossa Duque, Jenny Marcela ','amablemente sea ingresada la instancia SQL Server STMDEBDMTD01V\PADESSQLMTD01 a Cyberark , los datos de conexión son:
Ambiente: Desarrollo
Servidor: STMDEBDMTD01V(10.5.228.7)
Instancia base de datos: STMDEBDMTD01V\PADESSQLMTD01
Puerto: 51097
Motor: SQL Server'),
('2874177','3','4','1','2020-09-22 9:58','2020-09-22 17:02','olserran','Herrera Cabrera, Axel ','Como parte del Habilitador 1780788 se necesita ingresar el servidor A la plataforma de CyberArk:
LBMDEBDBDS05V 10.8.163.58
'),
('2867466','3','4','4','2020-09-22 8:25','2020-09-22 17:01','nzamudio','Alzate Gomez, Dennis Andrea ','Es necesario modificar la configuración para que desde la bóveda se pueden enviar las notificaciones a Qradar correctamente ya que actualmente no se están enviado los datos completos para el monitoreo lógico'),
('2874870','3','4','1','2020-09-22 14:45','2020-09-23 8:08','olserran','Guerrero Gomez, Mauricio','

Solicitamos la colaboración para realizar el cambio de aprobador del perfil grpsoportebd_fe para el usuario: Jose de Jesus Lopez Jimenez (josjlope), quien administra actualmente estos perfiles para el dominio de Filiales del Exterior.'),
('2871048','3','4','1','2020-09-22 17:01','2020-09-23 9:45','olserran','	Marin Orrego, Carlos Eduardo','

Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte'),
('2873894','3','4','5','2020-09-22 18:02','2020-09-23 12:03','nzamudio','	Munoz Sanchez, Yannick Mauricio','Se requiere realizar la actualización de licencias en Finacle Nequi. A continuación se describe el proceso a seguir:

1. Instalar este archivo usando la utilidad “License Update” del FDM.
2. Tomar “backup” de la tabla TBAADM.LICDT de bases de datos y el nombre de basedatos es FINBDPDB.
3. Borrar los contenidos de TBAADM.LICENSING_DETAILS_TABLE
el sentencia es delete from TBAADM.LICENSING_DETAILS_TABLE;
(commit tanto al paso 2 como al 3)
4. Ejecutar los siguientes comandos en el servidor de aplicación:
export FIN_BANK_ID=1500
exectrusteduser.com sh.com
libx4001
5. Ejecutar los siguientes comandos en el servidor de aplicación
export FIN_BANK_ID=1600
exectrusteduser.com sh.com
libx4001

Paquetes Harvest:
APP
AW1011_FINACLE_BCO_DIG-01830

BD
AW1011_FINACLE_BCO_DIG-01831

INDISPONIBILIDAD:
Este paso a producción no generara indisponibilidad ya que se actualizan registros de una tabla nontransaccional'),
('2875407','2','4','5','2020-09-23 8:38',null,'cabarrig','Alzate Gomez, Dennis Andrea ','Solución de vulnerabilidades servidores CyberArk para cumplimiento de lineamientos de seguridad'),
('2875393','3','4','5','2020-09-23 8:45','2020-09-23 14:53','cabarrig','Alzate Gomez, Dennis Andrea ','Solución de vulnerabilidades servidores CyberArk para cumplimiento de lineamientos de seguridad'),
('2872626','3','4','1','2020-09-23 15:24','2020-09-23 16:45','olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


NO LIBERAR IP


Servidor IP app Ambiente

SBMDEBPBDWS07V 10.8.59.76 proxy produccion
SBMDEBPBDWS08V 10.8.59.77 proxy produccion
SBMDEBPBDWS10C 10.8.59.80 proxy produccion'),
('2872854','3','4','1','2020-09-23 15:28',null,'olserran','Marin Orrego, Carlos Eduardo','Se procede con el retiro de los servidores Virtuales que se menciona a continuación. por favor no generar alertas y retirar de cualquier consola, programación o reporte


Servidor IP app Ambiente

SBMDEBPBM01V 10.8.34.26 BIOMETRIA Produccion
SBMDEBPBM02V 10.8.34.27 BIOMETRIA Produccion'),
('2877380','2','4','1','2020-09-23 18:18',null,'olserran','	Ocampo Pamplona, Luisa Fernanda	','Se solicita ingresar el siguiente servidor de certificación a Cyberark con las cuenta sqlservice, usrtdbas
Servidor: SBMDEBQBDWS01V
IP: 10.8.69.38
Dominio: ambientesbc.lab'),
('2877790','2','4','1','2020-09-23 15:28',null,'olserran','	Benjumea Varela, Victor Augusto','Se requiere acceso al servidor LBMDEBDBDS05V con IP 10.8.163.58 a través de CyberArk')

--Docuementacion OC junio
INSERT INTO documentacion_oc(id_oc,fecha,id,documentacion)
	VALUES 
('2691878','2020-05-12 8:19','117','Buen dia, se realiza migración de las cuentas IBM quedando exitosas, queda pendientes las cuentas de control y identidades de acceso.'),
('2704403','2020-06-01 10:26','118','Fallida: Se estuvo pendiente del acceso por medio de CyberArk'),
('2697329','2020-06-03 9:51','119','Se realiza acompañamiento en pruebas.'),
('2727283','2020-06-01 8:32','120','Buenos dias, Estas solicitudes se deben gestionar por la categoria Seguridad Corporativa.Mantenimiento de Cuentas en CyberArk. donde se especifique cuenta y perfil.'),
('2710344','2020-06-01 9:43','121','Buenos dias, Los servidores ya se encuentran conectados en CyberArk.'),
('2711082','2020-06-02 12:35','122','se registra cuenta en CyberArk se crea Safe y se registran instancias, Se esta a la espera de la creación del perfil para otorgar permisos en el Safe para poder visualizar y utilizar la cuenta.'),
('2711083','2020-06-01 17:44','123','Buenas Tardes, Se cancela OC debido a que la categoria de la OC no es la correcta, por favor solicitar la creación del perfil por la categoria Seguridad Corporativa.Mantenimiento de Perfiles de acceso en CyberArk.'),
('2721779','2020-06-01 16:45','124','se realiza eliminación de los servidores AIX 10.52.144.21 PBPAMTPMEB02 y AIX 10.52.144.100 PBPAMTPMEB03 con sus respectivas cuentas.'),
('2727471','2020-06-02 11:44','125','Buenos días, se realiza la eliminación de los servidores con sus respectivas cuentas.

PBPAMTPIHS01.BANCOLOMBIA.CORP
PBPAMTPIHS02.BANCOLOMBIA.CORP
PBPAMTPWAS01.BANCOLOMBIA.CORP
PBPAMTPWAS02.BANCOLOMBIA.CORP'),
('2728712','2020-06-03 9:18','126','Buen dia, se cancela OC debido que al tratar de ingresar al servidor SBMDEBPBDP01V - 10.8.133.140, no posee permisos con la cuenta SQLSERVICE.'),
('2724608','2020-06-02 15:26','127','Buen dia, se valida con el usuario quien informa que el servidor no se debe agregar a CyberArk.'),
('2696391','2020-06-03 8:08','128','Buen dia, el equipo no requiere ser conectado a CyberArk.'),
('2729448','2020-06-03 10:59','129','Buen dia, se realiza eliminación de los servidores con sus respectivas cuentas PBPAMTPWAS03 - PBPAMTPWAS04 de CyberArk.'),
('2703959','2020-06-05 17:27','130','Se toma control de las cuentas de manera exitosa.'),
('2708198','2020-06-03 15:38','131','Buenas Tardes, se realiza eliminación del servidor pbmdebpbst01: 10.8.3.72, con sus respectivas cuentas en CyberArk.'),
('2708216','2020-06-03 15:37','132','Buenas Tardes, se realiza eliminación del servidor pbmdebpbst02 - 10.8.3.73, con sus respectivas cuentas en CyberArk.'),
('2734510','2020-06-03 17:11','133','Se realizan pruebas de conexión quedando en correcto funcionamiento.'),
('2733561','2020-06-04 10:23','134','Buen dia, se realiza eliminación de los servidores y sus respectivas cuentas en CyberArk.

Servidor: PBPAMTPBDI01
Ip: 10.52.144.24
Servidor: PBPAMTPBDI02
Ip: 10.52.144.25'),
('2733976','2020-06-04 10:25','135','Se realiza la eliminación del servidor y sus respectivas cuentas de CyberArk.

pbpamtpnim01'),
('2731604','2020-06-04 16:42','136','Buenas tardes, Se elimina servicor de CyberArk con sus respectivas cuentas. lpbmdebdbsh01 - 10.8.64.79'),
('2713297','2020-06-05 8:08','137','Buen dia, se realiza eliminación de los servidores y sus respectivas cuentas en CyberArk.

PBMDEBPBIZ09 10.8.146.135
PBMDEBPBIZ10 10.8.146.136'),
('2732669','2020-06-05 8:06','138','Buen dia, se realiza eliminación de los servidores con sus respecivas cuentas en CyberArk.

pbpamtptsm02 y pbpamtptsm03'),
('2736703','2020-06-05 14:51','139','Buen dia, se cancela OC debido a que no se cuentan con los servidores para realizar las pruebas, se atendera con Otra OC'),
('2737318','2020-06-08 8:35','140','La Analista Tatiana Blando informa que no se tiene claridad de la solicitud, se escalara el tema con el usuario para determinar el alcance de incluir la cuenta a CyberArk.
Enviara correo al usuario.'),
('2737294','2020-06-05 12:36','141','Buen dia, se agrega servidor a la cuenta SQLSERVICE, se realiza prueba de conexion quedando en correcto funcionamieto.'),
('2738142','2020-06-05 20:13','142','Buen dia, se realiza el acompañamiento de la actividad, se realiza prueba de accesos en los servidores luego de cambiar las IPS y la conexión es exitosa.'),
('2737545','2020-06-10 8:26','143','Buen dia, se realiza toma de control de las cuentas de manera exitosa.'),
('2731942','2020-06-08 14:04','144','Buen día, se realiza la creación del perfil en CyberArk, se debe esperar a la replicación en USM para que aparezca el perfil.'),
('2730163','2020-06-08 15:52','145','Buen dia, se realiza la validación y no es necesario conectar el servidor.'),
('2736492','2020-06-08 15:52','146','Buen dia, se realiza la validación y no es necesario conectar el servidor.'),
('2739938','2020-06-09 11:44','147','Buen día, se realiza la creación del perfil grptpsapAWS, se está a la espera de la OC para crear Safe y mover los servidores y mostrarlos al nuevo perfil.
Se debe esperar la replicación de USM para que aparezca el perfil.'),
('2717597','2020-06-11 12:08','148','No fue requerida intervención de Cyberark.'),
('2741864','2020-06-09 16:19','149','Buenos dias, Se crean safe y se presentan al perfil grptpsapAWS

Para estos el usrtsape:
BCO-D-SRV-AIX-USRTSAPE-AWS
pbmdebdbox01 --pbmdebdded02 - pbmdebqcie01 - - pbmdebqcie02 - -

BCO-P-SRV-AIX-USRTSAPE-AWS

pbmdeapase01 - pbmdeapase02 - pbmdeapase03 - pbmdeapcse02 - pbmdeaprse01

Para estos el oracle:

BCO-D-SRV-AIX-ORA-SAP-AWS

pbmdebdbox01 pbmdebdded02 - pbmdebqbds01 - pbmdebqbds02 - pbmdebqbds05 - pbmdebqbds06-pbmdebpbde01 - pbmdebpbde02'),
('2723669','2020-06-10 14:10','150','Buen dia, se valida con el usuario el cual informa que no se deben conectar a CyberArk.'),
('2720716','2020-06-10 12:03','151','Buen dia, se registran servidores

xbmdebpbsh01 10.8.77.11
xbmdebpbsh02 10.8.77.12

Con las cuentas usrtadmi - usrtibm, al tratar de conciliar las cuentas arroja error de conectión attemp, por favor validar que los servidores se encuentren encendidos.'),
('	2744032','2020-06-11 15:42','152','Les informamos que la actividad terminó y los servidores se encuentran operativos nuevamente.
El cambio fue exitoso en los componentes PSM1 y PSM3, el servicio recibe solicitudes de conexión sin ningún inconveniente.

Se valida con el ingeniero Carlos Barriga en donde indica que el servidor NIQUIA.PSM1 se incrementa en 16 GB para un total de 48GB y NIQUIA.PSM3 se incrementa en 32GB para un total de 64GB.

Se adjunta correo al caso.'),
('2744548','2020-06-11 13:54','153','Buen dia, se realiza cambio de jefe aprobador del perfil camaguti, se debe esperar a la replicación de usm para que se refleje el cambio.'),
('2744537','2020-06-11 14:51','154','Buen dia, se realiza el registro del servidor con las cuentas correspondientes, se realiza prueba de conexión quedando funcional.'),
('2738793','2020-06-11 12:07','155','Buen dia, se realiza validación con el usuario quien informa que no se debe conectar el servidor en CyberArk.'),
('2737419','2020-06-11 12:07','156','Buen dia, se realiza validación con el usuario quien informa que no se debe conectar el servidor en CyberArk.'),
('2746543','2020-06-12 9:26','157','Buen dia, se registra servidor con la cuenta SQLSERVICE, se realizan pruebas de conexión las cuales son exitosas, se adjunta evidencia.'),
('2746570','2020-06-12 14:48','158','Buen dia, se realiza el registro de las cuentas y el servidor para la base de datos, al tratar de tomar control de la cuenta no se tiene alcance, se valida con el area de firewall quien informa que no existe regla y se deben solicitar los permisos desde CyberArk al puerto y segmento del servidor.

El usuario solicitara los permisos y cuando esten otorgados se tomara control de las cuentas.'),
('2745315','2020-06-12 14:57','159','Buen dia, se eliminan servidores de CyberArk con sus respectivas cuentas.

pbmdeaqend01 - 10.8.64.78
pbmdebqald04 - 10.8.64.94
PBMDEBQALD05 - 10.8.64.95
pbmdebdald02 - 10.8.80.139
pbmdebdald03 - 10.8.80.140'),
('2747397','2020-06-12 18:48','160','Buen dia, se realiza cambio de IP en el servidor con la cuenta CNXIXSOP.'),
('2747588','2020-06-12 16:55','161','Buen dia, se cancela OC debido a que el servidor no se encuentra en el dominio y no es posible establecer conexión.'),
('2748700','2020-06-13 19:23','162','1. Se realizo la actualización de firmware inicialmente en la tarjeta principal (board) de manera exitosa
2. Se realiza la actualización de la BIOS de manera exitosa
3. Se realiza la actualización de la ilo de manera exitosa
todos estos componentes actualizados con las actualizaciones entregadas por el fabricante HP.'),
('	2741228','2020-06-17 9:14','163','Buen dia, se valida con el usuario el cual indica que no es necesario ingresar el servidor a CyberArk.'),
('2739661','2020-06-17 9:03','164','Buen dia, No es necesario ingresar los servidores a CyberArk debio a que es una actualización de SO.'),
('	2750369','2020-06-17 8:41','165','Buenos dias,

Se elimina la cuenta CNXIPLNX de los siguientes Servidores en CyberArk.

LBMDEBPDID01V 10.8.5.19
LBMDEBPDID02V 10.8.5.20
LBMDEBPDID03V 10.8.5.21
LBMDEBQDID01V 10.9.25.11
LBMDEBQDID02V 10.9.25.12
LBMDEBQDID03V 10.9.25.13'),
('2751349','2020-06-17 15:12','166','Buen dia, se crea grupo para rotar contraseñas del los servidores pbmdebqrbd01 - pbmdebqrbd02 en RAC "racbd".

Se realiza sincronización de la contraseña quedando en correcto funcionamiento.'),
('2753016','2020-06-18 11:38','167','Buen dia, se registra las cuentas en los servidores, se realizan pruebas de conexión quedando funcional, se adjuntan evidencias.'),
('2751288','2020-06-23 19:00','168','Se realiza cambio de certificado en las Boveda Principal y Boveda satelite de BAM se reinician servicios quedo funcionado correctamente'),
('2750851','2020-06-19 17:07','169','Buenas Tardes, se valida la cuenta oracle y se encuentra configurada en el servidor en CyberArk, se realizan pruebas de conexión por ssh y ftp las cuales son exitosas.

Se informa al usuario que para poder visualizar la cuenta debe estar en el grupo grptosapdb.

Se adjuntan evidencias.'),
('2747954','2020-06-19 16:30','170','Buenas Tardes, se valida con el usuario y no es necesario matricular los servidores en CyberArk.'),
('	2741606','2020-06-23 9:58','171','Buen dia, se eliminan servidores con sus respectivas cuentas de CyberArk.'),
('	2749198','2020-06-23 9:59','172','Buen dia, se eliminan servidores con sus respectivas cuentas de CyberArk.'),
('2730074','2020-06-23 8:13','173','Acompañamiento en la actividad, se realiza acompañamiento y no es necesario realizar ningun cambio, el personal ingresa correctamente a los servidores desde CyberArk.'),
('2738350','2020-06-18 16:07','174','Buen dia, se valida con el usuario quien indica que no se debe conectar a CyberArk.'),
('2743524','2020-06-23 15:55','175','Buen dia, se registra servidor con las cuentas correspondientes, se esta a la espera de los permisos de la cuenta conciliadora CNXIPAIX para tener control de las cuentas.'),
('2748186','2020-06-23 14:37','176','Buen dia, se valida con el usuario quien indica que no se deben conectar los servidores a CyberArk.'),
('2750498','2020-06-23 14:37','177','Buen dia, se valida con el usuario quien indica que no se deben conectar los servidores a CyberArk.'),
('2757413','2020-06-23 12:08','178','Buen dia, el servidor ya se encuentra configurado en la cuenta CNXIXSOP. por tal motivo se cancela OC'),
('2750573','2020-06-17 10:47','179','Buen dia, se registran bases de datos con las ips de los scan, se realizan pruebas de conexión quedando en correcto funcionamiento, se adjunta evidencia.

10.8.73.236
10.8.73.234'),
('	2758708','2020-06-24 10:12','180','Buen dia, se valida y los servidores ya se encuentran conectados en CyberArk, se indica al usuario que el servidor sbmdebrl01
10.8.105.168 esta con la ip 10.8.105.164, se modifica OC y se modifica IP del servidor quedando 10.8.105.168.'),
('2759197','2020-06-24 12:15','181','Buenos dias, se realiza la eliminación del servidor en las cuentas de Windows CNXIXSOP, CNXIXRES, CNXIXALM donde se encontraba resgistrado el servidor.'),
('2759285','2020-06-25 10:27','182','Buen dia, se registran servidores con las cuentas correspondientes, se realizan pruebas de conexión quedando funcional.'),
('2760259','2020-06-25 9:28','183','Buen dia, se registra servidor con la cuenta CNXIXSOP, se realizan pruebas de conexión quedando operativa.'),
('	2759230','2020-06-25 9:11','184','Buenos dias, se realiza eliminación de los servidores y sus respectivas cuentas.'),
('	2760067','2020-06-25 8:47','185','Cordial saludo,
Se solicita la creación de la siguiente bóveda BCO-P- BV-COMMANDLINE-ADMIN la cual se le debe presentar al perfil grptisegti
Esta es una definición de Gerentes de Ciberseguridad para dar solución de forma temporal al Proyecto Sterling. La boveda sera administrada por la Seccion de Controles de Ciberseguridad. El jefe aprobador de este perfil es anrivas
Muchas gracias.
Quedo atenta.'),
('2760893','2020-06-25 15:17','186','Buenos dias, se realiza registro de las cuentas en los servidores, se toma control de la cuenta y se realizan pruebas de conexión las cuales son exitosas, se adjunta evidencia.'),
('2761649','2020-06-26 8:27','187','Buen dia, se registran servidores en cyberark con las cuentas de linea base y oracle, se toma control de las cuentas y se realizan pruebas de conexión evidencia adjunta.'),
('2761045','2020-06-26 12:21','188','Buen dia, se registran servidores en cyberark con la cuenta Oracle y cuentas de linea Base, se realiza pruebas de conexión y se adjunta evidencia.'),
('2762818','2020-06-26 15:30','189','Buenas Tardes, se realiza eliminación de los servidores del archivo Adjunto con sus respectivas cuentas, se elimina chache del servidor y se realizan pruebas de conexión evidencia adjunta.'),
('2754222','2020-06-26 17:31','190','Buenas Tardes se realiza la validación con el usuario y no es necesario conectar el servidor a CyberArk.'),
('2749789','2020-06-26 17:37','191','Buen dia, se realiza validación y no es necesario conectar el server a CyberArk.'),
('2760787','2020-06-28 5:23','192','se realiza acompañamiento de la actividad por parte de CyberArk.'),
('2761006','2020-06-30 8:03','193','Buen dia, se realiza eliminación del equipo PBMDEBDTSM01 con sus respectivas cuentas en CyberArk.'),
('2756805','2020-06-30 11:43','194','Buen dia, se realiza la eliminación de los servidores de CyberArk con sus respectivas cuentas.

PBMDEBPBIZ06 10.8.59.215
PBMDEBPBIZ07 10.8.59.216
PBMDEBPBIZ08 10.8.59.222'),
('2752246','2020-06-30 15:03','195','Buenas tardes, se valida con el usuario y informa que el servidor no debe ir registrado en CyberArk. '),
('2752189','2020-06-30 15:03','196','Buenas tardes, se valida con el usuario y informa que el servidor no debe ir registrado en CyberArk. '),
('2761796','2020-06-30 15:43','197','se eliminan los servidores y sus respectivas cuentas de CyberArk '),
('2765601','2020-06-30 17:27','198','se realiza la validación y eliminación de los servidores con sus respectivas cuentas. 
10.52.63.21 --> lbpamfe01.bancolombia.corp
10.52.63.22 --> lbpamfe02.bancolombia.corp'),
('2761420','2020-06-30 17:40','199','Buen dia el servidor no requiere ser conectado a CyberArk. '),
('2759903','2020-06-30 17:42','200','Buen dia, el servidor se encuentra conectado en CyberArk con la IP 10.8.71.137. ')

--Docuementacion OC julio

INSERT INTO documentacion_oc(id_oc,fecha,id,documentacion)
	VALUES 
('2740154','2020-07-01 10:07','201','Buen dia, los servidores se encuentran registrados en CyberArk, se solicita al usuario otorgar los permisos a la cuenta conciliadora CNXIPLNX para tomar control de las cuentas.

Los permisos los ejecutaran el dia de hoy en la tarde y se realizaran pruebas.'),
('2746154','2020-07-01 8:31','202','Buen dia, los servidores se encuentran conectados en CyberArk y las cuentas estan controladas por CyberArk.'),
('2750462','2020-07-01 10:47','203','Buen dia, se valida con el usuario quien informa que no se deben registrar los servidores en CyberArk.'),
('2766170','2020-07-06 9:33','204','Buen dia, se realiza migración de manera exitosa.'),
('2766316','2020-07-01 12:41','205','Buen dia, se registra servidor 10.8.71.137 con la cuenta SQLSERVICE En ambientes, se realiza prueba de conexión quedando funcional'),
('2767418','2020-07-02 9:00','206','Buen dia, se valida alcance desde CyberArk a los servidores y no se tiene alcance se informa al usuario que se deben solicitar permisos de Firewall a los segmentos de la Aplicación

Segmentos de red cyberark
AWS: 10.72.136.0/25
Onpremise: 10.8.146.208/28'),
('2767225','2020-07-02 8:41','207','Buen dia, se realiza registro de los servidores con la cuenta de CNXIPPWA, se realizan pruebas de conexión quedando en correcto funcionamiento.'),
('2768441','2020-07-02 15:58','208','Buen dia, se realiza el registro del servidor con la cuenta sqlservice en ambientes, se registra IP y se realizan pruebas de conexión.'),
('2729814','2020-07-02 12:18','209','Se realiza ejercicio sin intervención por parte de Cyberark.'),
('2768551','2020-07-02 16:02','210','Buen dia, se realiza el cambio de responde del perfil grpsoportebd_fe
Aprobador de este perfil: JETOBON'),
('2768137','2020-07-02 16:57','211','Comentarios de la tarea   
Buen dia se realiza cambio de aprobador en los siguientes perfiles

grptbovdb
grptbovdb_SAP
grptosapdb
grptBaseDatos_seti
grptBaseDatos_TCS
grptBaseDatos_Banco
grptbovdb_TCS
grppBaseDatos_Sterling
grptbdCore
grptoptim_admin
grptoptim_dba

Se debe esperar a la replicación del dia de mañana de USD para evidenciar el cambio.'),
('2767109','2020-07-02 16:32','212','Buen dia, se realiza eliminación del servidor 10.8.71.79, con sus respectivas cuentas de CyberArk.'),
('2756976','2020-07-03 9:56','213','Buen dia se valida y los servidores se encuentran conectados a CyberArk, se realiza reconciliación de las cuentas y se accede de manera correcta.'),
('2770207','2020-07-03 11:49','214','Buen dia se realiza el registro de los servidores con la cuenta, se realiza prueba de conexión quedando en correcto funcionamiento.'),
('2770133','2020-07-03 14:04','215','Buen dia se registra servidor con la IP P 10.8.69.197 en las cuentas SQLSERVICE y USRTDBAS, se realizan pruebas de conexion quedando operativo.
Se adjuntan evidencias.'),
('2762139','2020-07-06 9:19','216','Buen dia, se registran servidores
lbmdebqaxw01v
10.8.64.78

lbmdebqaxm02v
10.8.64.79

Con cuentas de linea Base en CyberArk.'),
('2752371','2020-07-06 10:20','217','Buen dia, el servidor se encuentra conectado en cyberark con sus respectivas cuentas.'),
('2773117','2020-07-06 18:03','218','Buen dia, se registran servidores en ambientes con la cuenta sqlservice, se realiza prueba de conexión con el usuario quedando funcional.

10.8.71.151 y 10.8.71.133'),
('2764259','2020-07-07 9:39','219','Buen dia, se registra el servidor con las cuentas de linea base, se realiza la validación y no se tiene alcance al servidor, se adjunta evidencia, se informa al usuario para su respectiva validación.'),
('2772069','2020-07-07 8:24','220','Buen dia se realiza eliminación de los servidores en CyberArk con sus respectivas cuentas.'),
('2770235','2020-07-07 14:08','221','Buen dia, se valida con el usuario quien informa que no se debe ingresar a CyberArk.'),
('2768376','2020-07-07 14:15','222','Buen día, se valida con el usuario y los servidores no deben ser incluidos en CyberArk.'),
('2769277','2020-07-08 9:09','223','Buen dia, se realiza la validación y los servidores no se encuentran conectados en SBMDEBLA01V 10.8.34.185 contenedor app PRODUCCION
SBMDEBLA02V 10.8.34.186 contenedor app PRODUCCION.'),
('2769454','2020-07-08 8:52','224','Buen dia, se valida y el servidor no se encuentra conectado en CyberArk.'),
('2769472','2020-07-08 8:39','225','Buen dia se realiza la eliminación de los servidores en las cuentas sqlserve, cnxipsql, USRTSDBA en Windows.
SBMDEBBD33 - 10.8.36.134 – Safyr BD produccion
SBMDEBBD34 - 10.8.36.135 – Safyr BD produccion'),
('2775053','2020-07-08 8:18','226','Buen dia, el servidor 10.4.80.54 no se encuentra conectado en la herramienta CyberArk, ni con las cuentas respectivas.'),
('2774815','2020-07-07 17:51','227','Buen dia, se cambia responsable del grupo quedando ancadavi, se debe esperar a que usm replique para que se vea reflejado el cambio.'),
('2770823','2020-07-08 10:27','228','Buen dia, se realiza la validación con la usuaria y no es necesario conectar el servidor hasta el momento.'),
('2764245','2020-07-09 10:51','229','Buen dia, no se tiene alcance a los servidores desde CyberArk, por favor montar OC cuando se tenga alcance para incluirlos a la herramienta.'),
('2765586','2020-07-09 8:35','230','Buen dia, se valida con el usuario quien informa que los servidores por el momento no se deben incluir a la herramienta, se creara una OC para ingresarlos cuando esten completamente configurados.'),
('2777996','2020-07-09 15:39','231','Buen dia, se cancela pedido debido a que no se tiene alcance desde CyberArk a los servidores.

Se solicitaran permisos por parte del usuario.'),
('2777504','2020-07-10 15:28','232','Buen dia, se realiza la creación de Safes para cada cuenta y se ingresan las cuentas personalizadas en los 5 servidores de DataPower, se configuran permisos para cada perfil personalizado.

Se realizan pruebas de reconciliación y se debe ingresar la primera contraseña a CyberArk para poder realizar el rotado de contraseña.

Se solicitara OC para realizar dicha actividad.'),
('2778173','2020-07-10 10:34','233','Buen dia, se configura servidor con la cuenta sqlservice, se realizan pruebas de conexión quedando funcional.

Nombre host: SBMDEBPBDIA01V
IP: 10.8.34.152'),
('2769412','2020-07-09 18:11','234','Buen dia, se realiza eliminación del servidor en las cuentas SQLSERVICE - CNXIPSQL - USRTSDBA en CyberArk.'),
('2778903','2020-07-10 15:05','235','Buen dia, se conecta servidor a la cuenta y se realizan pruebas de conexión pero no se tiene acceso, se valida con el usuario y no se encuentra el server en la OU correspondiente.'),
('2776820','2020-07-10 11:46','236','Buen dia, se realiza eliminación de los servidores con sus respectivas cuentas de CyberArk.'),
('2779727','2020-07-10 16:11','237','Buen dia, se crea safe para la cuenta y se dan permisos al perfil, se crea cuenta en los servidores, se realizan pruebas de conexión quedando exitosas.

Se adjunta evidencias.'),
('2779605','2020-07-10 12:15','238','Buen dia, se realiza cambio de cuenta, se configura cuenta usrtinte se toma control de la contraseña, se realiza prueba de acceso quedando en correcto funcionamiento.
Se adjunta evidencia.'),
('2780305','2020-07-12 11:22','239','Se realizó el reinicio correctamente ya que se realizaron cambios en el bloqueo del tls 1.0 y 1.1'),
('2778496','2020-07-11 4:55','240','Se realiza acompañamiento sin intervencion.'),
('2781985','2020-07-14 8:50','241','Buenos dias, se realiza el ingreso de los servidores a CyberArk, se configuran cuentas de linea Base, se trata de reconciliar las cuentas pero a la cuenta conciliadora le hace falta permisos para rotar las cuentas, se cierra OC y se validara con el usuario el permiso de la cuenta.'),
('2781694','2020-07-14 14:18','242','Buen dia, se realiza rotado de las contraseñas de las cuentas personalizadas en los equipos de datapower, se realizan pruebas de acceso quedando funcional.'),
('2782077','2020-07-13 11:47','243','Buen dia, el servidor se encuentra conectado a CyberArk pero la cuenta no posee permisos para acceder por RDP, se informa al usuario para que solicite los permisos correspondientes'),
('2774948','2020-07-13 15:28','244','Buen dia, se registra servidor con cuentas de linea base, se toma control de las cuentas quedando en correcto funcionamiento.'),
('2779758','2020-07-13 15:20','245','Buenas tardes, se registran servidor pbmdebqbal01 ip 10.8.82.222, pbmdebqbal02 ip 10.8.82.228 con cuentas de Linea Base de Pseries, se toma control de las cuentas se realizan pruebas de acceso quedando en correcto funcionamiento.'),
('2733355','2020-07-13 14:22','246','Buen dia, se realiza la configuración de los servidores con la ip NAT para tener alcance a los servidores, se verifican cuentas y se realizan pruebas de acceso quedando en correcto funcionamiento.'),
('2783593','2020-07-14 12:42','247','Buen dia, se realiza el registro de la base de datos, se valida ingreso quedando en correcto funcionamiento.'),
('2784080','2020-07-15 11:09','248','Buen dia, se registra servidor con la cuenta SQLSERVICE, Se realiza prueba de conexión y la cuenta no posee permisos de RDP.

Se informa al usuario para poder validar los permisos con los administradores del servidor y realizar pruebas de conexión.'),
('2784342','2020-07-14 17:18','249','Buenas tardes, se registra servidor con la cuenta sqlservice en ambiente, se realizan pruebas de conexión quedando en correcto funcionamiento.

Anexo evidencia'),
('2783634','2020-07-15 8:35','250','Buen dia, se realiza la eliminación del servidor en las cuentas cnxixsop.'),
('2776287','2020-07-15 10:10','251','Buen dia, se registran servidores con nombre con las cuentas SQLSERVICE, CNXIXSOP.

Esta pendiente registrar servidores con IP y validar acceso apenas queden aprovisionados.'),
('2785170','2020-07-15 10:03','252','Buen dia, se registra servidor con cuentas de linea base, se toma control de las cuentas y se valida acceso quedando en correcto funcionamiento.'),
('2785880','2020-07-15 14:57','253','Buen dia, se realiza el ingreso de servidor con la cuenta usrtodba se toma control de la cuenta, se valida acceso a los conectores quedando en correcto funcionamiento.
Se adjunta evidencia.'),
('2786247','2020-07-15 15:35','254','Buen dia, se realiza el ingreso de la cuenta oracle en el servidor, se toma control de la cuenta y se realiza prueba de conexión quedando en correcto funcionamiento.
Adjunto evidencia'),
('2786267','2020-07-15 16:09','255','Buenas tardes, se cancela OC debido a que el servidor se va a eliminar con la OC 2784740.'),
('2784740','2020-07-15 16:12','256','Buen dia, se realiza eliminación del servidor en CyberArk con sus respectivas cuentas.'),
('2786835','2020-07-15 17:08','257','Buen dia, se registran servidores y Bases de Datos con la cuenta usrtodba, se toma control de las cuentas y se realizan pruebas de conexión quedando en correcto funcionamiento.

Se adjuntan evidencias.'),
('2778831','2020-07-16 9:55','258','Buen dia, se realiza el ingreso del servidor con la cuentas de linea base, se toman cuentas y se realiza validación de acceso'),
('2786970','2020-07-16 8:30','259','Buen dia, se realiza el ingreso del servidor con la cuenta cnxixsop, se realizan pruebas de conexión quedando operativo.

Adjunto evidencias.'),
('2781959','2020-07-16 9:25','260','Buenos dias, se realiza la validación con el usuario y informa que no es necesario ingresar los equipos a CyberArk.'),
('2765886','2020-07-16 9:58','261','Buen dia, se realiza validación y el servidor ya se encuentra conectado a CyberArk.'),
('2787677','2020-07-16 15:16','262','Buen dia, se realiza el registro de los dos servidores oracle, se valida con la usuario ya que el servidor db-bizbegd-dev.apps.ambientesbc.lab no responde quien informa que se encuentra apagado y sera encendido en los proximos dias.
Se realiza pruebas de conectividad en el otro servidor quedando operativo. se adjunta evidencia'),
('2787588','2020-07-16 11:42','263','Buen dia se realiza el registro del servidor oracle aws, con la cuenta usrtucdb, se toma control de la cuenta se realiza validación de acceso quedando en correcto funcionamiento.

Se adjunta evidencia.'),
('2787432','2020-07-16 14:53','264','Buen dia se realiza eliminación del perfil grptpgbm en CyberArk.'),
('2784716','2020-07-16 17:27','265','Buen dia, se registra servidor con cuentas de linea base, se toma control de las cuentas en CyberArk.'),
('2787565','2020-07-16 15:28','266','Buen dia, se realiza la validacion y los servidores se encuentran ya conectados a CyberArk, se adjunta evidencia.'),
('2787592','2020-07-17 8:14','267','Buen dia, se realiza validación y no se cuenta con alcance desde CyberArk a los servidores, se informa al usuario quien validara solicitara los permisos a firewall para los servidores.

LBMDEBPAXW01V 10.8.151.196
LBMDEBPAXM02V 10.8.151.197
LBMDEBPAXM03V 10.8.151.198'),
('2759330','2020-07-16 16:16','268','Buen dia, se realiza validación con el usuario y no es necesario ingresar el servidor a CyberArk.'),
('2787658','2020-07-17 9:40','269','Buen dia, se crea cuenta local en CyberArk Admautvi, se crea safe con autorización para ingresar cuentas BCO-P-SRV-LNX-AUTVI, para las respectivas pruebas.'),
('2788617','2020-07-16 16:46','270','Buen dia, se realiza la creación del perfil grpppNequi con responsable carmonsa.'),
('2788038','2020-07-18 12:53','271','Buen día, Se realizo el cambio de versión del cliente Performance Navigator a 19.1 en el componente PSM1 de AWS, teniendo una exitosa actualización.

Gracias.'),
('2762527','2020-07-17 8:59','272','Se realiza acompañamiento sin intervención.'),
('2789386','2020-07-17 14:36','273','Buen dia, se crea SAFE BCO-P-SRV-AIX-ANPL-TCS-NEQUI, se otorgan permisos al perfil grpponequi para la cuenta usrtanpl.'),
('2790345','2020-07-21 9:49','274','Buen dia, se registra servidor con cuenta Oracle y linea base, se realizan pruebas de conexión quedando operativo

Adjunto evidencia.'),
('2774950','2020-07-17 17:44','275','Password Safe salio de producción el pasado 30/06/2020.

Buen dia, se retira servidor de cyberark con las cuentas SQLSERVICE - CNXIPSQL - USRTSDBA'),
('2775875','2020-07-17 17:33','276','Buenos dia, el servidor se da de baja de la herramienta CyberArk.'),
('2780963','2020-07-17 17:38','277','Tarea no aplica - Password Safe salió de producción.
Buen dia el servidor no se encuentra conectado en CyberArk.'),
('2774137','2020-07-17 17:37','278','EL SERVICIO PASSWORD SAFE YA NO SE ENCUENTRA PRODUCTIVO DESDE EL 30/06/2020.
Buen dia, el servidor no se encuentra conectado en CyberArk.'),
('2756527','2020-07-20 11:00','279','Buen dia, se esta atento a cualquier eventualidad de la actividad,'),
('2767320','2020-07-21 8:11','280','Buen dia, el servidor no se debe agregar a CyberArk.'),
('2789584','2020-07-21 10:24','281','Buen dia, se registra servidor con la cuenta Oracle, se realizan pruebas de conexión quedando en correcto funcionamiento.
Se adjunta evidencia.'),
('2789598','2020-07-21 11:35','282','Buen dia, se realiza ingresa cuenta oracle a CyberArk en el servidor, se realizan pruebas de conexión quedando operativo.
Se adjuntan evidencias.'),
('2789632','2020-07-21 10:46','283','Buen dia, se registra servidor con la cuenta oracle, se realizan pruebas de acceso quedando operativo.
Se adjunta evidencia.'),
('2775176','2020-07-21 14:08','284','Buen dia, se eliminan los servidores con sus respectivas cuentas en CyberArk.

lpbmdebpbsh01 10.8.177.9
lpbmdebpbsh02 10.8.177.10'),
('2769562','2020-07-21 15:34','285','Buenas tardes, se realiza eliminación del servidor 10.8.105.165 con sus respectivas cuentas , el servidor 10.8.105.171 no se encuentra conectado en CyberArk.'),
('2791930','2020-07-21 15:19','286','Buen dia, se registran servidores con las cuentas de Linea Base Linux, se toma posesión de las cuentas y se verifica acceso quedando operativo.'),
('2792466','2020-07-21 15:51','287','Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2793083','2020-07-22 10:24','288','Buen dia, se registra servidor con BD, se realiza prueba de conexión quedando en correcto funcionamiento.
Se adjunta evidencia,'),
('2779987','2020-07-22 11:38','289','Buen dia, se valida con el usuario y informa que no se deben ingresar por el momento en CyberArk'),
('2793374','2020-07-22 14:24','290','Buen dia, los nombres de los safes deben ser maximo 28 caracteres sin espacios, la OC no cuenta con hora establecida, por favor escalar OC cuando se cuente con la información completa para poder crear los Safes en CyberArk.'),
('2793611','2020-07-22 16:19','291','Buen dia, se valida con la Analista funcional banco Tatiana Marcela Blandon, y informa que cuentas de consulta para bases de datos no se conectan a CyberArk.'),
('2793080','2020-07-22 11:14','292','Buen dia,

Se cambia direccionamiento de los servidores, se trata de realizar verificación y no es posible en los servidores.
por favor validar con firewall el alcance desde cyberark.

Segmentos de red cyberark
AWS: 10.72.136.0/25
Onpremise: 10.8.146.208/28
Calle 100 10.60.5.80/28


Sucursal con cambio de direccionamiento 10.155.122.237

ImmediateTask
Failure Description: CACPM344E Verifying Password Safe: BCO-P-SRV-LNX-NAC-REC
Folder: Root
Object: Operating System-BCO-P-LNX-NAC-REC-10.155.122.237-cnxipnca failed (try #0)
Code: 9002
Error: Execution error
EXT01::A connection attempt failed because the connected party did not properly respond after a period of time
or established connection failed because connected host has failed to respond
Error code:9002
CPM
Sucursal con cambio de direccionamiento 10.157.102.233

ImmediateTask
Failure Description: CACPM344E Verifying Password Safe: BCO-P-SRV-LNX-NAC-REC
Folder: Root
Object: Operating System-BCO-P-LNX-NAC-REC-10.155.122.237-cnxipn'),
('2763110','2020-07-22 15:45','293','Buen dia, los servidores ya se encuentran conectados en CyberArk.'),
('2795260','2020-07-23 10:58','294','Buen dia, se registra servidor con Base de datos, se realizan pruebas de conexión quedando operativo.'),
('2794341','2020-07-23 16:14','295','Buen dia, se registra servidor con la cuenta usrtinte, se solicita al usuario dar permisos a la cuenta para poder ingresar por RDP.

Se envian evidencias de la solicitud.'),
('2794364','2020-07-23 16:06','296','Buen dia, se registra servidor con la cuenta usrtinte, se solicita al usuario dar permisos a la cuenta para poder ingresar por RDP.

Se envian evidencias de la solictud.'),
('2785054','2020-07-23 14:49','297','Buen dia, se registran servidores con cuentas de linea base, se toma control de las cuentas en cyberark.'),
('2784603','2020-07-23 14:02','298','Buen dia, se valida con el usuario quien indica que no se debe registrar los servidores a CyberArk.'),
('2794155','2020-07-23 16:11','299','Buen dia, se registra servidor con la cuenta usrtinte, se solicita al usuario dar permisos a la cuenta para poder ingresar por RDP.

Se envian evidencias de la solicitud.'),
('2796172','2020-07-23 17:32','300','Buen dia, se valida con el usuario quien informa que este servidor no debe ir conectado a CyberArk'),
('2777552','2020-07-24 8:56','301','Se realiza el acompañamiento de el ejercicio de continuidad teniendo resultados exitosos.'),
('2791662','2020-07-24 9:03','302','Buen dia, se realiza validación y el servidor ya se encuentra conectado en CyberArk.'),
('2776456','2020-07-27 9:16','303','Se realiza el acompañamiento a los ingenieros involucrados dentro de las pruebas de DR, cuyas pruebas tuvieron un resultado exitoso.'),
('2795675','2020-07-26 17:57','304','Buen día, Se realizó la descarga e instalación de las últimas actualizaciones correctamente, queda pendiente descargar los paquetes más antiguos de manera manual y seguir cerrando vulnerabilidades.

Gracias.'),
('2793713','2020-07-25 17:52','305','RE: Redirección de la carpeta PSMRecordings'),
('2791265','2020-07-24 14:45','306','Buen dia, el servidor no se encuentra conectado a CyberArk.'),
('2798601','2020-07-25 16:34','307','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2798543','2020-07-25 16:36','308','(Administrador de la Aplicación - Evolution). Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2744160','2020-07-27 8:52','309','Se realiza el acompañamiento a los ingenierios que estaban realizando las pruebas DR, cuyas pruebas terminan con resultados exitosos.'),
('2799709','2020-07-27 15:41','310','Buen dia, se valida con el usuario cesar Henao quien informa que se solicitaran los permisos de firewall para tener alcance desde CyberArk, una ves se cuenta con permisos se solicitara nuevamente OC para registrar las BD'),
('2800006','2020-07-28 13:14','311','Buen dia, Se tendra reunión el dia Jueves con Tatiana Marcela blandon para definir el usuario de Linux AWS.

Solicita tatiana cancelar la OC, hasta que se defina el tema.'),
('2763185','2020-07-27 16:49','312','Buen dia, los servidores ya se encuentran conectados en CyberArk.'),
('2800155','2020-07-28 8:19','313','Buen dia, se registra cuenta Oracle en el servidor, se toma control de la cuenta y se inicia sesión, se adjunta evidencia.'),
('2797682','2020-07-28 8:54','314','Buen dia, se cancela OC debido a que la cuenta no se encuentra creada en Directorio Activo, esta debe estar creada y en los grupos especificos de DA para poder tomar control de las cuentas, se debe crear Safe y solicitar perfil que vera dicha cuenta.

Por favor asesorarse con Tatiana Marcela Blandon.'),
('2797732','2020-07-28 8:55','315','Buen dia, se cancela OC debido a que la cuenta no se encuentra creada en Directorio Activo, esta debe estar creada y en los grupos especificos de DA para poder tomar control de las cuentas, se debe crear Safe y solicitar perfil que vera dicha cuenta.

Por favor asesorarse con Tatiana Marcela Blandon.'),
('2799894','2020-07-30 15:51','316','Se requiere matricular a CiberArk la siguiente instancia de base de datos PostgreSQL para ingresar a ella mediante Pgadmin4 y consola pgsql:'),
('2799910','2020-07-28 8:12','317','CANCELADA POR EL USUARIO: Gestionar en CyberArk el cambio solicitado. Cierre de la orden de cambio con su respectivo Código de Cierre.'),
('2790114','2020-07-28 10:08','318','Buenos dias, se realiza eliminación del servidor en CyberArk y sus respectivas cuentas.'),
('2800482','2020-07-28 10:10','319','Buen dia, se realiza eliminación de los servidores con sus respectivas cuentas en CyberArk.'),
('2801024','2020-07-29 4:46','320','Se realizó la corrección de las vulnerabilidades se subieron 14 pero se presenta un error, cuando se va a instalar los kb la cuál está en revisión'),
('2799818','2020-07-28 14:13','321','Buen dia, se realiza cambio de responsable de perfil, se debe esperar a la replicación de USM para que se vea reflejado el cambio.

Adjunto Evidencia.'),
('2800896','2020-07-28 10:17','322','Favor crear el perfil "Cloud_grpplepp " el cual va a ser usado para ingresar a los servidores linux de Antivirus en AWS, , jefe aprobador ANRIVAS.'),
('2785041','2020-08-02 10:25','323','Acompañamiento en la actividad'),
('2801726','2020-07-28 15:04','324','Buen dia, se realiza la eliminación de la cuenta usrtsecu de lios servidores en CyberArk, se debe validar con los administradores de la plataforma para que la cuenta sea borrada del servidor.'),
('2801884','2020-07-28 17:51','325','Buen dia, se realiza ingreso de la cuenta en los servidores, se realiza prueba de conexión quedando en correcto funcionamiento.'),
('2791260','2020-07-29 10:33','326','Buen dia, los servidores no se encontraban registrados en CyberArk.'),
('2802842','2020-07-29 15:31','327','Se realizo la actualización del conector, encontrando que al ingresar a unos de los servidores que se encuentran dentro del Performance Navigator, no eliminaba el cache y por lo tanto el conector generaba errores, adjunto evidencia, y se procede a dar marcha atrás dejando el ambiente como estaba antes.'),
('2788078','2020-07-29 11:44','328','Buenos dias, se realiza el registro en CyberArk del equipo con la cuenta cnxixsop.'),
('2790443','2020-07-29 11:26','329','Buen dia, los servidores no se encuentran conectados en CyberArk.'),
('2803797','2020-07-31 11:23','330','Buen dia, se registra BD AWS Postgress, se toma control de la cuenta y se realiza prueba de conexión quedando en correcto funcionamiento.

Se adjuntan evidencias.'),
('2780866','2020-07-30 9:35','331','Tarea no aplica - Password Safe salió de producción.

Buen dia, el servidor no se encuentra conectado en CyberArk.'),
('2794327','2020-07-30 9:43','332','Buen dias, No aplica para CyberArk.'),
('2804806','2020-07-30 21:12','333','Buen dia, se realiza la creación de los safes y se otrogan permisos al grupo Sucursales.'),
('2793086','2020-07-30 14:13','334','Se realiza el acompañamiento solicitado, teniendo excelentes resultados en el cambio programado para el día 29 de Julio del 2020. Se agregaron los servidores SBMDEBPEKV01V (10.8.150.58) a los usuarios CNXIXADM
CNXIXRES, CNXIXSOP en CyberArk.'),
('2805151','2020-07-30 15:55','335','Buen dia, se registran los servidores con la cuenta usrtdba se valida acceso quedando funcional.

Se adjuntan evidencias.'),
('2804556','2020-07-31 14:54','336','Buen dia, se registra BD AWS Postgress, se toma trata de tomar control de la cuenta y las cuentas no existen en el servidor, se informa al usuario para que se creen cuentas en la BD, informa que se debe tramitar por pedido en USM, Una ves esten creadas se reconciliaran las cuentas.'),
('2804615','2020-07-30 16:37','337','Buen dia, se realiza el ingreso de la Base de Datos a CyberArk, se toma control de la cuenta y, se realiza pruebas de conexión quedando en correcto funcionamiento.

Se adjunta evidencia.'),
('2805183','2020-07-31 9:06','338','Buen dia, se crea safe para la cuenta cnxspiap, se generan permisos a los perfiles

grptpinteg
grptwinte
grptiall_IntegracionIBM

Se toma control de la cuenta y se registran servidores, se realizan pruebas de acceso y la cuenta no posee permisos de RDP en los servidores, (Validar con Tatiana Marcela Blandon).

Se eliminan servidores de la cuenta usrtinte Bancolombia.corp.'),
('2800693','2020-07-31 16:41','339','Buen dia, se registra BD AWS Postgress, se toma control de la cuenta y se realiza prueba de conexión quedando en correcto funcionamiento.

Se adjuntan evidencias.'),
('2805371','2020-07-31 9:57','340','Buen dia, se registra BD AWS Postgress, se toma control de la cuenta y se realiza prueba de conexión quedando en correcto funcionamiento.

Se adjuntan evidencias.'),
('2804240','2020-07-31 17:22','341','Buen dia, el servidor no se encuentra conectado en CyberArk.'),
('2807471','2020-07-31 18:32','342','Buen dia, se registra cuenta en los servidores, se trata de conciliar la cuenta y la cuenta no posee permisos de login en el server, se informa al usuario solicitar el respectivo permiso.

Se estara atento de la modificacion de la cuenta para tomar control.'),
('2807585','2020-07-31 18:31','343','Buen dia, se registra cuenta en los servidores, se trata de conciliar la cuenta y la cuenta no posee permisos de login en el server, se informa al usuario solicitar el respectivo permiso.

Se estara atento de la modificacion de la cuenta para tomar control.'),
('2803300','2020-07-31 18:59','344','Buen dias, los servidores no deben ser registrados en CyberArk.')

--Docuementacion OC septiembre
INSERT INTO documentacion_oc(id_oc,fecha,id,documentacion)
	VALUES 




--Docuementacion OC
INSERT INTO documentacion_oc(id_oc,fecha,id,documentacion)
	VALUES 
('2801729','2020-08-03 9:35','1','Buen dia, se realiza el ingreso de la BD a CyberArk se toma control de las cuentas.'),
('2801730','2020-08-03 9:06','2','Buen dia, se realiza el ingreso de la BD a CyberArk se toma control de las cuentas'),
('2801695','2020-08-03 9:29','3','Buen dia, se realiza el ingreso de la BD a CyberArk se toma control de las cuentas.'),
('2781891','2020-08-05 14:34','4','Buen dia, se realiza el acompañamiento de la actividad, se realiza de manera exitosa.'),
('2807784','2020-08-03 9:47','5','Buen dia, se eliminan usuarios de CyberArk de los servidores.
'),
('2802315','2020-08-03 10:49','6','Buen dia, se realiza eliminación del servidor y sus respectivas cuentas de CyberArk.'),
('2808017','2020-08-03 11:17','7','OC Cancelada por : Grisales Montoya, Maria Angelica'),
('2797973','2020-08-03 14:36','8','Buen dia, se ingresa servidor a CyberArk con cuentas de linea base y Oracle, se reconcilian cuentas y se valida acceso quedando operativo'),
('2807136','2020-08-03 11:09','9','Buen dia, se registra cuenta oracle en los servidores, se toma control de la cuenta y se realiza prueba de acceso quedando en correcto funcionamiento.'),
('2794529','2020-08-03 17:38','10','Buen dia, por el momento no es necesario conectar el server a CyberArk, se valida esta información con la usuaria.'),
('2808999','2020-08-03 15:07','11','Buen dia, se realiza el ingreso del servidor a CyberArk con las cuentas de linea base, se toma control de las cuentas quedando en correcto funcionamiento.'),
('2795786','2020-08-03 15:24','12','Buen dia, se valida el servidor y no debe ir conectado a CyberArk.'),
('2809030','2020-08-03 11:17','13','Buen dia, se cancela OC, la categoria no corresponde a Mantenimiento de perfiles.

Por favor escalar OC por la categoria Mantenimiento de perfiles.'),
('2809036','2020-08-03 14:25','14','Buen dia, se realiza la creación de la Boveda para el area de aplicaciones.'),
('2807462','2020-08-04 8:41','15','Buen dia, se crea perfil AdminEvoInfra, se configura Safe para la cuenta CNXIPADC, se dan permisos a los perfiles AdminEvolution, AdminNoc y AdminEvoInfra para utilizar la cuenta y conectarse a los servidores de CyberArk.
'),
('2799601','2020-08-04 12:25','16','Buen dia, se registra servidor con la cuenta CNXIXSOP en CyberArk.'),
('	2810530','2020-08-04 14:35','17','Buen dia, se ingresa cuenta oracle a CyberArk, se toma control de la cuenta y se valida acceso quedando en correcto funcionamiento.

Se adjunta evidencia.'),
('2811000','2020-08-05 9:41','18','Buen dia, se realiza el ingreso de los servidores a CyberArk, se toma control de las cuentas y se valida acceso.

Se adjunta evidencia.'),
('2808919','2020-08-04 16:52','19','Buen dia, se realiza eliminación del servidor con sus respectivas cuentas en CyberArk.'),
('2811256','2020-08-04 16:53','20','Buen dia, esta solicitud se debe tramitar por USM. Se indica a la usuaria'),
('2811572','2020-08-04 17:23','21','Buen dia, se realiza el ingreso a CyberArk del servidor, con las cuentas sqlservice, cnxipsql y usrtsdba, se realizan pruebas de conexión, se adjunta imagenes.

las cuentas cnxipsql y usrtsdba no tienen permisos de RDP.'),
('	2808710','2020-08-05 11:52','22','Buen dia, se realiza validación y el servidor no se encuentra conectado a CyberArk.'),
('2811108','2020-08-05 14:36','23','Buen dia, se registra la cuenta en los servidores se realiza prueba de conexion y la cuenta no posee permisos de login en 3 servidores, por favor validar el documento adjunto.'),
('2811514','2020-08-05 14:41','24','Buen dia, se realiza el ingreso de la cuenta en los servidores se toma control de la cuenta y se realizan pruebas de conexión.

Se realizan pruebas de conexión quedando en correcto funcionamiento.'),
('2811772','2020-08-05 17:23','25','Buen dia, se realiza ingreso de la cuenta en los servidores, se toma control de la cuenta y se realizan pruebas de conexión,

Se adjuntan evidencias.'),
('2812575','2020-08-05 17:44','26','Buen dia, se realiza cambio de nombre jefe responsable en los perfiles, se debe esperar a la replicación de USM del dia de mañana 9:30 Am) para que se vea replicado el cambio.'),
('2813491','2020-08-06 8:14','27','Buen dia, se registra servidor con IP en la cuenta sqlservice ambientes, se valida acceso quedando en correcto funcionamiento.

Se adjunta evidencia.'),
('2813195','2020-08-06 8:57','28','Buen dia, se ingresa cuenta oracle a CyberArk se toma control de la cuenta y se realiza prueba de acceso quedando en correcto funcionamiento.

Se adjunta evidencia.'),
('2814346','2020-08-06 15:39','30','Buen dia, se realiza eliminación del servidor en CyberArk en las cuentas CNXIXRES CNXIXADM CNXIXSOP.'),
('2808979','2020-08-07 17:12','31','se realiza la descarga e instalación de los parches de seguridad vigentes actualmente en Microsoft'),
('2814207','2020-08-07 10:32','32','Se realiza la descarga e instalación de los parches de seguridad vigentes actualmente en Microsoft, y se realizó la actualización de vmware tools
Está tarea fue satisfactoria'),
('	2782243','2020-08-10 8:04','33','Buen dia, se realiza validación y el servidor ya se encuentra conectado en CyberArk.'),
('2779146','2020-08-10 9:26','34','Buen dia, los servidores no deben ir conectados en CyberArk por el momento.'),
('2804028','2020-08-10 9:35','35','Buen dia, se realiza la validación y el servidor no se encuentra conectado en CyberArk.'),
('2804256','2020-08-10 9:33','36','Buen dia, se verifica y el servidor no se encuentra conectado en CyberArk.'),
('2813343','2020-08-10 9:36','37','Buen dia, se realiza la validación y el servidor no se encuentra conectado a CyberArk.'),
('2816069','2020-08-10 14:04','38','Buen dia, se realiza el ingreso de los servidores a CyberArk, se toma control de los servidores productivos, los servidores de ambiente aún no tenemos respuesta, se indica al usuario que se debe escalar con Genesis lopera para el registro de la BD.

Se adjunta evidencias.'),
('2807560','2020-08-10 11:03','39','Buenos dias, Se realiza la validación con el usuario quien informa que los servidores no se deben conectar a CyberArk.'),
('	2782502','2020-08-18 14:41','40','Se realiza el acompañamiento a las pruebas DR planeadas para hoy (Martes 18 de Agosto del 2020), donde se realiza la configuración del servidor para la cuenta sqlservice, pero los usuarios no utilizan dicha cuenta puesto que la prueba se termina como no existosa, por nuestra parte, la configuración de dicho servidor fue exitosa.'),
('2813506','2020-08-11 8:15','41','Buen dia, se realiza eliminación del servidor de CyberArk en las cuentas CNXIPSQL, CNXIXSOP, CNXIXRES, SQLSERVICE, CNXIXADM, USRTSDBA.'),
('2809878','2020-08-11 8:22','42','Buen dia, se realiza eliminación del servidor de CyberArk.'),
('2817884','2020-08-12 14:44','43','Buen dia, se registra bd postgres, se concilia cuenta y se valida acceso quedando operativo.

Se adjunta evidencia.'),
('2817834','2020-08-11 16:12','44','Se requiere matricular a CiberArk la siguiente instancia de base de datos PostgreSQL para ingresar a ella mediante Pgadmin4 y consola pgsql:

HOST: aw1315001-pago-sin-friccion-dev-clusteraurora.cluster-clz5ohluuj8u.us-east-1.rds.amazonaws.com
IP: 10.72.112.206
Motor de base de datos: Aurora PostgreSQL
Nube: AWS RDS
Puerto:5432
Ambiente: Desarrollo.'),
('2817447','2020-08-11 8:30','45','Buen dia, se realiza el registro del servidor con la cuenta USRTDBAS, se realiza prueba de acceso quedando en correcto funcionamiento.

Adjunto evidencia.'),
('2816815','2020-08-10 17:39','46','Buen dia, se registra servidor con la cuenta CNXIXSOP, se realizan pruebas de conexión quedando operativo.'),
('2816997','2020-08-11 14:57','47','Se realiza la descarga e instalación de los parches de seguridad vigentes actualmente en Microsoft
Está tarea fue satisfactoria
Y se realizó la instalación de vmware tools'),
('2818009','2020-08-11 10:41','48','Buen dia, se cancela OC debido a que el server no reponde por DNS, se realizan pruebas con el usuario y el server responde a otra ip, se valida conexion por ENDPOINT y responde de manera correcta, pero por DNS no es posible llegar al server.

El usuario informa que validara lo que sucede con el servidor y gestionara nuevamente la OC para su registro.'),
('2816025','2020-08-11 17:09','49','Buen dia, se realiza la validación y los servidores no se encuentran conectados en CyberArk.'),
('2818959','2020-08-12 14:17','50','Buen dia, otorgan los permisos de Firewall se configura server con la cuenta sqlserver, se valida acceso quedando funcional.

Se adjuntan evidencias.'),
('	2818626','2020-08-12 9:39','51','buen dia, se valida con el usuario y se va a validar con Firewall el alcance al servidor por tal motivo se cancela OC.'),
('2820305','2020-08-12 12:38','52','Buen dia, se realiza la validación del archivo, se verifican y concilian servidores en estado OK, Se eliminan servidores migrados.'),
('2820631','2020-08-13 14:52','53','Buen dia, se modifican parametrós en AWS por parte del usuario se borran usuario se crean nuevamente de la herramienta CyberArk y se procede a tomar posesión de la cuenta, se valida acceso quedando operativo.

Se adjunta evidencia.'),
('2820961','2020-08-13 8:58','54','Buen dia, se registra servidor con la cuenta, se toma control de la cuenta y se valida acceso, se adjuntan evidencias.'),
('2821139','2020-08-12 17:36','55','Buen dia, se realiza el registro de los servidores en CyberArk.'),
('2821121','2020-08-13 8:00','56','Buen dia, se registra cuenta en los servidores, se toma control de la cuenta y se realiza prueba de conexión, se adjunta evidencias.'),
('2804255','2020-08-13 11:45','57','Buen dia, se realiza validación y el servidor no se encuentra conectado en CyberArk.'),
('2821950','2020-08-13 15:31','58','Buen dia, se realiza configuración de OTP (ONE-TIME PASSWORD), Para los safes.

BCO-P-SRV-AS400-DANIGRIS
BCO-P-SRV-AS400-DIEALGUT
BCO-P-SRV-AS400-LVILLA
BCO-P-SRV-AS400-SEAVARGA
BCO-P-SRV-AS400-SJGUTIER

Se configura parámetro de cambio en 1 hora después de ser consultada la contraseña.'),
('2822061','2020-08-13 11:57','59','Buen dia, se realiza el registro de la cuenta en los 2 servidores, se realiza concilación de la cuenta y se realizan pruebas de conexión quedando operativo.

Se adjuntan evidencias.'),
('2822108','2020-08-13 12:11','60','Buen dia, se ingresa cuentan en los 2 servidores, se realiza conciliación de la cuenta y se realiza prueba de conexión quedando operativo.

Se adjuntan evidencias.'),
('2822190','2020-08-14 8:31','61','Buen dia, se realiza validación de los servidores y los servidores ya se encuentran conectados en CyberArk, no tienen registradas las siguientes cuentas. usrtpdc, usrtbkup (Revisar Adjunto).
Se solicita al usuario crear las cuentas y se toma posesión de la cuenta, quedan pendientes 3 servidores ( 10.8.70.69, 10.8.70.70, 10.8.70.116), el usuario creara las cuentas y nos indicara para poder tomar posesión.'),
('2822087','2020-08-14 10:14','62','Buen dia, se realiza validación de los servidores, se registran cuentas y se toma control de las cuentas en CyberArk.

Se adjunta resumen de la actividad.'),
('	2822410','2020-08-15 9:04','63','Buen dia, se presenta conector IBM Navigator for i para las cuentas qsecofr, se realizan pruebas de conexión quedando funcionales.Se adjuntan evidencias.'),
('2824620','2020-08-18 10:11','64','Buen dia, se realiza cambio de responsable de perfiles en CyberArk quedando monivill, se debe esperar a la replicación de USM a las 4 pm de hoy.'),
('2825135','2020-08-18 11:17','65',' se realiza registro de la cuenta CNXIPSEP en CyberArk, se ingresan servidores a la cuenta y se otorga permisos al perfil para que pueda utilizar la cuenta.

Para tener correcto acceso desde CyberArk los servidores deben estar en la OU correspondiente, la cuenta CNXIPSEP debe tener permisos de RDP en los servidores para otorgar el acceso.'),
('2793152','2020-08-20 8:35','66','Se realiza reinicio de servidor Boveda principal para aplicar cambio de configuración'),
('2816026','2020-08-18 15:52','67','Buen dia el servidor no se encuentra conectado en CyberArk.'),
('2825864','2020-08-19 9:44','68','Buen dia, se realiza cambio de DNS en la BD AWS, Se realiza pruebas de conexión pero arroja error de TNS Listener, se valida con la usuaria quien realiza la validación y se encuentra que hacen falta permisos de red en rds, se estará validando el acceso una vez realicen los cambios.
'),
('2823290','2020-08-18 17:12','69','Buenas tardes, se realiza la validación con el usuario quien informa que no es necesario conectar el servidor a CyberArk.'),
('2825938','2020-08-19 9:45','70','Buen dia, se realiza cambio de DNS en la BD AWS, Se realiza pruebas de conexión pero arroja error de TNS Listener, se valida con la usuaria quien realiza la validación y se encuentra que hacen falta permisos de red en rds, se estará validando el acceso una vez realicen los cambios.'),
('2828981','2020-08-20 8:23','71','Buen dia, se realiza el registro de la BD se configuran cuentas y se toma control, se realiza prueba de acceso quedando en correcto funcionamiento, se adjuntan evidencias.'),
('2805248','2020-08-19 19:36','72','Buenas noches,

Se realizó el debido acompañamiento, donde se configuran las maquinas requeridas para la prueba DR, y el usuario confirma la conexión a los servidores por dichas cuentas.

Gracias.'),
('2828698','2020-08-20 12:16','73','Se realiza reinicio de servicio Cyberark privilege session manager en los tres servidores PSM de On-premise.'),
('2828660','2020-08-20 8:37','74','Buen dia se realiza registro del servidor con la cuenta usrtdbas, se registra IP y se realiza prueba de conexión quedando en correcto funcionamiento.

Adjunto evidencias.
'),
('2829286','2020-08-20 10:46','75','Buen dia, se realiza el registro del servidor con la cuenta CNXIPPWA, se realizan pruebas de acceso quedando funcional.
Se adjunta evidencia.'),
('2829335','2020-08-20 11:07','76','Buen dia, se realiza el registro del servidor con la cuenta SQLSERVICE, se realizan pruebas de acceso quedando en correcto funcionamiento.

Se adjunta evidencia.'),
('2829755','2020-08-28 12:30','77','Buen dia, se realiza registro y se toma control de las cuentas se valida prueba de conexión quedando funcional.

Se adjunta evidencia.'),
('2829937','2020-08-21 16:02','78','Buen dia, se Cancela OC debido a que la lista de servidores no se encuentra depurada.

por favor validar los servidores,de acuerdo al archivo enviado por Tatiana Marcela Blandon y solicitar nuevamente el ingreso de los servidores a CyberArk, se debe solicitar la conexión de servidores en ambientes productivos, desarrollo y certificación en los cuales CyberArk tiene acceso, se debe garantizar que la cuenta de conciliación y las cuentas gestionadas se encuentren creadas en los servidores.'),
('2825545','2020-08-20 16:27','79','Buen dia, se realiza validación y el servidor no se encuentra conectado a CyberArk.'),
('2816034	','2020-08-20 17:55','80','Buen dia, se realiza validación y los servidores no se encuentran conectados en CyberArk.'),
('2821869','2020-08-21 16:17','81','Buen dia, se valida con el usuario quien informa que no se debe conectar a CyberArk.'),
('2832101','2020-08-21 16:58','82','Buen dia, se realiza el registro de los servidores con la cuenta SQLSERVICE, Se realizan pruebas de conexión quedando en correcto funcionamiento.'),
('2832273','2020-08-24 10:27','83','Buen dia, se realiza registro de las BD en cyberArk, se comunica al usuario que se debe cambiar la contraseña de la cuenta conciliadora debido a que no corresponde con la de cyberark, realizan el cambio se toma control de las cuentas quedando en correcto funcionamiento.

Para la BD db-creditlens-clzbmqcd-qa.apps.ambientesbc.com
No se tiene alcance por CyberArk se solicita al usuario validar para poder tomar control, se adjunta evidencia.'),
('2828187','2020-08-24 8:18','84','Buen dia, se realiza validación y los servidores no se encuentran conectador en la herramienta.'),
('2816060','2020-08-24 10:46','85','Buen dia, se realiza validación y los servidores no se encuentran conectados en CyberArk.'),
('2816044','2020-08-24 10:46','86','Buen dia, se realiza validación y los servidores no se encuentran conectados en CyberArk.'),
('2816043','2020-08-24 10:46','87','Buen dia, se realiza validación y los servidores no se encuentran conectados en CyberArk.'),
('2833614','2020-08-24 12:26','88','Buen dia, se realiza registro de la BD en CyberArk, se toma control de la cuenta gestionada y se realiza prueba de conexión quedando en correcto funcionamieto.

Se adjunta evidencia.'),
('2816040','2020-08-24 14:14','89','Buen dia, se realiza la validación y los servidores no se encuentran conectados a CyberArk.'),
('2829856','2020-08-24 14:11','90','Buen dia, se realiza eliminación del servidor con la cuenta CNXIPPKI en CyberArk.'),
('2833597','2020-08-24 15:39','91','Buen dia, se cancela OC debido a que la información del DNS no es correcta, el usuario solicitara la información al área de Nube.'),
('2831456','2020-08-24 12:36','92','Buen dia, se realiza eliminación del servidor en CyberArk con sus respectivas cuentas.'),
('2835184','2020-08-25 11:05','93','Buen dia, se registra bd con con la cuenta gestionada, se toma control de la cuenta y se realiza prueba de acceso quedando en correcto funcionamiento.

Se adjunta evidencia, para tener conexión exitosa siempre debe estar encendida la BD en AWS.'),
('2825522','2020-08-25 11:40','94','Buen dia, se realiza la validación y el servidor no se encuentra conectado en CyberArk.'),
('2824430','2020-08-27 8:48','95','Buen dia, se valida con el usuario y no se debe ingresar el server a CyberArk debido a que es un server de vcenter de vmware para administración.'),
('2836129','2020-08-26 17:37','96','Buen dia, se ingresa servidor a CyberArk con las cuentas de linea Base y oracle, se toma control de las cuentas.'),
('2836840','2020-08-27 18:15','97','No aplica para CyberArk.'),
('2836370','2020-08-27 18:24','98','Buen dia, se raliza eliminación de los servidores en CyberArk con las cuentas:

CNXIPSQL
sqlservice
USRTSDBA'),
('2837393','2020-08-27 18:12','99','Buen dia, se realiza eliminación de servidor con sus respectivas cuentas.'),
('2837150','2020-08-27 18:14','100','Buen dia, se realiza validación y no se encuentra el servidor conectado en CyberArk.'),
('2836038','2020-08-27 18:17','101','Buen dia, se realiza validación y el servidor no se encuentra conectado en CyberArk.'),
('2840346','2020-08-28 12:34','102','Se realiza el cambio del archivo Web.config en el PVWA de nube, teniendo el cambio exitoso, pero no resuelve el error en la que el usuario queda almacenado en el login del PVWA, sigue en observación el caso.'),
('2840432','2020-08-28 9:02','103','Buen dia se realiza eliminación de la cuenta DSADM en los servidores en CyberArk.'),
('2753395','2020-08-28 10:29','104','Buen dia, se realiza validación y el servidor se encuentra conectado en CyberArk.'),
('2825723',NULL,'105','Probar el disaster recovery en IBM calle 100 del servicio IAM FE (Filiales del Exterior).
Se subirán servidores en IBM y aplicacion para verificar funcionamiento del mismo.
FECHAS Y HORAS DE LA ACTIVIDAD
INICIO ACTIVACION: Miércoles 02 de Septiembre 7:30 am
FIN RETORNO: Miércoles 02 de Septiembre 4:00 pm

MAQUINAS DEL SERVICIO DE IAM FE (FILIALES DEL EXTERIOR):

Nombre del servidor IP
LBMDEBPIAM01V 10.8.58.228
LBMDEBPIAM02V 10.8.58.229
LBMDEBPIAM03V 10.8.58.230
LBMDEBPIAM04V 10.8.58.231
LBMDEBPIAM05V 10.8.58.232

IMPACTO:
No se tiene impacto porque es un ejercicio de continuidad cerrado que no afecta la operación.

RESPONSABLE ACTIVIDAD:
James Culma - Gerencia Servicios TI Funciones Corporativas Cel. 3105980228'),
('2841657','2020-08-28 17:12','106','Buen dia, se realiza cambio de DNS, Nombre de Base de datos, se realiza verificación y conciliación quedando funcional, se realiza conexión de prueba Adjunto evidencia.'),
('2841658','2020-08-28 17:38','107','Buen dia, se realiza cambio de DNS, Nombre de Base de datos, se realiza verificación y conciliación quedando funcional, se realiza conexión de prueba Adjunto evidencia.'),
('2841509','2020-08-31 10:02','108','Buen dia, de acuerdo a la sesión que tuvimos con el usuario se debe garantizar que las cuentas de linea base se encuentren creadas en los servidores con el fin de conectar los servidores con todas las cuentas de linea base.

Se esta a la espera de la validación por parte de los administradores de linux y volveran a montar la OC para el registro.'),
('2841167','2020-08-28 18:19','109','Buen dia, se registra BD, se realiza verificación y conciliación quedando funcional, se realiza conexión de prueba se Adjunta evidencia.'),
('2841189','2020-08-31 12:10','110','Buen dia, se registra BD, se realiza verificación y conciliación quedando funcional, se realiza conexión de prueba se Adjunta evidencia.'),
('2841242','2020-08-28 18:06','111','Buen dia, se registra BD, se realiza verificación y conciliación quedando funcional, se realiza conexión de prueba se Adjunta evidencia.'),
('2841328','2020-08-31 8:37','112','Buen dia, se registra BD, se realiza verificación y conciliación quedando funcional, se realiza conexión de prueba se Adjunta evidencia.'),
('2841739','2020-08-31 13:08','113','Buen dia, se regista BD se realiza conciliación y verificación de las cuentas, se realiza conexión de prueba quedando en correcto funcionamiento.'),
('2842668','2020-08-31 17:22','114','Buen dia, se realiza el registro de la BD se toma control de las cuentas y se realiza prueba de conexión quedando en correcto funcionamiento.

Se adjunta evidencia.'),
('2838092','2020-08-31 17:00','115','Buen dia, se realiza validación y el servidor no se encuentra conectado a CyberArk.'),
('2836426','2020-08-31 16:57','116','Buen dia, se realiza la validación y los servidores no se encuentran conectados en CyberArk.')

--tabbla caso problema

INSERT INTO problema(id,caso_fabricante,id_estado,fecha_estimada_solucion,responsable,id_incidente,descripcion)
	VALUES 
('17916053','','1','2020-08-08 12:58','juliandl','17908226','Se presenta lentitud en todos los accesos a las bases de datos'),
('17999658','1077959','1','2020-09-17 12:58','nzamudio','17995482','Buen día, el día de ayer al ingresar a CyberArk por la URL https://pam.apps.bancolombia.com el sistema esta cargando un usuario de red que no corresponde a quien se encuentra logueado en la maquina')


--tabbla caso problema junio

INSERT INTO problema(id,caso_fabricante,id_estado,fecha_estimada_solucion,responsable,id_incidente,descripcion)
	VALUES 
('17755420',null,'3','2020-06-26 11:16','juliandl','17754103','Inconvenientes de accesos a servidores de Base de datos desde CyberArk
a los siguientes servidores y la siguiente cuenta:

usrtdllo
10.60.184.196
SBBOGBBD01ST

10.8.5.196
USRTDLLO
SBMDEBBD01ST'),
('17815198',null,'3','2020-06-26 16:35','olserran','17812928','Se reiniciaron los servicios de Automation Anywhere en el servidor sbmdebprp22v y se solicitaron pruebas a los usuarios. Manifiestan normalidad en el servicio.

Desde Monitoreo GIOTI se tiene alerta para la url: https://aaejecv11.bancolombia.corp que es la de balanceo para asistente en proceso, la cual al cargar es de manera intermitente'),
('17818496',null,'3','2020-06-28 3:40','olserran','17812928','Se reiniciaron los servicios de Automation Anywhere en el servidor sbmdebprp22v y se solicitaron pruebas a los usuarios. Manifiestan normalidad en el servicio.

Desde Monitoreo GIOTI se tiene alerta para la url: https://aaejecv11.bancolombia.corp que es la de balanceo para asistente en proceso, la cual al cargar es de manera intermitente'),
('17818500',null,'3','2020-06-28 4:22','olserran','17812928','Se reiniciaron los servicios de Automation Anywhere en el servidor sbmdebprp22v y se solicitaron pruebas a los usuarios. Manifiestan normalidad en el servicio.

Desde Monitoreo GIOTI se tiene alerta para la url: https://aaejecv11.bancolombia.corp que es la de balanceo para asistente en proceso, la cual al cargar es de manera intermitente')

--tabbla caso problema julio

INSERT INTO problema(id,caso_fabricante,id_estado,fecha_estimada_solucion,responsable,id_incidente,descripcion)
	VALUES 

('17569877',null,'3','2020-07-02 12:51','juliandl','17562288','Ejecutnado la OC 2657421 se presento perdida de Conexión con el servidor y no fue posible bajar la aplicación de forma correcta, finalmente se tuvo que cancelar los procesos de aplicacion con kill - 9

Se probo con conexion directa por putty, string de conexión, conexion directa en cyberArk, con identico resultado. 

Se inicia proceso de validaciones del Incidente y pasa a proceso de solución '),
('17569877',null,'3','2020-07-02 12:51','juliandl','17562315','Al acceder por medio de cyberARk (tanto desde la aplicación como por el string) luego de varios minutos la sesión puty se cierra sin ningún

Se inicia proceso de validaciones del Incidente y pasa a proceso de solución '),
('17569877',null,'3','2020-07-02 12:51','juliandl','17562398','Ejecutnado la OC 2664311 se presento perdida de Conexión con la Base de datos
Se inicia proceso de validaciones del Incidente y pasa a proceso de solución 

Se probo con conexión directa por putty, string de conexión, conexión directa en cyberArk, con identico resultado.
'),
('17569877',null,'3','2020-07-02 12:51','juliandl','17562429','Al acceder por medio de cyberARk (tanto desde la aplicación como por el string) luego de varios minutos la sesión puty se cierra sin ningún mensaje de error esto para los servidores, todos con la cuenta de OS: ORACLE, usuario de conexión: jorengif'),
('17569877',null,'3','2020-07-02 12:51','juliandl','17562430','Al acceder por medio de cyberARk (tanto desde la aplicación como por el string) luego de varios minutos la sesión puty se cierra sin ningún mensaje de error esto para los servidores, todos con la cuenta de OS: ORACLE, usuario de conexión: jorengif'),
('17569877',null,'3','2020-07-02 12:51','juliandl','17562456','Al acceder por medio de cyberARk (tanto desde la aplicación como por el string) luego de varios minutos la sesión puty se cierra sin ningún mensaje de error esto para los servidores, todos con la cuenta de OS: USRTSAPE, usuario '),
('17569877',null,'3','2020-07-02 12:51','juliandl','17562412','Al acceder por medio de cyberARk (tanto desde la aplicación como por el string) luego de varios minutos la sesión puty se cierra sin ningún mensaje de error esto para los servidores, todos con la cuenta de OS: ORACLE, usuario de conexión: jorengif')


--tabla documentacion problema junio

INSERT INTO documentacion_problema(id,id_problema,documentacion,fecha)
	VALUES 
('3','17032097','CORREO
Karsten
xxxxxxx

USD DD/MM/AAAA
Se registra el problema técnico:

La solución temporal es realizar el acceso a CyberArk por pam.bancolombia o abrir el navegador en modo incognito en caso de acceder por pam.apps.

El fabricante indica que esto no está actualmente soportado y ha registrado una solicitud de mejora para aplicar esta funcionalidad en un futuro desarrollo.

"se realizarán más pruebas por parte del banco con la configuración de keepalives en putty, como una solución temporal y con estás definir si pueden realizar las actividades del fin de semana. De igual manera por parte de Evolution aplicarán algunos cambios en los componentes para verificar posteriormente si está puede ser la solución al incidente. Guillermo Villegas Gamboa es el usuario final"

Este caso se categoriza en la matriz de riesgo ya que los componentes PSM2 y PVWA2 se encuentran apagados por solicitud del banco y que no fue posible replicar el error reportado.','2020-02-03 23:00'),
('4','17267732','Se recibe comunicación por parte de cyberark, se procede a validar Actualmente esta no es una característica disponible. Hay una solicitud de mejora presente para agregar esto que acabo de promocionar para usted. https://cyberark-customers.force.com/s/enhancement-request detail?id=0872J00000090k7QAA
Le recomiendo que compruebe la solicitud de mejora y la promocione usted mismo para aumentar su visibilidad para una futura actualización de la versión

Los reportes nativos de cyberark no traían la información requerida para plataforma de servidores windows.

SOLUCION BRINDADA: Se desarrollo un reporte el cual se almacenara en la siguiente ruta:
\\sbmdebns03\VP_SERV_ADMIN\DIR_CIBER_INF\GCIA_IDENT_ACC\MacrosGAIA\ProcesosAutomaticos\ControlUsuarios\CyberArk\ReportesWindows
se deja reporte en esa ruta el cual se ejecutara todos los dias a las 3:30 am','2020-06-03 9:18'),
('5','17569877','Se estableció como solución temporal "modificar el tiempo de keepalive en el cleinte Putty, Winscp, entre otros." de acuerdo con el correo "Inconvenientes Bases de datos por CyberArk" el día 16/04/2020 se realizaron las pruebas satisfactorias con el equipo Evolution conjuntamente con el usuario del Banco Guillermo Villegas Gamboa

04/29/2020 07:24 pm

Se ajusto la resolución a la ventana de conexión, se valida la configuración de timeout del portal web PVWA la cual se encuenra configurada a 20 minutos, pero hay que tener lo siguiente en cuenta:


"Hay que aclarar que el que estén trabajando en la sesión de RDP no aplica para PVWA, me explico el tiempo que estén en myextra no cuenta como si estuvieran activos en PVWA, en ese caso si no quieren que se cierre su sesión de PVWA antes de cada 20 minutos deben hacer alguna acción (buscar un usuario, dar click en alguna opción)"','2020-06-18 9:50'),
('6','17651221','Se realiza instalaron de flash player version32, se genera un error diferente cuando se intenta cargar la ventana. se investigara como permitir la ejecucion de flash player en los servidores PSM.

CIERRE 26/06/2020 14:11 Julian L
Se realiza configuración de una llave de registro PluginsAllowedForUrls y se adiciona dos strings de con nombre 1 y 2 para https y http. Lo cual permite la ejecutivo de flash player en el navegador.	','2020-06-26 14:11'),
('7','17755420','Inconvenientes De Accesos a Bases de Datos desde CyberArk

Resuelto "De acuerdo a las modificaciones ejecutada en el conector SQL Developer y la sesión de trabajo con el usuario se realiza el cierre del problema, ya que no se ha vuelto a replicar el error.
Adicional, hacemos la aclaratoria que al momento de establecer sesión con el conector no se debe interactuar con otra aplicación ya que lo anterior causaría la falla de conexión con el SQL Developer."','2020-06-26 11:16'),
('8','17815198','Caída masiva servidor producción https://sbmdebprp22v.bancolombia.corp/ y https://aaejecv11.bancolombia.corp/

. Para ver el detalle de la solicitud acceda a través de los siguientes vínculos:

Gestión Mesa GIOTI: 1508548
Gestión de Notificaciones: 1508547

CIERRE: Se realiza revisIón y del servidor mencionado no se presenta error al desplegar las listas ni descarga archivo html, se adjunta evidencia.	','2020-06-26 16:35'),
('9','17818496','Inconvenientes al presionar iconos dentro de la interfaz gráfica del F5 desde PAM CyberArk (Igual al problema reportado anteriormente en el caso 17815198)

CIERRE: Buen dia se realiza validación enviando varias conexiones con el usuario usrtadmi en el servidor y realizando pruebas en la opción profiles al dar click en las opciones ingresa correctamente (Evidencias Adjuntas), se valida la evidencia enviada por el usuario.

Por favor informar si se puede realizar una sesión para poder replicar el error debido a que las pruebas realizadas no evidenciamos el error.','2020-06-28 3:40'),
('10','17818500','Inconvenientes en la interfaz gráfica del F5 BCO NO PDN. Se cerró la sesión de escritorio remoto repentinamente y no se perdió conexión de la VPN, internet o algo que pudiera explicar la desconexión
Ver imagen adjunta

CIERRE: Buenos dias, se realizan pruebas de conexión al servidor ingresando a las opciones del usuario y no se bloquea la conexión. (Se adjuntan evidencias).

Se valida varias veces y las conexiones se encuentran estables, se valida y el dia de ayer y hoy estan ejecutando actualización de la SW de niquia lo cual esta generando indisponibilidad en la RED lo cual puede estar afectando las conexiones OC 2598509.

Por favor nos informar si la falla se sigue presentando podemos realizar una sesión para validar.','2020-06-28 4:22')

--tabla documentacion problema

INSERT INTO documentacion_problema(id_problema,fecha,id,documentacion)
	VALUES 
('17916053','2020-08-08 12:58','1','se debe de utilizar la cadena de conexión, mientras se define el acceso a la carpeta compartida para el paso de archivos'),
('	17999658','2020-09-17 12:18','2','El problema es que cuando un segundo usuario (USER_B con WORKSTATION_B) se conecta al PVWA AWS, pasa el método de autenticación de Windows, pero campo de usuario se encuentra diligenciado con la credencial de USER_A, bloqueándolo y no permitiendo que sea cambiado. Debido a esto, el usuario USER_B no puede autenticarse, este es un comportamiento constante.')

--tabla estado

	INSERT INTO estado (id, estado, estatus)
	VALUES 
		(1, 'Abierto', 1),
		(2, 'En proceso', 1),
		(3, 'Cerrado', 1),
		(4, 'Transferido', 1),
		(5, 'Cancelado', 1)
;
--tabla prioridad
	INSERT INTO prioridad (id, prioridad, estatus)
	VALUES 
		(1, 'Baja', 1),
		(2, 'Media', 1),
		(3, 'Alta', 1),
		(4, 'No Asignada', 1)
;
--tabla area
	INSERT INTO area (id, area, estatus)
	VALUES 
		(1, 'Funcional', 1),
		(2, 'Aplicación', 1),
		(3, 'Infraestructura', 1),
		(4, 'Operación', 1),
		(5, 'Ejercicio de continuidad', 1)
;
--tabla grupo

	INSERT INTO grupo (id, grupo, estatus)
	VALUES 
		(1, 'TS Funciones Corporativas Seguridad Evolution', 1),
		(2, 'Administrativo Gestion Identidades CyberArk', 1),
		(0, 'Otros', 1)
;
--tabla categoria

	INSERT INTO categoria (id, categoria, estatus)
	VALUES 
		(1, 'OC Administrativo Gestion Idetidades Evolution', 1),
		(2, 'OC TS Funciones Corporativas Seguridad Evolution Ejercicios de Continuidad', 1),
		(0, 'Otros', 1)
;