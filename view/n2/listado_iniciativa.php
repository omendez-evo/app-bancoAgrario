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
                                    <li class="breadcrumb-item active">Listado- Iniciativas</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid mt-n10">
                        <div class="card mb-4">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                Iniciativas Disponibles
                                <div>
                                    <button class="btn btn-outline-success btn-icon" id="btn-export-iniciativa" type="button">
                                    <i class="fas fa-file-excel"></i>
                                    </button>
                                    
                                    <a class="btn btn-outline-purple btn-icon" type="button" href="historial_iniciativa.php">
                                        <i data-feather="calendar"></i>  Historial
                                    </a>
                                </div>
                            </div>
                            <div class="card-body">

                                <div class="sb-datatable table-responsive">
                                    <table class="table table-bordered table-hover display" id="listado_ini" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Titulo</th>
                                                <th>Fecha_creacion</th>
                                                <th>Estado</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody id="busqueda"></tbody>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Titulo</th>
                                                <th>Fecha_creacion</th>
                                                <th>Estado</th>
                                                <th></th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
             </div>
        </div>
        <div id="small-agregar">
            <a class="open-small-agregar" href="nueva-iniciativa.php" style="color: white;">
                <i class="fa fa-plus"></i>
            </a>
        </div>
<input type="text" id="pantalla" value="6" hidden="">
<?php
    include("footer.php");
?>
<script type="text/javascript">
window.onload = function () {
   //f_listar(4);
};
 $("#listado_ini").DataTable({
    language: {
        url: '../../assets/js/Spanish.json'
    },
    ajax:{
        method:"POST",
        url: "../../controlador/controller_iniciativa.php?opcion=3",
    },
    columns:[
        {data:"id"},
        {data:"titulo"},
        {data:"fecha_creacion"},
        {"render": function (data, type, row) {
            switch(row.estado){
                case 'Abierto': return ' <span class="badge badge-primary">'+row.estado+'</span>'
                case 'En proceso': return ' <span class="badge badge-success">'+row.estado+'</span>'
                case 'Transferido': return ' <span class="badge badge-warning">'+row.estado+'</span>'
            }
        }},
        {"render": function (data, type, row) {
            return '<button class="btn btn-outline-primary btn-sm" type="button" onclick="ver('+row.id+')">Entrar</button>'
        }}, 
               
    ],
    "order": []
   
});
</script>
</body>
</html>


