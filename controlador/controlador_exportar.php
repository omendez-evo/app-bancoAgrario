<?php   
    session_start();
    
    require_once '../modelo/incidente.php';
    require_once '../modelo/oc.php';
    require_once '../modelo/problema.php';
    require_once '../modelo/punto_atencion.php';
    require_once '../modelo/iniciativas.php';
    require_once 'PHPExcel.php';
    require_once 'PHPExcel/IOFactory.php';



    $incidente= new incidente();
    $oc=new oc();
    $problema= new problema();
    $punto_atencion= new punto_atencion();
    $iniciativas= new iniciativas();
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

        exit();

    }    
    function exportar_problema($lista1,$lista2){
        // Create new PHPExcel object
        $objPHPExcel = new PHPExcel();

        $objPHPExcel->setActiveSheetIndex(0);
        $objPHPExcel->getActiveSheet()->setTitle('Data');
        ##Cabecera
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'ID');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'ID_incidente');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'Caso Fabricante');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'Descripción');
        $objPHPExcel->getActiveSheet()->setCellValue('E1', 'Fecha Creación');
        $objPHPExcel->getActiveSheet()->setCellValue('F1', 'Fecha Fin');
        $objPHPExcel->getActiveSheet()->setCellValue('G1', 'Estado');
        $objPHPExcel->getActiveSheet()->setCellValue('H1', 'Responsable');
        $i = 2;                
        foreach ($lista1 as $row){
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['id']);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['id_incidente']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['caso_fabricante']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $row['descripcion']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $row['fecha_creacion']);
            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $row['fecha_fin']);
            $objPHPExcel->getActiveSheet()->setCellValue('G' . $i, $row['estado']);
            $objPHPExcel->getActiveSheet()->setCellValue('H' . $i, $row['responsable']);
            $i++;
        }

        $objPHPExcel->createSheet();
        
        $objPHPExcel->setActiveSheetIndex(1);
        $objPHPExcel->getActiveSheet()->setTitle('Documentacion');

        ##Cabecera
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'ID');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'Documentacion');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'Fecha');
        $i = 2;                
        foreach ($lista2 as $row){
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['id']);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['documentacion']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['fecha']);
            $i++;
        }
        // Create a first sheet, representing sales data

        
        // Redirect output to a client’s web browser (Excel5)
        $timestamp = time();
        $filename = 'Export_problema_' . $timestamp . '.xls';
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="'.$filename.'"');
        header('Cache-Control: max-age=0');
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $objWriter->save('php://output');
    }
    function exportar_general($lista1,$lista2,$nombre){
        // Create new PHPExcel object
        $objPHPExcel = new PHPExcel();

        $objPHPExcel->setActiveSheetIndex(0);
        $objPHPExcel->getActiveSheet()->setTitle('Data');

        ##Cabecera
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'ID');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'Descripción');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'Afectado');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'Prioridad');
        $objPHPExcel->getActiveSheet()->setCellValue('E1', 'Fecha Inicio');
        $objPHPExcel->getActiveSheet()->setCellValue('F1', 'Fecha Fin');
        $objPHPExcel->getActiveSheet()->setCellValue('G1', 'Responsable');
        $objPHPExcel->getActiveSheet()->setCellValue('H1', 'Estado');
        $i = 2;                
        foreach ($lista1 as $row){
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['id']);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['descripcion']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['afectados']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $row['prioridad']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $row['fecha_inicio']);
            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $row['fecha_fin']);
            $objPHPExcel->getActiveSheet()->setCellValue('G' . $i, $row['responsable']);
            $objPHPExcel->getActiveSheet()->setCellValue('H' . $i, $row['estado']);
            $i++;
        }

        $objPHPExcel->createSheet();
        
        $objPHPExcel->setActiveSheetIndex(1);
        $objPHPExcel->getActiveSheet()->setTitle('Documentacion');

        ##Cabecera
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'ID');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'Documentacion');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'Fecha');
        $i = 2; 
        if($lista2!=false){               
            foreach ($lista2 as $row){
                $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['id']);
                $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['documentacion']);
                $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['fecha']);
                $i++;
            }
        }
        $timestamp = time();
        $filename = 'Export_' . $nombre . '_' . $timestamp . '.xls';
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="'.$filename.'"');
        header('Cache-Control: max-age=0');
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $objWriter->save('php://output');
    }
    function exportar_patencion($lista1,$lista2){
        // Create new PHPExcel object
        $objPHPExcel = new PHPExcel();

        $objPHPExcel->setActiveSheetIndex(0);
        $objPHPExcel->getActiveSheet()->setTitle('Data');

        ##Cabecera
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'Titulo');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'Descripción');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'Afectado');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'Fecha Fin');
        $objPHPExcel->getActiveSheet()->setCellValue('E1', 'Estado');
        $i = 2;                
        foreach ($lista1 as $row){
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['titulo']);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['descripcion']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['afectado']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $row['fecha_fin']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $row['estado']);
            $i++;
        }

        $objPHPExcel->createSheet();
        
        $objPHPExcel->setActiveSheetIndex(1);
        $objPHPExcel->getActiveSheet()->setTitle('Documentacion');

        ##Cabecera
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'Titulo');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'Avances');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'Fecha Avance');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'Usuario');
        $i = 2;                
        foreach ($lista2 as $row){
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['titulo']);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['avances']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['fecha_avance']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $row['usuario']);
            $i++;
        }

        // Create a first sheet, representing sales data

        
        // Redirect output to a client’s web browser (Excel5)
        $timestamp = time();
        $filename = 'Export_p_atencion_' . $timestamp . '.xls';
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="'.$filename.'"');
        header('Cache-Control: max-age=0');
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $objWriter->save('php://output');
    }
    function exportar_iniciativas($lista1,$lista2){
        // Create new PHPExcel object
        $objPHPExcel = new PHPExcel();

        $objPHPExcel->setActiveSheetIndex(0);
        $objPHPExcel->getActiveSheet()->setTitle('Data');

        ##Cabecera
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'ID');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'Iniciativas');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'Descripción');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'Tiempo Transcurrido');
        $i = 2;                
        foreach ($lista1 as $row){
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['id']);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['iniciativa']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['descripcion']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $row['tiempo']);
            $i++;
        }

        $objPHPExcel->createSheet();
        
        $objPHPExcel->setActiveSheetIndex(1);
        $objPHPExcel->getActiveSheet()->setTitle('Tareas');

        ##Cabecera
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'Iniciativa');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'Descripción');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'Usuario');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'Fecha');
        $objPHPExcel->getActiveSheet()->setCellValue('E1', 'Tiempo Transcurrido');
        $objPHPExcel->getActiveSheet()->setCellValue('F1', 'Estado');
        $objPHPExcel->getActiveSheet()->setCellValue('G1', 'Observación');
        $i = 2;                
        foreach ($lista2 as $row){
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $row['iniciativa']);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $row['descripcion']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $row['usuario']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $row['fecha_creacion']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $row['tiempo']);
            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $row['estado']);
            $objPHPExcel->getActiveSheet()->setCellValue('G' . $i, $row['observacion']);
            $i++;
        }

        // Create a first sheet, representing sales data

        $objPHPExcel->setActiveSheetIndex(0);
        // Redirect output to a client’s web browser (Excel5)
        $timestamp = time();
        $filename = 'Export_' . $timestamp . '.xls';
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="'.$filename.'"');
        header('Cache-Control: max-age=0');
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $objWriter->save('php://output');
    }
    switch ($_GET['opcion']) {
        case '1'://opcion que exporta tabla por opcion
                switch ($_GET['busqueda']) {
                    case 'incidentes':
                        $lista=$incidente->exportar_tabla();
                        $lista2=$incidente->exportar_tabla_documentacion();
                        exportar_general($lista,$lista2,$_GET['busqueda']);
                        break;
                    case 'oc':
                        $lista=$oc->exportar_tabla();
                        $lista2=$oc->exportar_tabla_documentacion();
                        exportar_general($lista,$lista2,$_GET['busqueda']);
                        break;
                    case 'problemas':
                        $lista=$problema->exportar_tabla();
                        $lista2=$problema->exportar_tabla_documentacion();
                        exportar_problema($lista,$lista2);
                        break;
                    case 'punto_atencion':
                        $lista=$punto_atencion->exportar_tabla();
                        $lista2=$punto_atencion->exportar_tabla_documentacion();
                        exportar_patencion($lista,$lista2);
                        break;
                    case 'iniciativa':
                        $lista=$iniciativas->exportar_tabla();
                        $lista2=$iniciativas->exportar_tabla_documentacion();
                        exportar_iniciativas($lista,$lista2);
                        break;
                }
                //exportProductDatabase($lista,$_GET['busqueda']);  
            break;
        case '2'://opcion que exporta tabla historial punto atencion
                //exportProductDatabase($usuarios_backup->exportar_tabla2(),"total");  
                $lista=$punto_atencion->exportar_tabla_historial($_GET['fecha_inicio'],$_GET['fecha_final']);
                $lista2=$punto_atencion->exportar_tabla_historial_documentacion($_GET['fecha_inicio'],$_GET['fecha_final']);
                exportar_patencion($lista,$lista2);
            break;
        case '3'://opcion que exporta tabla historial punto atencion
                //exportProductDatabase($usuarios_backup->exportar_tabla2(),"total");  
                $lista=$incidente->exportar_tabla_historial($_GET['fecha_inicio'],$_GET['fecha_final']);
                $lista2=$incidente->exportar_tabla_historial_documentacion($_GET['fecha_inicio'],$_GET['fecha_final']);
                exportar_general($lista,$lista2,"incidentes");
            break;
        case '4'://opcion que exporta tabla historial punto atencion
                //exportProductDatabase($usuarios_backup->exportar_tabla2(),"total");  
                $lista=$oc->exportar_tabla_historial($_GET['fecha_inicio'],$_GET['fecha_final']);
                $lista2=$oc->exportar_tabla_historial_documentacion($_GET['fecha_inicio'],$_GET['fecha_final']);
                exportar_general($lista,$lista2,"oc");
            break;
        case '5'://opcion que exporta tabla historial iniciativas
                //exportProductDatabase($usuarios_backup->exportar_tabla2(),"total");  
                $lista=$iniciativas->exportar_tabla_historial($_GET['fecha_inicio'],$_GET['fecha_final']);
                $lista2=$iniciativas->exportar_tabla_historial_documentacion($_GET['fecha_inicio'],$_GET['fecha_final']);
                exportar_iniciativas($lista,$lista2);
        case '6'://opcion que exporta tabla historial iniciativas
                //exportProductDatabase($usuarios_backup->exportar_tabla2(),"total");  
                $lista=$iniciativas->exportar_tabla_demanda($_GET['fecha_inicio']." 00:00:00",$_GET['fecha_final']." 23:59:59");
                $lista2=$iniciativas->exportar_tabla_demanda_documentacion($_GET['fecha_inicio']." 00:00:00",$_GET['fecha_final']." 23:59:59");
                //echo count($lista);
                exportar_iniciativas($lista,$lista2);
            break;
    }
?>