var $collectionVoceros;
var $cantHijosVoc;
var $addTagLinkVocros = $('<button style="margin-top: 10px;" class="btn btn-success btn-block" type="button" href="#" class="add_tag_link"><i class="fa fa-user"></i> Agregue un Vocero</button>');
var $newLinkLiVocres = $('<div></div>').append($addTagLinkVocros);

jQuery(document).ready(function() {
    $collectionVoceros = $('div.voceros');
    $collectionVoceros.children().append('<a href="#" class="remove-tag-vocero btn btn-danger btn-block"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Quitar Vocero</a>');
    $removerVoceros = $collectionVoceros.find('.remove-tag-vocero');
    $cantHijosVoc = $removerVoceros.length;

    // Para quitar los label 0,1,2,3...
    $padres = $removerVoceros.parent();
    for (var i = 0; i < $padres.length; i++) {
        $($padres[i]).first().children(':first')[0].remove();
        // $($padres[i]).first().children(':first').remove();
    }

    $removerVoceros.click(function(e) {
        e.preventDefault();
        $(this).parent().fadeOut(300, function() { $(this).remove() });
        if($cantHijosVoc > 0){ $cantHijosVoc--; }
        return false;
    });

    $collectionVoceros.append($newLinkLiVocres);
    $collectionVoceros.data('index', $collectionVoceros.find(':input').length);
    $addTagLinkVocros.on('click', function(e) {
        e.preventDefault();
        //Es la cantidad maxima de items que podrá agregar a la venta
        if($cantHijosVoc < 100){ addTagFormVocros($collectionVoceros, $newLinkLiVocres); $cantHijosVoc++; }
    });
});

function addTagFormVocros($collectionVoceros, $newLinkLiVocres) {

    var prototypet = $collectionVoceros.data('prototype');
    var index = $collectionVoceros.data('index');
    var newFormt = prototypet.replace(/__name__/g, index);
    var $newFormLiTelefonos = $('<div></div>').append(newFormt);

    $collectionVoceros.data('index', index + 1);
    $newFormLiTelefonos.find('.control-label').first().remove();
    $newFormLiTelefonos.children('.form-group').append('<a href="#" class="remove-tag-vocero btn btn-danger btn-block"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Quitar Voceros</a>');
    $newLinkLiVocres.before($newFormLiTelefonos);
    
    $('.remove-tag-vocero').click(function(e) {
        e.preventDefault();
        if($cantHijosVoc > 0){ $cantHijosVoc--; }
        $(this).parent().fadeOut(300, function() { $(this).remove() });
        return false;
    });
}