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
                                    <li class="breadcrumb-item"><a href="listado_iniciativa.php">Listado- Iniciativas</a></li>
                                    <li class="breadcrumb-item active">Nuevo</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid mt-n10">
                        <div class="card mb-4">
                            <div class="card-header">
                                Registrar nueva iniciativa
                            </div>
                            <div class="card-body">
                                <div class="tab-content" id="cardTabContent">
                                    <div class="tab-pane fade show active" id="wizard1" role="tabpanel" aria-labelledby="wizard1-tab">
                                        <div class="row justify-content-center">
                                            <div class="col-xxl-6 col-xl-8">
                                                <form id="formulario1">
                                                    <div class="form-row">
                                                        <div class="form-group col-md-9">
                                                             <label class="small mb-1" for="inputTitulo"><strong>Titulo</strong></label>
                                                            <input class="form-control" id="inputTitulo" type="text" name="inputTitulo" required placeholder="Ingrese Titulo" />
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                            <label class="small mb-1" for="inputEstado"><strong>Estado</strong></label>
                                                             <input class="form-control" id="inputEstado" name="inputEstado" type="text" value="Abierto" readonly="true" />
                                                        </div>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col-md-12">
                                                            <label class="small mb-1" for="inputDescripcion"><strong>Descripción</strong></label>
                                                            <textarea class="form-control" id="inputDescripcion" name="inputDescripcion"></textarea>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="d-flex justify-content-between">
                                                        <a class="btn btn-danger" href="listado_iniciativa.php">Atras</a>
                                                        <button class="btn btn-primary" id="btn-save" type="button">Guardar</button>
                                                    </div>
                                                </form>
                                                <form id="formulario2"></form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
             </div>
        </div>
<input type="text" id="pantalla" value="6" hidden="">
</body>
<?php
    include("footer.php");
?>
<script type="text/javascript">
window.onload = function () {
    select(4);
};
</script>

</body>
</html>

