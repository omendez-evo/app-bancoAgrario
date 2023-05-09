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
                                    <li class="breadcrumb-item"><a href="listado_iniciativa.php">Listado-Inciativas</a></li>
                                    <li class="breadcrumb-item active">Historial-Iniciativas</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid mt-n10">
                        <div class="card mb-4">
                            <div class="card-header">
                                <div class="col-md-8">
                                    <div class="row">
                                        Historial Iniciativas
                                        <div class="custom-control custom-radio" style="display: inline-block;color: black;">
                                            <input type="radio" id="inlineRadio1" value="1" name="radioInline" checked="">
                                            <label for="inlineRadio1">Todos</label>
                                        </div>
                                        <div class="custom-control custom-radio" style="display: inline-block;color: black;">
                                            <input type="radio" id="inlineRadio3" value="2" name="radioInline">
                                            <label for="inlineRadio3">Rango de Fechas</label>
                                        </div>
                                        <div class="col-md-2">
                                            <button class="btn btn-outline-success btn-icon" id="btn-export-iniciativa-historial" type="button">
                                                <i class="fas fa-file-excel"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="row justify-content-center" id="data_5" style="padding: 0px; display: none;">
                                        <form class="formulario" name="formulario_registro" method="post" >
                                            <div class="input-daterange">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control" id="inicio" name="inicio" onchange="activar()" placeholder="Desde">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control" id="final" name="final" onchange="activar()" placeholder="Hasta">
                                                        </div>
                                                    </div>
                                                </div>
                                             </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="sb-datatable table-responsive">
                                    <table class="table table-bordered table-hover display" id="tabla" width="100%" cellspacing="0">
                                        <tbody id="busqueda"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
             </div>
        </div>
<input type="text" id="pantalla" value="6" hidden="">
<?php
    include("footer.php");
?>
<script type="text/javascript">
window.onload = function () {
    //f_listar(2);
    historial();
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
        historial();
    }
});
function activar(){
    if($("#inicio").val()!=""&& $("#final").val()!=""){
        historial();
    }
}
</script>
</body>
</html>


