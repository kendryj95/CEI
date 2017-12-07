<script language="javascript" type="text/javascript">

    function swalMsj(mensaje,type){
        swal({
            title: '',
            text: mensaje,
            type: type,
            confirmButtonColor: '#CE1129',
            html: true
        });
    }



    function datatableInit(){
        //parametros del datatables
        $('.tabla').dataTable({
            
            'bPaginate': true,
            "language": {
                "lengthMenu": "Mostar _MENU_ registros por página",
                "zeroRecords": "No se encontraron registros",
                "info": "Mostrando Página _PAGE_ de _PAGES_",
                "infoEmpty": "No hay registros disponibles",
                "infoFiltered": "(filtered from _MAX_ total records)",
                "search": "Buscar",
                "paginate": {
                    "previous": "Anterior",
                    "next":"próximo"
                }
            },
            "ordering": false
        });
    }

    datatableInit();

    $('.detalleSaldo').on('click', function(){

        var empOrigen = $(this).attr('data-origen');
        var empDestino = $(this).attr('data-destino');
        var nombreOrigen = $(this).attr('nombre-origen');
        var nombreDestino = $(this).attr('nombre-destino');
        var operacion = $(this).attr('data-op');

        $('#view-resumen-saldo span#empOrigen').text('');
        $('#view-resumen-saldo span#empDestino').text('');
        $('#view-resumen-saldo table tbody').html('');

        $.ajax({
            url: 'resumenSaldo/detallesSaldo',
            type: 'POST',
            dataType: 'json',
            data: {op: operacion, origen: empOrigen, destino: empDestino},
            success: function(response){
                console.log("Exito!!!!!!!",response);

                var html = '';
                var sumaMonto = 0;

                response.data.forEach(function(data){
                    let tipo_transaccion = '';

                    switch(data.descripcion){
                        case '1':
                            tipo_transaccion = 'Devolución Prestamo (Ingreso)';
                            break;
                        case '2':
                            tipo_transaccion = 'Devolución Préstamo (Egreso)';
                            break;
                        case '3':
                            tipo_transaccion = 'Ingreso Préstamo';
                            break;
                        case '4':
                            tipo_transaccion = 'Préstamo';
                            break;
                    }
                    html += '<tr><td>'+tipo_transaccion+'</td><td>'+number_format(data.monto, 2)+'</td></tr>';
                    sumaMonto += parseInt(data.monto);
                });
                html += '<tr><td colspan="2"><b>Total: '+number_format(sumaMonto, 2)+'</b></td></tr>'
                $('#view-resumen-saldo span#empOrigen').text(nombreOrigen);
                $('#view-resumen-saldo span#empDestino').text(nombreDestino);
                $('#view-resumen-saldo table tbody').html(html);

            },
            error: function(error){
                console.log("Error en el ajax",error);
            }
        });
        
    });

    function number_format(amount, decimals) {

        amount += ''; // por si pasan un numero en vez de un string
        amount = parseFloat(amount.replace(/[^0-9\.]/g, '')); // elimino cualquier cosa que no sea numero o punto

        decimals = decimals || 0; // por si la variable no fue fue pasada

        // si no es un numero o es igual a cero retorno el mismo cero
        if (isNaN(amount) || amount === 0) 
            return parseFloat(0).toFixed(decimals);

        // si es mayor o menor que cero retorno el valor formateado como numero
        amount = '' + amount.toFixed(decimals);

        var amount_parts = amount.split('.'),
            regexp = /(\d+)(\d{3})/;

        while (regexp.test(amount_parts[0]))
            amount_parts[0] = amount_parts[0].replace(regexp, '$1' + '.' + '$2');

        return amount_parts.join(',');
    }


</script>