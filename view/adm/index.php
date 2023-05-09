<!DOCTYPE html>
<html lang="es">
<?php
    ini_set('date.timezone', 'America/Bogota');
    $time = time();
    $a=(date("m", $time));
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
                                <h2 class="sb-page-header-title">
                                    <span>Dashboard</span>
                                </h2>
                            </div>
                        </div>
                    </div>
                   <div class="container-fluid mt-n10">
                        <div class="row">
                            <div class="col-xl-4 col-md-4 mb-4">
                                <div class="card border-top-0 border-bottom-0 border-right-0 border-left-lg border-purple h-100">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-grow-1">
                                                <div class="small font-weight-bold text-purple mb-1">
                                                    Horas total consumidas
                                                </div>
                                                <div class="h5">
                                                    <span id="horas">00:</span>
                                                    <span id="minutos">00:</span>
                                                    <span id="segundos">00</span>
                                                </div>
                                                <div class="text-xs font-weight-bold text-danger d-inline-flex align-items-center">
                                                    <span id="indicador-hora">
                                                        <span id="horas_messages"></span>
                                                        <span id="horas_a"></span>
                                                        <span id="minutos_a"></span>
                                                        <span id="segundos_a"></span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="ml-2">
                                                <i class="far fa-clock fa-2x text-gray-200"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-4 mb-4">
                                <div class="card border-top-0 border-bottom-0 border-right-0 border-left-lg border-purple h-100">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-grow-1">
                                                <div class="small font-weight-bold text-purple mb-1">Horas consumidas mes actual</div>
                                                <div class="h5">
                                                    <span id="horas_mes">00:</span>
                                                    <span id="minutos_mes">00:</span>
                                                    <span id="segundos_mes">00</span>
                                                </div>
                                                <div class="text-xs font-weight-bold text-danger d-inline-flex align-items-center">
                                                    <button class="btn btn-outline-primary btn-icon" type="button" onclick="cargar_tabla('Iniciativas');">
                                                        <i class="fas fa-search"></i>
                                                    </button>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-4 mb-4">
                                <div class="card border-top-0 border-bottom-0 border-right-0 border-left-lg border-purple h-100">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-grow-1">
                                                <div class="small font-weight-bold text-purple mb-1">Exportar Por Fecha</div>
                                                <div class="row justify-content-center" id="data_5" style="padding: 0px;">
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
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="card mb-4" id="card-tabla" style="display: none;">
                            <div class="card-header d-flex justify-content-between align-items-center"><div id="titulo-tabla"></div> 
                                <button class="btn btn-outline-red btn-icon shadow-sm my-1" onclick="ocultar('card-tabla')"><i data-feather="x"></i></button>
                            </div>
                            <div class="card-body">
                                <div class="sb-datatable table-responsive">
                                    <table class="table table-bordered table-hover display" id="tabla" width="100%" cellspacing="0">
                                        <tbody id="busqueda"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <div class="form-group" style="margin-bottom: 0rem;">
                                    Horas consumidas por meses
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="chart-area"><canvas id="myAreaChart" width="100%" height="50"></canvas></div>
                            </div>
                            <div class="card-footer small text-muted" id="actualizado_line"></div>
                            
                        </div>
                </main>
             </div>
        </div>

<input type="text" id="pantalla" hidden="">
<?php
    include("footer.php");
?>
<script src='../../assets/js/circle.min.js'></script>


<script type="text/javascript">
$(document).ready(function () {
    //$('#meses').val(<?php echo $a ?>);
    //grafico_bar(1);
    //grafico_line(<?php echo $a ?>); 
    cantidad();
    cantidad_horas();
    //setInterval(function(){cantidad()}, 30000);
    setInterval(function(){cantidad_horas()}, 30000);
    grafico_line_meses(2);
    $("#meses").hide();
    //grafico_doughnut(1);
    //grafico_bar(1);
    //cantidad_backup();
    //cantidad_0();
    //tiempo_estimado();
    //cantidad_proceso();
    $('#data_5 .input-daterange').datepicker({
        language: 'es',
        format: 'dd-mm-yyyy',
        keyboardNavigation: false,
        forceParse: false,
        autoclose: true
    });

    

    $('#g_mensual').change(function(){
        grafico_doughnut($(this).val());
    });

    $('#opcion_cant').change(function(){
        valor= $(this).val();
        if($('input:radio[name=radioInline]:checked').val()=='1'){

        }else{
            $("#meses").hide();
            $("canvas#myAreaChart").remove();
            $("div.chart-area").append('<canvas id="myAreaChart" width="100%" height="50"></canvas>');
            grafico_line_meses(valor);
        }
    });
    $('#meses').change(function(){
        $("canvas#myAreaChart").remove();
        $("div.chart-area").append('<canvas id="myAreaChart" width="100%" height="30"></canvas>')
        grafico_line($("#meses").val());
    });
    $("input[name=radioInline]").click(function (){
        if($('input:radio[name=radioInline]:checked').val()=='1'){
            $("#meses").show();
            $("canvas#myAreaChart").remove();
            $("div.chart-area").append('<canvas id="myAreaChart" width="100%" height="30"></canvas>')
            grafico_line($("#meses").val());
           
        }else{
            $("#meses").hide();
            $("canvas#myAreaChart").remove();
            $("div.chart-area").append('<canvas id="myAreaChart" width="100%" height="50"></canvas>');
            grafico_line_meses($('#opcion_cant').val());

        }
    });
    $("#btn-export-si").click(function(event) {//boton usado para exportar excel
        location.href='../../controlador/controlador_exportar.php?opcion=4';
    });
});

function activar(){
    if($("#inicio").val()!=""&& $("#final").val()!=""){
         location.href='../../controlador/controlador_exportar.php?opcion=6&fecha_inicio='+$("#inicio").val()+'&fecha_final='+$("#final").val()
    }
}

function cantidad_proceso(){//carga cantidad 
    $.ajax({
        url: "../../controlador/controlador_grafico.php?opcion=9",
        dataType: 'json',
        contentType: "application/json; charset=utf-8",
        success:function(data){    
            $("#indicador-total").html("En Proceso: "+data[0].cant);
            $("#cant_si").html(data[0].cant_2);
            if(data[0].cant_2 == 0){
                $("#btn-search-si").removeAttr("onclick");
                $("#btn-search-si").attr("disabled","true");
                $("#btn-export-si").attr("disabled","true");

            }

        } 
    }); 
}
function cantidad_horas(){//carga horas iniciativas 
    $.ajax({
        url: "../../controlador/controller_iniciativa.php?opcion=25",
        success:function(data){    
            $("#resultado").html(data);

        } 
    }); 
}
</script>
</body>
</html>
