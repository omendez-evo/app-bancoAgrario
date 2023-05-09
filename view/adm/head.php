<?php
    session_start(); 
    if($_SESSION["id_tipo_usuario"] != 1){
        header("location: ../../controlador/controlador_sesion.php?opcion=2");     
    }
 ?>
<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content />
        <meta name="author" content />
        <title>App-Banco Agrario</title>
        <link href="../../assets/css/styles.css" rel="stylesheet" />
        <link href="../../assets/css/toastr.min.css" rel="stylesheet" />
        <link href="../../assets/css/blueimp-gallery.min.css" rel="stylesheet" crossorigin="anonymous" />
        <link href="../../assets/css/toastr.min.css" rel="stylesheet" />
        <link href="../../assets/css/dropzone.css" rel="stylesheet" />
        <link href="../../assets/css/datepicker3.css" rel="stylesheet" />
        <link href="../../assets/css/select2.min.css" rel="stylesheet" />
        <link href="../../assets/css/clockpicker/clockpicker.css" rel="stylesheet" />


        <link rel="icon" type="image/x-icon" href="../../assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="../../assets/js/all.min.js" crossorigin="anonymous"></script>
        <script src="../../assets/js/feather.min.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Libre+Franklin:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;display=swap" rel="stylesheet" />
        
        

</head>


