<div id="resultado" hidden></div>
<!--
<footer class="sb-footer py-4 mt-auto sb-footer-light">
    <div class="container-fluid">
        <div class="d-flex align-items-center justify-content-between small">
            <div>Copyright &#xA9; Your Website 2019</div>
            <div>
                <a href="#">Privacy Policy</a>
                &#xB7;
                <a href="#">Terms &amp; Conditions</a>
            </div>
        </div>
    </div>
</footer>-->
       
<script src="../../assets/js/jquery-3.4.1.min.js"></script>
<script src="../../assets/js/moment.min.js"></script>
<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<script src="../../assets/js/bootstrap-datepicker.js"></script>
<script src="../../assets/js/clockpicker/clockpicker.js"></script>
<script src="../../assets/js/scripts.js"></script>
<script src="../../assets/js/select2.min.js"></script>

<script src="../../assets/js/Chart.min.js"></script>

<script src="../../assets/js/jquery.dataTables.min.js"></script>
<script src="../../assets/js/dataTables.bootstrap4.min.js"></script>


<script src="../../assets/js/toastr.min.js"></script>
<script src="../../assets/js/app.js"></script>

<script type="text/javascript">
$("#currentPassword").change(function (){
    $.ajax({
        type: 'POST',
        data:{password:$(this).val()},
        url: '../../controlador/controlador_sesion.php?opcion=5',
        success:function(responseText){    
            $('#resultado').html(responseText);  
            
        } 
    });
});

$("#confirmPassword").change(function (){
   if($(this).val()==$("#newPassword").val()){
        $("#text-error").html("");
        $('#btn-a').removeAttr('disabled');
   }else{
        $('#btn-a').attr('disabled',"true");
        $("#text-error").html("Contraseñas no coinciden");
   }
});
$("#btn-a").click(function (){
   $.ajax({
        type: 'POST',
        data:{password:$("#newPassword").val()},
        url: '../../controlador/controlador_sesion.php?opcion=4',
        success:function(responseText){    
            $('#resultado').html(responseText);  
            //cierra modal
            $("#modal-cuenta").modal('hide');
            //limpia input
            $("#currentPassword").val("");
            $("#newPassword").val("");
            $("#confirmPassword").val("");
            //bloquea btn
            $('#btn-a').attr('disabled',"true");
            //bloquea input
            $('#newPassword').attr('disabled',"true");
            $('#confirmPassword').attr('disabled',"true");
        } 
    });
});
</script>