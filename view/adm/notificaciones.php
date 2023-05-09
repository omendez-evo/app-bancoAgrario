<!DOCTYPE html>
<html lang="es">
<?php
    include("head.php");
    include("../navTop.php");
?>
<body class="sb-nav-fixed sb-sidenav-toggled">
        <div id="layoutSidenav">
            <?php
                include("nav.php");
            ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="sb-page-header pb-10 sb-page-header-dark bg-gradient-primary-to-secondary">
                        <div class="container-fluid">
                            <div class="sb-page-header-content py-3">
                                <ol class="breadcrumb mt-4 mb-0">
                                    <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Notificaciones</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid mt-n10">
                        <div class="card mb-4">
                            <div class="card-header" style="background-color: white;">
                                <div class="col-md-6"></div>
                                <div class="col-md-6">
                                <!--
                                        <div class="custom-control custom-radio" style="display: inline-block;color: black;">
                                            <input class="custom-control-input" checked="" type="radio" id="radio-todos" name="radioInline" value="1">
                                            <label class="custom-control-label" for="radio-todos">Todos</label>
                                        </div>
                                        <div class="custom-control custom-radio" style="display: inline-block;color: black;">
                                            <input class="custom-control-input" type="radio" name="radioInline" id="radio-rango" value="2">
                                            <label class="custom-control-label" for="radio-rango">Rango de Fechas</label>
                                        </div>
                                    
                                    <div id="data_5" style="padding: 0px; display: none;">
                                        <form class="formulario" name="formulario_registro" method="post">
                                            <div class="input-daterange">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="text" id="inicio" name="inicio" onchange="activar()" placeholder="Desde">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="text" id="final" name="final" onchange="activar()" placeholder="Hasta">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                -->
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="sb-datatable table-responsive">
                                    <table class="table table-bordered table-hover display" id="listado" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Fecha</th>
                                                <th>Asunto</th>
                                                <th>Remitente</th>
                                                <th>Hora</th>
                                            </tr>
                                        </thead>
                                        <tbody id="busqueda"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
             </div>
        </div>
<?php
    include("footer.php");
?>
<script type="text/javascript">
window.onload = function () {
    f_listar_2();
};

function f_listar_2(){//
    $("#listado").DataTable({
        language: {
            url: '../../assets/js/Spanish.json'
        },
        ajax:{
            method:"POST",
            url: "../../controlador/controlador_notificacion.php?opcion=2",
        },
        columns:[
            {data:"fecha"},
            {data:"asunto"},
            {data:"usuario_remitente"},
            {data:"hora"},
        ],
        "order": []
    });
};
$('#data_5 .input-daterange').datepicker({
        language: 'es',
        format: 'dd-mm-yyyy',
        keyboardNavigation: false,
        forceParse: false,
        autoclose: true
    });
$("input[name=radioInline]").click(function (){
    if($('input:radio[name=radioInline]:checked').val()=='2'){
        $("#data_5").show();
    }else{
        $("#data_5").hide();
        $(".formulario")[0].reset();
        //f_buscar(1,20);
    }
});
</script>
</body>
</html>

