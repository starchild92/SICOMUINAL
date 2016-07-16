//Dropdowns Exclusivos
    // A -> B (A excluye a B)
    //Condicion A es una Pregunta Cerrada
    // jefe_grupo_familiar_incapacitado -> jefe_grupo_familiar_incapacitadoTipo
function AexcluyeB(id_a, id_b){
    
    if ($('#'+id_a).val() == 'no' || $('#'+id_a).val() == '') {
        $('#'+id_b).attr('disabled', true);
        $('#'+id_b).parent().addClass('hidden');
    }

    $('#'+id_a).on('change', function(){
        switch( $(this).val() ){
            case 'si':
                $('#'+id_b).removeAttr('disabled');
                $('#'+id_b).parent().removeClass('hidden');
            break;
            case 'no':
                $('#'+id_b).attr('disabled', true);
                $('#'+id_b).val('');
                $('#'+id_b).parent().addClass('hidden');
            break;
            default:
                $('#'+id_b).attr('disabled', true);
                $('#'+id_b).parent().addClass('hidden');
            break;
        }
    })
}