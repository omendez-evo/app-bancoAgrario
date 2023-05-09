<?php   
    require_once 'PHPExcel.php';
    require_once 'PHPExcel/IOFactory.php';



    switch ($_GET['opcion']) {
        case '1': //opcion que para ingresar datos desde archivo csv
                #Funcion que crea archivo csv
                function exportProductDatabase($productResult,$nombre) {

                    $timestamp = time();
                    $filename = 'Export_' . $nombre . '_' . $timestamp . '.xls';
                    
                    header("Content-Type: application/vnd.ms-excel");
                    header("Content-Disposition: attachment; filename=\"$filename\"");
                    
                    $isPrintHeader = false;

                    foreach ($productResult as $row) {

                        if (! $isPrintHeader ) {

                            echo implode("\t", array_keys($row)) . "\n";
                            $isPrintHeader = true;

                        }

                        echo implode("\t", array_values($row)) . "\n";

                    }


                }



                ##PRUEBAAAAAAAA
                function prueba_exportar($lista1,$lista2,$lista3,$lista4,$lista5){
                    // Create new PHPExcel object
                    $objPHPExcel = new PHPExcel();

                    $objPHPExcel->setActiveSheetIndex(0);
                    $objPHPExcel->getActiveSheet()->setTitle('Data');

                    ##Cabecera
                    $objPHPExcel->getActiveSheet()->setCellValue('A1', 'Server Name');
                    $objPHPExcel->getActiveSheet()->setCellValue('B1', 'SO');
                    $objPHPExcel->getActiveSheet()->setCellValue('C1', 'IP');
                    $i = 2;                
                    foreach ($lista5 as $row){
                        $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['servername']);
                        $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['so']);
                        $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['ip']);
                        $i++;
                    }

                    $objPHPExcel->createSheet();

                    $objPHPExcel->setActiveSheetIndex(1);
                    $objPHPExcel->getActiveSheet()->setTitle('Servidores duplicados');

                    ##Cabecera
                    $objPHPExcel->getActiveSheet()->setCellValue('A1', 'Server Name');
                    $objPHPExcel->getActiveSheet()->setCellValue('B1', 'SO');
                    $objPHPExcel->getActiveSheet()->setCellValue('C1', 'IP');
                    $i = 2;                
                    foreach ($lista4 as $row){
                        $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['servername']);
                        $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['so']);
                        $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['ip']);
                        $i++;
                    }

                    // Create a first sheet, representing sales data
                    $objPHPExcel->createSheet();
                    $objPHPExcel->setActiveSheetIndex(2);
                    $objPHPExcel->getActiveSheet()->setTitle('Servidores que Coinciden');

                    ##Cabecera
                    $objPHPExcel->getActiveSheet()->setCellValue('A1', 'Server Name');
                    $objPHPExcel->getActiveSheet()->setCellValue('B1', 'SO');
                    $objPHPExcel->getActiveSheet()->setCellValue('C1', 'IP');
                    $i = 2;                
                    foreach ($lista1 as $row){
                        $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['servername']);
                        $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['so']);
                        $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['ip']);
                        $i++;
                    }
                    
                    $objPHPExcel->createSheet();

                    $objPHPExcel->setActiveSheetIndex(3);
                    $objPHPExcel->getActiveSheet()->setTitle('Servidores que no Coinciden');

                    ##Cabecera
                    $objPHPExcel->getActiveSheet()->setCellValue('A1', 'Server Name');
                    $objPHPExcel->getActiveSheet()->setCellValue('B1', 'SO');
                    $objPHPExcel->getActiveSheet()->setCellValue('C1', 'IP');
                    $i = 2;                
                    foreach ($lista3 as $row){
                        $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['servername']);
                        $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['so']);
                        $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['ip']);
                        $i++;
                    }

                    $objPHPExcel->createSheet();
                    // Add some data to the second sheet, resembling some different data types
                    $objPHPExcel->setActiveSheetIndex(4);
                    $objPHPExcel->getActiveSheet()->setTitle('Servidores cyberark no aparecen');
                    $objPHPExcel->getActiveSheet()->setCellValue('A1', 'Server Name');

                    $i = 2;                
                    foreach ($lista2 as $row){
                        $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['servername']);
                        $i++;
                    }

                    // Redirect output to a client’s web browser (Excel5)
                    header('Content-Type: application/vnd.ms-excel');
                    header('Content-Disposition: attachment;filename="name_of_file.xls"');
                    header('Cache-Control: max-age=0');
                    $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
                    $objWriter->save('php://output');
                }
                $imprimir="";

                $longitudDeLinea = 0;
                $delimitador = ";"; # Separador de columnas
                $caracterCircundante = '"'; # A veces los valores son encerrados entre comillas
                $nombreBanco = "../assets/datos/archivo_banco.csv"; #Ruta del archivo, en este caso está junto a este script

                $nombreInventarioReporte= "../assets/datos/archivo_InventarioReporte.csv";

                $nombreWindows= "../assets/datos/archivo_detalles_windows.csv";
                # Abrir el archivo
                $gestor_nombreBanco = fopen($nombreBanco, "r");

                $gestor_inventarioReporte = fopen($nombreInventarioReporte, "r");

                $gestor_windows = fopen($nombreWindows, "r");

                #lectura de archivo de banco
                $servername_ultimo="";
                $c=0;
                while (($result = fgetcsv($gestor_nombreBanco, $longitudDeLinea, $delimitador, $caracterCircundante)) !== false){
                    if(($result[1]=="Servidores") && ($result[6]=="Operacion")){
                        if($result[35] !=""){
                            $data_banco[]= array("servername" => strtoupper($result[35]),"so"=> $result[55],"ip"=> $result[5]);
                        }
                    }
                }
                /*while (($result = fgetcsv($gestor_nombreBanco, $longitudDeLinea, $delimitador, $caracterCircundante)) !== false){
                    if(($result[1]=="Servidores") && ($result[6]=="Operacion")){
                        if($result[35] !=""){
                            if($result[35]!=$servername_ultimo){
                                $csv_banco[]= array("servername" => strtoupper($result[35]),"so"=> $result[55],"ip"=> $result[5]);
                                $servername_ultimo=$result[35];
                            }
                        }
                    }
                }*/
                #fin 
                #lectura archivo inventario
                while (($result = fgetcsv($gestor_inventarioReporte, $longitudDeLinea, $delimitador, $caracterCircundante)) !== false){
                    if($result[2] !="BCO-BOVEDA" && $result[2] != "windowstest" && $result[2] !=""){
                        $csv_inventario[]= array("servername" => strtoupper($result[16]));
                    }
                }
                #fin

                #lectura archivo detalles windows
                while (($result = fgetcsv($gestor_windows, $longitudDeLinea, $delimitador, $caracterCircundante)) !== false){
                        $csv_windows[]= array("servername" => $result[0]);
                }
                #fin

                $ultimo="";
                foreach($data_banco as $datosbanco){
                    if($datosbanco['servername']!=$ultimo){
                        $csv_banco[]= array("servername" => $datosbanco['servername'],"so" => $datosbanco['so'],"ip" => $datosbanco['ip']);
                        $ultimo=$datosbanco['servername'];
                    }
                }

                #primer ciclo que busca informacion entre archivo banco y inventario
                $csv_no_coinciden=[];
                foreach($csv_banco as $datosbanco){
                    $vali=false;
                    foreach($csv_inventario as $datosinventario){
                        if($datosbanco['servername']==$datosinventario['servername']){
                            $csv_final[]= array("servername" => $datosbanco['servername'],"so" => $datosbanco['so'],"ip" => $datosbanco['ip']);
                            $vali=true;
                            break;
                        }
                    }
                    if($vali==false){//valida que siga siendo falso para entrar a buscar a los q no coinciden
                        foreach($csv_no_coinciden as $datos_final){//ciclo no coinciden
                            if($datosbanco['servername']==$datos_final['servername']){//compara que servername del banco no este array
                                $vali=true;
                                break;
                            }
                        }
                        if($vali==false){//si continua en false es q no esta en el array, y se inserta.
                            $csv_no_coinciden[]= array("servername" => $datosbanco['servername'],"so" => $datosbanco['so'],"ip" => $datosbanco['ip']); 
                        }
                    }
                }

                #segundo ciclo que busca informacion entre archivo banco y detalle windows
                foreach($csv_banco as $datosbanco){
                    foreach($csv_windows as $datoswindows){
                        if($datosbanco['servername']==$datoswindows['servername']){
                            $csv_final[]= array("servername" => $datosbanco['servername'],"so" => $datosbanco['so'],"ip" => $datosbanco['ip']);
                            $vali=true;
                            break;
                        }
                    }
                    if($vali==false){//valida que siga siendo falso para entrar a buscar a los q no coinciden
                        foreach($csv_no_coinciden as $datos_final){//ciclo no coinciden
                            if($datosbanco['servername']==$datos_final['servername']){//compara que servername del banco no este array
                                $vali=true;
                                break;
                            }
                        }
                        if($vali==false){//si continua en false es q no esta en el array, y se inserta.
                            $csv_no_coinciden[]= array("servername" => $datosbanco['servername'],"so" => $datosbanco['so'],"ip" => $datosbanco['ip']); 
                        }
                    }
                }
                
                #primer ciclo que buscan registros de los q estan en el inventario pero que el banco no los tiene
                $csv_final_2=[];
                foreach($csv_inventario as $datosinventario){
                    $vali=false;
                    if($datosinventario['servername']!=$servername_ultimo){
                        foreach($csv_banco as $datosbanco){
                            if($datosinventario['servername']==$datosbanco['servername']){
                                $vali=true;
                                break;
                            }
                        }
                    }
                    if($vali==false){
                        foreach($csv_final_2 as $datos_final){
                            if($datosinventario['servername']==$datos_final['servername']){
                                $vali=true;
                                break;
                            }
                        }
                        if($vali==false){
                            $csv_final_2[]= array("servername" => $datosinventario['servername']); 
                        }
                    }                   
                }

                #segundo ciclo que buscan registros de los q estan en el inventario windows pero que el banco no los tiene 
                foreach($csv_windows as $datoswindows){
                    $vali=false;
                    if($datoswindows['servername']!=$servername_ultimo){
                        $servername_ultimo=$datoswindows['servername'];
                        foreach($csv_banco as $datosbanco){
                            if($datoswindows['servername']==$datosbanco['servername']){
                                $vali=true;
                                break;
                            }
                        }
                    }
                    if($vali==false){
                        foreach($csv_final_2 as $datos_final){
                            if($datoswindows['servername']==$datos_final['servername']){
                                $vali=true;
                                break;
                            }
                        }
                        if($vali==false){
                            $csv_final_2[]= array("servername" => $datoswindows['servername']); 
                        }
                    }                 
                }
                
                
                #ciclo que busca los servidores del banco que se repiten 
                $ultimo="";
                foreach($data_banco as $datosbanco){
                    if($datosbanco['servername']==$ultimo){
                        $csv_repi[]= array("servername" => $datosbanco['servername'],"so" => $datosbanco['so'],"ip" => $datosbanco['ip']);
                    }
                    $ultimo=$datosbanco['servername'];
                }
                prueba_exportar($csv_final,$csv_final_2,$csv_no_coinciden,$csv_repi,$csv_banco);
                    
              
            break;

            case '2'://opcion que mueve CSV
                $archivo=$_FILES['cargar_csv']['tmp_name'];
                //$tamano=count($imagen);
                $tipoArchivo=$_FILES['cargar_csv']['type'];
                $directorio = $_SERVER['DOCUMENT_ROOT'].'/app-bancolombia/assets/datos/data.csv';
                move_uploaded_file($archivo,$directorio);
                //header("location: controlador_ingresar_datos.php?opcion=1");
                echo "<script>f_listar_2();</script>";
                break;
            case '3'://FUNCION PARA SV
                function exportProductDatabase($productResult,$nombre) {

                    $timestamp = time();
                    $filename = 'Export_' . $nombre . '_' . $timestamp . '.xls';
                    
                    header("Content-Type: application/vnd.ms-excel");
                    header("Content-Disposition: attachment; filename=\"$filename\"");
                    
                    $isPrintHeader = false;

                    foreach ($productResult as $row) {

                        if (! $isPrintHeader ) {

                            echo implode("\t", array_keys($row)) . "\n";
                            $isPrintHeader = true;

                        }

                        echo implode("\t", array_values($row)) . "\n";

                    }


                }
                    $imprimir="";

                    $longitudDeLinea = 0;
                    $delimitador = ";"; # Separador de columnas
                    $caracterCircundante = '"'; # A veces los valores son encerrados entre comillas
                    $users = "../assets/datos/users.csv"; #Ruta del archivo, en este caso está junto a este script

                    $inventario= "../assets/datos/inventario.csv";
                    $inventario2= "../assets/datos/inventario2.csv";

                    # Abrir el archivo
                    $gestor_users = fopen($users, "r");

                    $gestor_inventario = fopen($inventario, "r");
                    $gestor_inventario2 = fopen($inventario2, "r");
                ##llenado de csv user
                while (($result = fgetcsv($gestor_users, $longitudDeLinea, $delimitador, $caracterCircundante)) !== false){
                    $csv_users[]= array("Display Name" => $result[2],"Account Status" => $result[4],"Email Address" => $result[5],"OU Name" => $result[7],"E-mail Alias" => $result[8]);
                }
                ##llenado de csv inventario
                while (($result = fgetcsv($gestor_inventario, $longitudDeLinea, $delimitador, $caracterCircundante)) !== false){
                    $csv_inventario[]= array("DIAS_INFO" => $result[0],"Host name" => $result[1],"NOMBRE_USUARIO" => $result[2]);
                }
                ##llenado de csv inventario
                while (($result = fgetcsv($gestor_inventario2, $longitudDeLinea, $delimitador, $caracterCircundante)) !== false){
                    $csv_inventario2[]= array("DIAS_INFO" => $result[0],"Host name" => $result[1],"NOMBRE_USUARIO" => $result[2]);
                }

                #primer ciclo 
                foreach($csv_users as $datos_users){
                    $nombres = explode("@", $datos_users['Email Address']);
                    $usuario=strtoupper($nombres[0]);
                    $vali=false;
                    foreach($csv_inventario as $datos_inventarios){
                        if($usuario==$datos_inventarios['NOMBRE_USUARIO']){
                            $csv_final[]= array("Display Name" => $datos_users['Display Name'],"host name" => $datos_inventarios['Host name'],"Account Status" => $datos_users['Account Status'],"Email Address" => $datos_users['Email Address'],"OU Name" => $datos_users['OU Name'],"E-mail Alias" => $datos_users['E-mail Alias']);
                            $vali=true;
                            break;

                        }
                    }
                    if($vali==false){//ahora busca combinacion de nombre
                        $nombres = explode(" ", $datos_users['Display Name']);

                        switch (count($nombres)) {
                            case 3:
                                $usuario=strtoupper($nombres[0].$nombres[1]);
                                foreach($csv_inventario as $datos_inventarios){
                                    if($usuario==$datos_inventarios['NOMBRE_USUARIO']){
                                        $csv_final[]= array("Display Name" => $datos_users['Display Name'],"host name" => $datos_inventarios['Host name'],"Account Status" => $datos_users['Account Status'],"Email Address" => $datos_users['Email Address'],"OU Name" => $datos_users['OU Name'],"E-mail Alias" => $datos_users['E-mail Alias']);
                                        $vali=true;
                                        break;
                                    }
                                }
                                break;
                            case 4:
                                $usuario=strtoupper($nombres[0].$nombres[2]);
                                foreach($csv_inventario as $datos_inventarios){
                                    if($usuario==$datos_inventarios['NOMBRE_USUARIO']){
                                        $csv_final[]= array("Display Name" => $datos_users['Display Name'],"host name" => $datos_inventarios['Host name'],"Account Status" => $datos_users['Account Status'],"Email Address" => $datos_users['Email Address'],"OU Name" => $datos_users['OU Name'],"E-mail Alias" => $datos_users['E-mail Alias']);
                                        $vali=true;
                                        break;
                                    }
                                }
                                break;
                        }    
                    }
                    if($vali==false){
                        foreach($csv_inventario2 as $datos_inventarios){
                            if($usuario==$datos_inventarios['NOMBRE_USUARIO']){
                                $csv_final[]= array("Display Name" => $datos_users['Display Name'],"host name" => $datos_inventarios['Host name'],"Account Status" => $datos_users['Account Status'],"Email Address" => $datos_users['Email Address'],"OU Name" => $datos_users['OU Name'],"E-mail Alias" => $datos_users['E-mail Alias']);
                                $vali=true;
                                break;

                            }
                        }
                        if($vali==false){//ahora busca combinacion de nombre
                            $nombres = explode(" ", $datos_users['Display Name']);

                            switch (count($nombres)) {
                                case 3:
                                    $usuario=strtoupper($nombres[0].$nombres[1]);
                                    foreach($csv_inventario2 as $datos_inventarios){
                                        if($usuario==$datos_inventarios['NOMBRE_USUARIO']){
                                            $csv_final[]= array("Display Name" => $datos_users['Display Name'],"host name" => $datos_inventarios['Host name'],"Account Status" => $datos_users['Account Status'],"Email Address" => $datos_users['Email Address'],"OU Name" => $datos_users['OU Name'],"E-mail Alias" => $datos_users['E-mail Alias']);
                                            $vali=true;
                                            break;
                                        }
                                    }
                                    break;
                                case 4:
                                    $usuario=strtoupper($nombres[0].$nombres[2]);
                                    foreach($csv_inventario2 as $datos_inventarios){
                                        if($usuario==$datos_inventarios['NOMBRE_USUARIO']){
                                            $csv_final[]= array("Display Name" => $datos_users['Display Name'],"host name" => $datos_inventarios['Host name'],"Account Status" => $datos_users['Account Status'],"Email Address" => $datos_users['Email Address'],"OU Name" => $datos_users['OU Name'],"E-mail Alias" => $datos_users['E-mail Alias']);
                                            $vali=true;
                                            break;
                                        }
                                    }
                                    break;
                            }    
                        }
                        if($vali==false){
                            $csv_final[]= array("Display Name" => $datos_users['Display Name'],"host name" => "","Account Status" => $datos_users['Account Status'],"Email Address" => $datos_users['Email Address'],"OU Name" => $datos_users['OU Name'],"E-mail Alias" => $datos_users['E-mail Alias']);
                        }
                        
                    }
                }

                exportProductDatabase($csv_final,"users");

                
                break;
    }


?>
