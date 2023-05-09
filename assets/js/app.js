/*
 * app js
 * Create 14-07-2020 by Edgar Pereda 
 * Evolution Outsourcing 
 *
 */
//location.href='../../controlador/controlador_sesion.php?opcion=4';
 ;(function($){
    $.fn.datepicker.dates['es'] = {
        days: ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"],
        daysShort: ["Dom", "Lun", "Mar", "Mié", "Jue", "Vie", "Sáb"],
        daysMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
        months: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
        monthsShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"],
        today: "Hoy",
        monthsTitle: "Meses",
        clear: "Borrar",
        weekStart: 1,
        format: "dd/mm/yyyy"
    };
}(jQuery));
 function alertaNotificacion(){
    $.ajax({
        type: 'POST',
        url: '../../controlador/controlador_notificacion.php?opcion=1',
        success:function(data){    
            $('#resultado').html(data);
        } 
    });
}
function notificacionActivar(){
    $.ajax({
        type: 'POST',
        url: '../../controlador/controlador_notificacion.php?opcion=3',
        success:function(data){    
            $('#resultado').html(data);
        } 
    });
}
function historial(){
    var inicio;
    var final;
    if($("#inicio").val()!=""&& $("#final").val()!=""){
        inicio=$("#inicio").val();
        final=$("#final").val();
    }else{
        inicio="";
        final="";
    }
    
    switch($("#pantalla").val()){
        case '2':
            $("#tabla").DataTable({ 
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                destroy: true,
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_incidente.php?opcion=11",
                    data:{fecha_inicio:inicio,fecha_final:final},
                },
                "columns":[
                    {data:"id",title:"ID"},
                    {data:"descripcion",title:"Resumen"},
                    {data:"fecha_fin",title:"Fecha_fin"},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                            case 'Cerrado': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Cancelado': return ' <span class="badge badge-default">'+row.estado+'</span>'
                        }
                    },title:"Estado"},
                    {data:"responsable",title:"Responsable"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                ],
                "order": [[ 2, "desc" ]]
            }); 
        break;
        case '1':
            $("#tabla").DataTable({ 
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                destroy: true,
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_oc.php?opcion=10",
                    data:{fecha_inicio:inicio,fecha_final:final},
                },
                "columns":[
                    {data:"id",title:"ID"},
                    {data:"descripcion",title:"Resumen"},
                    {data:"fecha_fin",title:"Fecha_fin"},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                            case 'Cerrado': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Cancelado': return ' <span class="badge badge-default">'+row.estado+'</span>'
                        }
                    },title:"Estado"},
                    {data:"responsable",title:"Responsable"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                ],
                "order": [[ 2, "desc" ]]
            }); 
        break;
        case '3':
            $("#tabla").DataTable({ 
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                destroy: true,
                ajax:{
                    method:"POST",
                   url: "../../controlador/controller_problem.php?opcion=11",
                   data:{fecha_inicio:inicio,fecha_final:final},
                },
                "columns":[
                    {data:"id",title:"ID"},
                    {data:"descripcion",title:"Resumen"},
                    {data:"fecha_fin",title:"Fecha Fin"},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Abierto': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                            case 'En proceso': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                        }
                    },title:"Estado"},
                    {data:"responsable",title:"Responsable"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                
                ]
            }); 
        break;
        case '5':
            $("#tabla").DataTable({ 
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                destroy: true,
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_patencion.php?opcion=12",
                    data:{fecha_inicio:inicio,fecha_final:final},
                },
                "columns":[
                    {data:"id",title:"ID"},
                    {data:"titulo",title:"Titulo"},
                    {data:"fecha_fin",title:"Fecha Fin"},
                    {"render": function (data, type, row) {
                        if(row.prioridad == "Critico"){
                            return ' <span class="badge badge-danger">'+row.prioridad+'</span>'
                        }else{
                            return ' <span class="badge badge-default">'+row.prioridad+'</span>'
                        }               
                    }},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Cerrado': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                        }
                    },title:"Estado"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                
                ]
            }); 
        break;
        case '6':
            $("#tabla").DataTable({ 
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                destroy: true,
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_iniciativa.php?opcion=12",
                    data:{fecha_inicio:inicio,fecha_final:final},
                },
                "columns":[
                    {data:"id",title:"ID"},
                    {data:"titulo",title:"Titulo"},
                    {data:"fecha_fin",title:"Fecha Fin"},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Cerrado': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                        }
                    },title:"Estado"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                
                ]
            }); 
        break;
    }  
};
function grafico_bar(valor){
    $(document).ready(function() {
        $.ajax({
            url: '../../controlador/controlador_grafico.php?opcion=1&valor='+valor,
            dataType: 'json',
            contentType: "application/json; charset=utf-8",
            method: "GET",
            success: function(data) {
                var nombre = [];
                var stock = [];
                var etiqueta;
                //console.log(data);
                for (var i in data) {
                    nombre.push(data[i].responsable);
                    stock.push(data[i].cant);
                }
                var ctx = document.getElementById("myBarChart");    
                var myBarChart = new Chart(ctx, {
                    type: "bar",
                    data: {
                        labels: nombre,
                        datasets: [{
                            label: etiqueta,
                            backgroundColor: "rgba(0, 97, 242, 1)",
                            hoverBackgroundColor: "rgba(0, 97, 242, 0.9)",
                            borderColor: "#4e73df",
                            data: stock
                        }]
                    },
                    options: {
                        maintainAspectRatio: false,
                        layout: {
                            padding: {
                                left: 10,
                                right: 25,
                                top: 25,
                                bottom: 0
                            }
                        },
                        scales: {
                            xAxes: [{
                                time: {
                                    unit: "Cant"
                                },
                                gridLines: {
                                    display: false,
                                    drawBorder: false
                                },
                                ticks: {
                                    maxTicksLimit: 20
                                },
                                maxBarThickness: 25
                            }],
                            yAxes: [{
                                gridLines: {
                                    color: "rgb(234, 236, 244)",
                                    zeroLineColor: "rgb(234, 236, 244)",
                                    drawBorder: false,
                                    borderDash: [2],
                                    zeroLineBorderDash: [2]
                                }
                            }]
                        },
                        legend: {
                            display: false
                        }
                    }
                });
                
            }
        });

        var hoy =new Date();
        var hora= hoy.getHours() + ':' + hoy.getMinutes() + ':' + hoy.getSeconds();
        $("#actualizado_bar").html("Actualizado hoy a "+hora);
    });
}
function grafico_line_meses(valor){
    data4 = moment().format('MMMM-YYYY');
    data3 = moment().subtract(1,'M').format('MMMM-YYYY');
    data2 = moment().subtract(2,'M').format('MMMM-YYYY');
    data1 = moment().subtract(3,'M').format('MMMM-YYYY');
    var meses = new Array(moment().subtract(3,'M').format('MM-YYYY'),moment().subtract(2,'M').format('MM-YYYY'),moment().subtract(1,'M').format('MM-YYYY'),moment().format('MM-YYYY'))
    
    let label= new Array(data1,data2,data3,data4);
    //console.log(label);
    $(document).ready(function() {
        $.ajax({
            url: '../../controlador/controlador_grafico.php?opcion=7&valor='+valor+'&meses='+meses,
            dataType: 'json',
            contentType: "application/json; charset=utf-8",
            method: "GET",
            success: function(data) {
                var total = [];
                for (var i in data) {
                    if(data[i].horas == null){
                        total.push(0);
                    }else{
                        total.push(parseFloat(data[i].horas).toFixed(2));
                    } 
                }
                //console.log(total);
                var ctx = document.getElementById("myAreaChart");    
                var myBarChart = new Chart(ctx, {
                    type: "bar",
                    data: {
                        labels: label,
                        datasets: [{
                            label: 'Horas',
                            yAxisID: 'y-axis-1',
                            backgroundColor: "rgba(0, 97, 242, 1)",
                            data: total,
                        }]
                    },
                    options: {
                        maintainAspectRatio: false,
                        responsive: true,
                        'onClick' : function (e) {
                            var activePoints = myBarChart.getElementsAtEvent(e);
                            var selectedIndex = activePoints[0]._index;
                            //alert(moment(this.data.labels[selectedIndex]).format('MM-YYYY'));
                            //cargar_tabla3(this.data.labels[selectedIndex]);

                        },
                        tooltips: {
                            mode: 'index',
                            intersect: true
                        },
                        scales: {
                            yAxes: [{
                                type: 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                                display: true,
                                position: 'right',
                                id: 'y-axis-1',
                                gridLines: {
                                    drawOnChartArea: false
                                }
                            }],
                        }
                    }
                });  
            }
        });
        var hoy =new Date();
        var hora= hoy.getHours() + ':' + hoy.getMinutes() + ':' + hoy.getSeconds();
        $("#actualizado_line").html("Actualizado hoy a "+hora);
    });
}
function cargar_tabla3(texto){//busqueda tabla desde grafico bar
    var meses = {"Enero":1,"Febrero":2,"Marzo":3,"Abril":4,"Mayo":5,"Junio":6,"Julio":7,"Agosto":8,"Septiembre":9,"Octubre":10,"Noviembre":11,"Diciembre":12};
    var fechas=texto.split("-");
    var fecha=meses[fechas[0]]+"-"+fechas[1];
    $("#tabla_wrapper").remove();
    $("div.table-responsive").append('<table class="table table-bordered table-hover display" id="tabla" width="100%" cellspacing="0"></table>');
    
    $("#titulo-tabla").html("Listado Usuarios- Busqueda: "+fecha);
    $("#card-tabla").show();
}
function grafico_doughnut(valor){
    var total_cant;
    $(document).ready(function() {
        $.ajax({
            url: '../../controlador/controlador_grafico.php?opcion=2&valor='+valor,
            dataType: 'json',
            contentType: "application/json; charset=utf-8",
            method: "GET",
            success: function(data) {
                var nombre = ['En Proceso','Cerrado','Transferido','Cancelado'];
                var stock = [];
                var color = ['#F4441F','#4caf50','#FFB81F','#E3DEE3'];
                var bordercolor = ['#F40040','#087f23', '#FFF334','#BDB9BD'];
                //carga de data
                //stock.push(data[0].abierto);
                stock.push(data[0].en_proceso);
                stock.push(data[0].cerrado);
                stock.push(data[0].transferido);
                stock.push(data[0].cancelado);

                total_cant=parseInt(data[0].abierto)+parseInt(data[0].en_proceso)+parseInt(data[0].cerrado)+parseInt(data[0].transferido)+parseInt(data[0].cancelado);
        
                $("#total_cant").html("Total: <strong>"+total_cant+"</strong>");

                var chartdata = {
                    labels: nombre,
                    datasets: [{
                        label: nombre,
                        backgroundColor: color,
                        borderColor: color,
                        borderWidth: 2,
                        hoverBackgroundColor: color,
                        hoverBorderColor: bordercolor,
                        data: stock
                    }]
                };

                var mostrar = $("#doughnut_chart");

                var grafico = new Chart(mostrar, {
                    type: 'doughnut',
                    data: chartdata,
                    options: {
                        responsive: true,
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true,
                                }
                            }]
                        }
                    },
                    options: {
                        maintainAspectRatio: false,
                        tooltips: {
                            backgroundColor: "rgb(255,255,255)",
                            bodyFontColor: "#280680",
                            borderColor: "#dddfeb",
                            borderWidth: 1,
                            xPadding: 15,
                            yPadding: 15,
                            displayColors: false,
                            caretPadding: 10
                        },
                        legend: {
                            display: true,
                            position: 'right',
                            align: 'center'
                        },
                        cutoutPercentage: 80
                    }
                });
            },
            error: function(data) {
                console.log(data);
            }
        });
    });
    var hoy =new Date();
    var hora= hoy.getHours() + ':' + hoy.getMinutes() + ':' + hoy.getSeconds();
    $("#actualizado_doughnut").html("Actualizado hoy a "+hora);
}
function cantidad(){//carga cantidad 
    $.ajax({
        url: "../../controlador/controlador_grafico.php?opcion=3",
        dataType: 'json',
        contentType: "application/json; charset=utf-8",
        success:function(data){  
            //console.log(data);  
            //$("#resultado").html(data);
            $('#horas_mes').text(data.horas < 10 ? '0' + data.horas +' :' : data.horas +' :');
            $('#minutos_mes').text(data.minutos < 10 ? '0' + data.minutos +' :' : data.minutos +' :');
            $('#segundos_mes').text(data.segundos < 10 ? '0' + data.segundos : data.segundos);
        } 
    }); 
}
function cargar_tabla(nombre){//muestra tabla en tablero
    $("#tabla_wrapper").remove();
    $("div.table-responsive").append('<table class="table table-bordered table-hover display" id="tabla" width="100%" cellspacing="0"><tbody id="busqueda"></tbody></table>');
     switch(nombre){
        case 'Incidentes':
            $("#pantalla").val(2);
            $("#tabla").DataTable({ 
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                destroy: true,
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_incidente.php?opcion=3",
                },
                "columns":[
                    {data:"id",title:"ID"},
                    {data:"descripcion",title:"Resumen"},
                    {"render": function (data, type, row) {
                        switch(row.prioridad){
                            case 'Baja': return ' <span class="badge badge-success">'+row.prioridad+'</span>'
                            case 'Media': return ' <span class="badge badge-warning">'+row.prioridad+'</span>'
                            case 'Alta': return ' <span class="badge badge-danger">'+row.prioridad+'</span>'
                            case 'Critico': return ' <span class="badge badge-danger">'+row.prioridad+'</span>'
                            case 'No Asignada': return ' <span class="badge">'+row.prioridad+'</span>'
                        }
                    },title:"Prioridad"},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Abierto': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                            case 'En proceso': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                        }
                    },title:"Estado"},
                    {data:"responsable",title:"Responsable"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                
                ]
            }); 
        break;
        case 'OC':
            $("#pantalla").val(1);
            $("#tabla").DataTable({ 
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                destroy: true,
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_oc.php?opcion=3",
                },
                "columns":[
                    {data:"id",title:"ID"},
                    {data:"descripcion",title:"Resumen"},
                    {"render": function (data, type, row) {
                        switch(row.prioridad){
                            case 'Baja': return ' <span class="badge badge-success">'+row.prioridad+'</span>'
                            case 'Media': return ' <span class="badge badge-warning">'+row.prioridad+'</span>'
                            case 'Alta': return ' <span class="badge badge-danger">'+row.prioridad+'</span>'
                            case 'Critico': return ' <span class="badge badge-danger">'+row.prioridad+'</span>'
                            case 'No Asignada': return ' <span class="badge">'+row.prioridad+'</span>'
                        }
                    },title:"Prioridad"},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Abierto': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                            case 'En proceso': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                        }
                    },title:"Estado"},
                    {data:"responsable",title:"Responsable"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                
                ]
            }); 
        break;
        case 'Problemas':
            $("#pantalla").val(3);
            $("#tabla").DataTable({ 
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                destroy: true,
                ajax:{
                    method:"POST",
                   url: "../../controlador/controller_problem.php?opcion=3",
                },
                "columns":[
                    {data:"id",title:"ID"},
                    {data:"descripcion",title:"Resumen"},
                    {data:"f_solucion",title:"Fecha Solución"},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Abierto': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                            case 'En proceso': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                        }
                    },title:"Estado"},
                    {data:"responsable",title:"Responsable"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                
                ]
            }); 
        break;
        case 'Punto Atención':
            $("#pantalla").val(5);
            $("#tabla").DataTable({ 
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                destroy: true,
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_patencion.php?opcion=3",
                },
                "columns":[
                    {data:"id",title:"ID"},
                    {data:"titulo",title:"Titulo"},
                    {data:"fecha_creacion",title:"Fecha Creación"},
                    {"render": function (data, type, row) {
                        if(row.prioridad == "Critico"){
                            return ' <span class="badge badge-danger">'+row.prioridad+'</span>'
                        }else{
                            return ' <span class="badge badge-default">'+row.prioridad+'</span>'
                        }               
                    },title:"Prioridad"},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Abierto': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                            case 'En proceso': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                        }
                    },title:"Estado"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                
                ],
                "order": []
            }); 
        break;
        case 'Iniciativas':
            $("#pantalla").val(6);
            $("#tabla").DataTable({ 
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                destroy: true,
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_iniciativa.php?opcion=26",
                },
                "columns":[
                    {data:"id",title:"ID"},
                    {data:"titulo",title:"Titulo"},
                    {data:"fecha_creacion",title:"Fecha Creación"},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Abierto': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                            case 'En proceso': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                        }
                    },title:"Estado"},
                    {data:"horas",title:"Horas Mes"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                
                ],
                "order": []
            }); 
        break;
    }
    $("#titulo-tabla").html("Listado- Busqueda: "+nombre);
    $("#card-tabla").show();
    
}
function ocultar(id){
    $('#'+id).hide();
}
 function f_listar(data){//funcion que lista oc disponibles
    switch(data){
        case 1:
            $("#oc_disponibles").DataTable({
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_oc.php?opcion=3",
                },
                columns:[
                    {data:"id"},
                    {data:"descripcion"},
                    {"render": function (data, type, row) {
                        switch(row.prioridad){
                            case 'Baja': return ' <span class="badge badge-success">'+row.prioridad+'</span>'
                            case 'Media': return ' <span class="badge badge-warning">'+row.prioridad+'</span>'
                            case 'Alta': return ' <span class="badge badge-danger">'+row.prioridad+'</span>'
                            case 'Critico': return ' <span class="badge badge-danger">'+row.prioridad+'</span>'
                            case 'No Asignada': return ' <span class="badge">'+row.prioridad+'</span>'
                        }
                    }},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Abierto': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                            case 'En proceso': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                        }
                    }},
                    {data:"responsable"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                ],
                "order": [[ 3, "desc" ]]
            });
            break;
        case 2:
            $("#incidente_disponibles").DataTable({
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_incidente.php?opcion=3",
                },
                columns:[
                    {data:"id"},
                    {data:"descripcion"},
                    {"render": function (data, type, row) {
                        switch(row.prioridad){
                            case 'Baja': return ' <span class="badge badge-success">'+row.prioridad+'</span>'
                            case 'Media': return ' <span class="badge badge-warning">'+row.prioridad+'</span>'
                            case 'Alta': return ' <span class="badge badge-danger">'+row.prioridad+'</span>'
                            case 'Critico': return ' <span class="badge badge-danger">'+row.prioridad+'</span>'
                            case 'No Asignada': return ' <span class="badge">'+row.prioridad+'</span>'
                        }
                    }},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Abierto': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                            case 'En proceso': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                            case 'No Asignada': return ' <span class="badge">'+row.estado+'</span>'
                        }
                    }},
                    {data:"responsable"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},        
                ],
                "order": [[ 3, "desc" ]]
            });
            break;
        case 3:
            $("#problema_disponibles").DataTable({
                language: {
                    url: '../../assets/js/Spanish.json'
                },
                ajax:{
                    method:"POST",
                    url: "../../controlador/controller_problem.php?opcion=3",
                },
                columns:[
                    {data:"id"},
                    {data:"descripcion"},
                    {data:"f_solucion"},
                    {"render": function (data, type, row) {
                        switch(row.estado){
                            case 'Abierto': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                            case 'En proceso': return ' <span class="badge badge-success">'+row.estado+'</span>'
                            case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
                        }
                    }},
                    {data:"responsable"},
                    {"render": function (data, type, row) {
                        return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
                    }},
                ],
                "order": [[ 3, "desc" ]]
            });
            break;
        case 4:
           
            break;
    }
};
 function select(data){//funcion que carga select de oc
    var url;
    switch(data){
        case 1:
            url="../../controlador/controller_oc.php?opcion=1";
            break;
        case 2:
            url="../../controlador/controller_incidente.php?opcion=1";
            break;
        case 3:
            url="../../controlador/controller_problem.php?opcion=1";
            break;
        case 4:
            url="../../controlador/controller_patencion.php?opcion=1";
            break;
    }
    $.ajax({
        type: 'POST',
        url: url,
        success:function(responseText){    
            $('#resultado').html(responseText);  
        } 
    });
};
function cargarData(id){//funcion que carga select de oc
    switch(id){
        case 1:
            url='../../controlador/controller_oc.php?opcion=4';
            break;
        case 2://carga de timeline
            url='../../controlador/controller_oc.php?opcion=8';
            break;
        case 3://carga de datos incidentes
            url='../../controlador/controller_incidente.php?opcion=4';
            break;
        case 4://carga de timeline incidente
            url='../../controlador/controller_incidente.php?opcion=8';
            break;
        case 5://carga de datos problema
            url='../../controlador/controller_problem.php?opcion=4';
            break;
        case 6://carga de timeline problema
            url='../../controlador/controller_problem.php?opcion=8';
            break;
        case 7://carga de datos punto atencion
            url='../../controlador/controller_patencion.php?opcion=4';
            break;
        case 8://carga de timeline punto atencion
            url='../../controlador/controller_patencion.php?opcion=8';
            break;
        case 9://carga de datos iniciativa
            url='../../controlador/controller_iniciativa.php?opcion=4';
            break;
        case 10://carga de tareas de iniciativa
            url='../../controlador/controller_iniciativa.php?opcion=8';
            break;
    }
    $.ajax({
        type: 'POST',
        url: url,
        success:function(responseText){    
            switch(id){
                case 1:
                    $('#resultado').html(responseText);  
                    break;
                case 2://carga de timeline
                    $('#timeline').html(responseText);  
                    break;
                case 3://carga de datos incidentes
                    $('#resultado').html(responseText); 
                    break;
                case 4://carga de timeline incidente
                    $('#timeline').html(responseText);  
                    break;
                case 5://carga de datos problema
                    $('#resultado').html(responseText); 
                    break;
                case 6://carga de timeline problema
                    $('#timeline').html(responseText);  
                    break;
                case 7://carga de datos punto atencion
                    $('#resultado').html(responseText); 
                    break;
                case 8://carga de timeline punto atencion
                    $('#timeline').html(responseText);  
                    break;
                case 9://carga de datos punto atencion
                    $('#resultado').html(responseText); 
                    break;
                case 10://carga de datos tarea
                    $('#timeline').html(responseText);
                    sessionStorage.clear();
                    cargarRelojTarea();
                    break;
            }
            
        } 
    });
};
function cargarRelojTarea(){
    $.ajax({
        type: 'POST',
        url: '../../controlador/controller_iniciativa.php?opcion=24',
        success:function(responseText){
            $('#resultado').html(responseText);
        }
    });
};
$("#btn-edit").click(function (){
    $(this).hide();
    $("#btn-check").show();
    $('input[disabled]').removeAttr('disabled');//remove attr input
    $('select[disabled]').removeAttr('disabled');
    $('textarea[disabled]').removeAttr('disabled');

});
$("#btn-check").click(function (){
    $(this).hide();
    $("#btn-edit").show();
    $('input').attr('disabled','true');//remove attr input
    $('select').attr('disabled','true');
    $('textarea').attr('disabled','true');

});
$("#selectCategoria").change(function (){
    if ($(this).val() == 0) {
        $(this).parent().removeClass("col-md-12");
        $(this).parent().addClass("col-md-2");
        $("#inputOtro").parent().show();
    }else{
        if ($(this).parent().hasClass("col-md-2")) {
            $(this).parent().removeClass("col-md-2");
            $(this).parent().addClass("col-md-12");
            $("#inputOtro").parent().hide();
        }
        
    }
});
$("#selectGrupo").change(function (){
    if ($(this).val() == 0) {
        $(this).parent().removeClass("col-md-12");
        $(this).parent().addClass("col-md-2");
        $("#inputOtro").parent().show();
    }else{
        if ($(this).parent().hasClass("col-md-2")) {
            $(this).parent().removeClass("col-md-2");
            $(this).parent().addClass("col-md-12");
            $("#inputOtro").parent().hide();
        }
        
    }
});
$("#selectEstado").change(function (){
    if (($(this).val() == 3) || ($(this).val() == 4) || ($(this).val() == 5) ) {
        $("#modal-cerrar").modal('show');
    }
});
$("#btn-next").click(function (){
    $("#wizard1").hide();
    $("#wizard1-tab").parent().removeClass("active");
    $("#wizard2").show();
    $("#wizard2-tab").parent().addClass("active");
});
$("#btn-back").click(function (){
    $("#wizard2").hide();
    $("#wizard2-tab").parent().removeClass("active");
    $("#wizard1").show();
    $("#wizard1-tab").parent().addClass("active");
});
$("#btn-nuevo").click(function (){
    $(this).removeClass("active");
    $(this).hide();
});
$("#btn-aceptar").click(function (){
    var url;
    var url2;
    if(($("#fecha").val()!="") && ($("#hora").val()!="")){
        switch($("#pantalla").val()){
            case '1':
                url="../../controlador/controller_oc.php?opcion=9";
                url2="listado_oc.php"
            break;
            case '2':
                url="../../controlador/controller_incidente.php?opcion=9";
                url2="listado_incidentes.php"
            break;
            case '3':
                url="../../controlador/controller_problem.php?opcion=9";
                url2="listado_problema.php"
            break;
            case '4'://caso especial para asignar incidente a problema
                url="../../controlador/controller_incidente.php?opcion=10&id="+$("#ID_problema").val();
                url2="listado_problema.php"
            break;
            case '5':
                url="../../controlador/controller_patencion.php?opcion=9";
                url2="listado_patencion.php"
            break;
            case '6':
                url="../../controlador/controller_iniciativa.php?opcion=9";
                url2="listado_iniciativa.php"
            break;
        }
        $.ajax({
            type: 'POST',
            data:{hora:$("#hora").val(),fecha:$("#fecha").val(),estado:$("#selectEstado").val()},
            url: url,
            success:function(data){    
                if(data==true){
                    window.location.href = url2;
                }else{
                    toastr.error("Error al cerrar");
                }
            } 
        });
    }else{
        toastr.error("Error al cerrar");
    }
});
$("#btn-atras").click(function (){
    $(this).removeClass("active");
    $("#btn-nuevo").removeAttr("style");
});
$("#btn-save").click(function (){
    //option for send data controller
    var url;
    var url2;
    switch($("#pantalla").val()){
        case '1':
            url="../../controlador/controller_oc.php?opcion=2";
            url2="listado_oc.php";
            break;
        case '2':
            url="../../controlador/controller_incidente.php?opcion=2";
            url2="listado_incidentes.php"
            break;
        case '3':
            url="../../controlador/controller_problem.php?opcion=2";
            url2="listado_problema.php"
            break;
        case '5':
            url="../../controlador/controller_patencion.php?opcion=2";
            url2="listado_patencion.php"
            break;
        case '6':
            url="../../controlador/controller_iniciativa.php?opcion=2";
            url2="listado_iniciativa.php"
            break;
    }
    $.ajax({
        type: 'POST',
        data:$("#formulario1").serialize()+"&"+$("#formulario2").serialize(),
        url: url,
        success:function(data){    
            if(data==true){
                window.location.href = url2;
            }else{
                toastr.error("Error al guardar");
            }
        } 
    });
    /*$.post("../../controlador/controller_oc.php?opcion=2", $("#formulario1").serialize()+"&"+$("#formulario2").serialize());*/

});
$("#btn-guardar").click(function (){
    var url;
    if($("#documentacion2").val()!=""){
        switch($("#pantalla").val()){
            case '1':
                url="../../controlador/controller_oc.php?opcion=7"
                break;
            case '2':
                url="../../controlador/controller_incidente.php?opcion=7"
                break;
            case '3':
                url="../../controlador/controller_problem.php?opcion=7"
                break;
            case '5':
                url="../../controlador/controller_patencion.php?opcion=7"
                break;
            case '6':
                url="../../controlador/controller_iniciativa.php?opcion=7"
                break;
        }
        $.ajax({
            type: 'POST',
            data:{documentacion:$("#documentacion2").val()},
            url: url,
            success:function(responseText){    
                $('#resultado').html(responseText);  
                $("#nuevo").removeClass("show active");
                $("#timeline").addClass("show active");
                $("#btn-nuevo").show();

            } 
        });
    }else{
      toastr.error("Nuevo Avance esta vacio");
    }
});
//$("#busqueda").on("click", ".btn-seleccionar", function(event){//btn para selecionar 
function ver(id){
    var url;
    //var id= $(this).parent().prev().prev().prev().prev().prev().text();
    switch($("#pantalla").val()){
        case '1':
            url="../../controlador/controller_oc.php?opcion=6&id="+id
            break;
        case '2':
            url="../../controlador/controller_incidente.php?opcion=6&id="+id
            break;
        case '3':
            url="../../controlador/controller_problem.php?opcion=6&id="+id
            break;
        case '5':
            //id= $(this).parent().prev().prev().prev().prev().text();
            url="../../controlador/controller_patencion.php?opcion=6&id="+id
            break;
        case '6':
            //id= $(this).parent().prev().prev().prev().prev().text();
            url="../../controlador/controller_iniciativa.php?opcion=6&id="+id
            break;
    }
   location.href=url;
}
//});
$('#fecha').datepicker({language: 'es',format: "yyyy-mm-dd",endDate: new Date()});
$('#hora').clockpicker({
    placement: 'top',
    align: 'left',
    autoclose: true,
    'default': 'now'
});
$("#btn-export-incidente").click(function(event) {//boton usado para exportar excel
    location.href='../../controlador/controlador_exportar.php?opcion=1&busqueda=incidentes';
}); 
$("#btn-export-oc").click(function(event) {//boton usado para exportar excel
    location.href='../../controlador/controlador_exportar.php?opcion=1&busqueda=oc';
}); 
$("#btn-export-problemas").click(function(event) {//boton usado para exportar excel
    location.href='../../controlador/controlador_exportar.php?opcion=1&busqueda=problemas';
}); 
$("#btn-export-patencion").click(function(event) {//boton usado para exportar excel
    location.href='../../controlador/controlador_exportar.php?opcion=1&busqueda=punto_atencion';
});
$("#btn-export-iniciativa").click(function(event) {//boton usado para exportar excel
    location.href='../../controlador/controlador_exportar.php?opcion=1&busqueda=iniciativa';
}); 
$("#btn-export-patencion-historial").click(function(event) {//boton usado para exportar excel
    location.href='../../controlador/controlador_exportar.php?opcion=2&fecha_inicio='+$("#inicio").val()+'&fecha_final='+$("#final").val()
}); 
$("#btn-export-incidentes-historial").click(function(event) {//boton usado para exportar excel
    location.href='../../controlador/controlador_exportar.php?opcion=3&fecha_inicio='+$("#inicio").val()+'&fecha_final='+$("#final").val()
}); 
$("#btn-export-oc-historial").click(function(event) {//boton usado para exportar excel
    location.href='../../controlador/controlador_exportar.php?opcion=4&fecha_inicio='+$("#inicio").val()+'&fecha_final='+$("#final").val()
}); 
$("#btn-export-iniciativa-historial").click(function(event) {//boton usado para exportar excel
    location.href='../../controlador/controlador_exportar.php?opcion=5&fecha_inicio='+$("#inicio").val()+'&fecha_final='+$("#final").val()
}); 
$(document).ready(function () {
    setInterval(alertaNotificacion,30000);
    alertaNotificacion();
});