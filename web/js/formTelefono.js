var $collectionTelefonos;
var $cantHijos;
var $addTagLinkTelefonos = $('<button style="margin-top: 10px;" class="btn btn-success btn-block" type="button" href="#" class="add_tag_link"><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> Agregue un Teléfono</button>');
var $newLinkLiTelefonos = $('<div></div>').append($addTagLinkTelefonos);

jQuery(document).ready(function() {
    $collectionTelefonos = $('div.telefonos');
    $collectionTelefonos.children().append('<a href="#" class="remove-tag-telf btn btn-danger btn-block"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Quitar Teléfono</a>');
    $removerTelf = $collectionTelefonos.find('.remove-tag-telf');
    $cantHijos = $removerTelf.length;

    // Para quitar los label 0,1,2,3...
    $padres = $removerTelf.parent();
    for (var i = 0; i < $padres.length; i++) {
        $($padres[i]).first().children(':first')[0].remove();
    }

    $removerTelf.click(function(e) {
        e.preventDefault();
        $(this).parent().fadeOut(300, function() { $(this).remove() });
        if($cantHijos > 0){ $cantHijos--; }
        return false;
    });

    $collectionTelefonos.append($newLinkLiTelefonos);
    $collectionTelefonos.data('index', $collectionTelefonos.find(':input').length);
    $addTagLinkTelefonos.on('click', function(e) {
        e.preventDefault();
        //Es la cantidad maxima de items que podrá agregar a la venta
        if($cantHijos < 100){ addTagFormTelefono($collectionTelefonos, $newLinkLiTelefonos); $cantHijos++; }
    });
});

function addTagFormTelefono($collectionTelefonos, $newLinkLiTelefonos) {

    var prototypet = $collectionTelefonos.data('prototype');
    var index = $collectionTelefonos.data('index');
    var newFormt = prototypet.replace(/__name__/g, index);
    var $newFormLiTelefonos = $('<div></div>').append(newFormt);

    $collectionTelefonos.data('index', index + 1);
    $newFormLiTelefonos.find('.control-label').first().remove();
    $newFormLiTelefonos.children('.form-group').append('<a href="#" class="remove-tag-telf btn btn-danger btn-block"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Quitar Teléfono</a>');
    $newLinkLiTelefonos.before($newFormLiTelefonos);
    
    $('.remove-tag-telf').click(function(e) {
        e.preventDefault();
        if($cantHijos > 0){ $cantHijos--; }
        $(this).parent().fadeOut(300, function() { $(this).remove() });
        return false;
    });
}