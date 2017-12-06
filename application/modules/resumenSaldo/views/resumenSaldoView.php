<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Resumen Saldo
    </h1>
</section>
<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
            	
            	<?= $table ?>

            </div>
        </div>

    </div>
<div>
    <?php 

        //print_r($detalles) 
         echo $detalles[0]->origen;

    ?>
</div>

</section>
<!-- /.content -->


<div class="modal fade" id="view-resumen-saldo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel"><span id="empOrigen"></span> - <span id="empDestino"></span></h4>
                </div>
                <div class="modal-body">
                    <table class="table table-striped">
                        <thead>
                            <th>Transaccion</th>
                            <th>Monto</th>
                        </thead>
                        <tbody>
                            <div id="transacciones">
                                
                            </div>
                            <tr>
                                <td colspan="2"><b>Total:</b> <span id="total"></span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>
        </div>
    </div>
</div>