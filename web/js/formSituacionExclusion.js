var $collectionExclusiones;
var $cantExclusiones;
// setup an "add a tag" link
var $addTagLinkExclusion = $('<button style="margin-top: 10px;" class="btn btn-success btn-block" type="button" href="#" class="add_tag_link"><i class="fa fa-plus fa-fw"></i> Agregue una Situación de Exclusión</button>');
var $newLinkLiExclusion = $('<div></div>').append($addTagLinkExclusion);

jQuery(document).ready(function() {
    // Get the ul that holds the collection of telefonos
    $collectionExclusiones = $('div.exclusiones');

    //Para en el editar quitar un almacen

    $collectionExclusiones.children().append('<a href="#" class="remove-tag-telf btn btn-danger btn-block"><i class="fa fa-times fa-fw"></i> Quitar Situación de Exclusión</a>');

    $removerTelf = $collectionExclusiones.find('.remove-tag-telf');
    $cantExclusiones = $removerTelf.length;

    //Para quitar el primer label 0 ese ladilloso y el label 1 cuando hay dos almacenes agregados
    $collectionExclusiones.find('.control-label').first().remove();
    /*if ($cantExclusiones > 1) {
        $hijos = $collectionExclusiones.find('.control-label');
        $hijos.get(2).remove();
    };*/

    $removerTelf.click(function(e) {
        e.preventDefault();
        $(this).parent().parent().remove();
        if($cantExclusiones > 0){ $cantExclusiones--; }

        return false;
    });
    // add the "add a tag" anchor and li to the telefonos ul
    $collectionExclusiones.append($newLinkLiExclusion);

    // count the current form inputs we have (e.g. 2), use that as the new
    // index when inserting a new item (e.g. 2)
    $collectionExclusiones.data('index', $collectionExclusiones.find(':input').length);

    $addTagLinkExclusion.on('click', function(e) {
        // prevent the link from creating a "#" on the URL
        e.preventDefault();
        // add a new tag form (see next code block)
        //Es la cantidad maxima de items que podrá agregar a la venta
        if($cantExclusiones < 100){ addTagFormExclusion($collectionExclusiones, $newLinkLiExclusion); $cantExclusiones++; }
    });
});
function addTagFormExclusion($collectionExclusiones, $newLinkLiExclusion) {

    // Get the data-prototype explained earlier
    var prototypet = $collectionExclusiones.data('prototype');

    // get the new index
    var index = $collectionExclusiones.data('index');

    // Replace '__name__' in the prototype's HTML to
    // instead be a number based on how many items we have
    var newFormt = prototypet.replace(/__name__/g, index);

    // increase the index with one for the next item
    $collectionExclusiones.data('index', index + 1);

    // Display the form in the page in an li, before the "Add a tag" link li
    var $newFormLiTelefonos = $('<div></div>').append(newFormt);
    //Quita los #label_ de los nuevos almacenes
    $newFormLiTelefonos.find('.control-label').first().remove();
    //$newLinkLiExclusion.before($newFormLiTelefonos);

    // also add a remove button, just for this example
    $newFormLiTelefonos.children('.form-group').append('<a href="#" class="remove-tag-telf btn btn-danger btn-block"><i class="fa fa-times fa-fw"></i> Quitar Situación de Exclusión</a>');
    
    $newLinkLiExclusion.before($newFormLiTelefonos);
    
    // handle the removal, just for this example
    $('.remove-tag-telf').click(function(e) {
        e.preventDefault();
        if($cantExclusiones > 0){ $cantExclusiones--; }
        $(this).parent().parent().remove();
        return false;
    });
}