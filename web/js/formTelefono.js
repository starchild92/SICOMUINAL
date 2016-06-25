var $collectionTelefonos;
var $cantHijos;
// setup an "add a tag" link
var $addTagLinkTelefonos = $('<button style="margin-top: 10px;" class="btn btn-success btn-sm" type="button" href="#" class="add_tag_link"><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> Agregue un Telefono</button>');
var $newLinkLiTelefonos = $('<div></div>').append($addTagLinkTelefonos);

jQuery(document).ready(function() {
    // Get the ul that holds the collection of telefonos
    $collectionTelefonos = $('div.telefonos');

    //Para en el editar quitar un almacen
    $collectionTelefonos.children().append(
        '<a href="#" class="remove-tag-telf btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Quitar Telefono</a>');

    $removerTelf = $collectionTelefonos.find('.remove-tag-telf');
    $cantHijos = $removerTelf.length;

    //Para quitar el primer label 0 ese ladilloso y el label 1 cuando hay dos almacenes agregados
    $collectionTelefonos.find('.control-label').first().remove();
    /*if ($cantHijos > 1) {
        $hijos = $collectionTelefonos.find('.control-label');
        $hijos.get(2).remove();
    };*/

    $removerTelf.click(function(e) {
        e.preventDefault();
        $(this).parent().remove();
        if($cantHijos > 0){ $cantHijos--; }

        return false;
    });
    // add the "add a tag" anchor and li to the telefonos ul
    $collectionTelefonos.append($newLinkLiTelefonos);

    // count the current form inputs we have (e.g. 2), use that as the new
    // index when inserting a new item (e.g. 2)
    $collectionTelefonos.data('index', $collectionTelefonos.find(':input').length);

    $addTagLinkTelefonos.on('click', function(e) {
        // prevent the link from creating a "#" on the URL
        e.preventDefault();
        // add a new tag form (see next code block)
        //Es la cantidad maxima de items que podrá agregar a la venta
        if($cantHijos < 100){ addTagFormTelefono($collectionTelefonos, $newLinkLiTelefonos); $cantHijos++; }
    });
});
function addTagFormTelefono($collectionTelefonos, $newLinkLiTelefonos) {

    // Get the data-prototype explained earlier
    var prototypet = $collectionTelefonos.data('prototype');

    // get the new index
    var index = $collectionTelefonos.data('index');

    // Replace '__name__' in the prototype's HTML to
    // instead be a number based on how many items we have
    var newFormt = prototypet.replace(/__name__/g, index);

    // increase the index with one for the next item
    $collectionTelefonos.data('index', index + 1);

    // Display the form in the page in an li, before the "Add a tag" link li
    var $newFormLiTelefonos = $('<div></div>').append(newFormt);
    //Quita los #label_ de los nuevos almacenes
    $newFormLiTelefonos.find('.control-label').first().remove();
    //$newLinkLiTelefonos.before($newFormLiTelefonos);

    // also add a remove button, just for this example
    $newFormLiTelefonos.append('<a href="#" class="remove-tag-telf btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Quitar Telefono</a>');
    
    $newLinkLiTelefonos.before($newFormLiTelefonos);
    
    // handle the removal, just for this example
    $('.remove-tag-telf').click(function(e) {
        e.preventDefault();
        if($cantHijos > 0){ $cantHijos--; }
        $(this).parent().remove();
        return false;
    });
}