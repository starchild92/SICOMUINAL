var $collectionAyudas;
var $cantAyudas;
// setup an "add a tag" link
var $addTagLinkAyudas = $('<button style="margin-top: 10px;" class="btn btn-success btn-block" type="button" href="#" class="add_tag_link"><i class="fa fa-plus fa-fw"></i> Agregue una Ayuda</button>');
var $newLinkLiAyudas = $('<div></div>').append($addTagLinkAyudas);

jQuery(document).ready(function() {
    // Get the ul that holds the collection of telefonos
    $collectionAyudas = $('div.ayudas');

    //Para en el editar quitar un almacen

    $collectionAyudas.children().append('<a href="#" class="remove-tag-telf btn btn-danger btn-block"><i class="fa fa-times fa-fw"></i> Quitar Ayuda</a>');

    $removerTelf = $collectionAyudas.find('.remove-tag-telf');
    $cantAyudas = $removerTelf.length;

    //Para quitar el primer label 0 ese ladilloso y el label 1 cuando hay dos almacenes agregados
    $collectionAyudas.find('.control-label').first().remove();
    /*if ($cantAyudas > 1) {
        $hijos = $collectionAyudas.find('.control-label');
        $hijos.get(2).remove();
    };*/

    $removerTelf.click(function(e) {
        e.preventDefault();
        $(this).parent().parent().remove();
        if($cantAyudas > 0){ $cantAyudas--; }

        return false;
    });
    // add the "add a tag" anchor and li to the telefonos ul
    $collectionAyudas.append($newLinkLiAyudas);

    // count the current form inputs we have (e.g. 2), use that as the new
    // index when inserting a new item (e.g. 2)
    $collectionAyudas.data('index', $collectionAyudas.find(':input').length);

    $addTagLinkAyudas.on('click', function(e) {
        // prevent the link from creating a "#" on the URL
        e.preventDefault();
        // add a new tag form (see next code block)
        //Es la cantidad maxima de items que podrá agregar a la venta
        if($cantAyudas < 100){ addTagFormTelefono($collectionAyudas, $newLinkLiAyudas); $cantAyudas++; }
    });
});
function addTagFormTelefono($collectionAyudas, $newLinkLiAyudas) {

    // Get the data-prototype explained earlier
    var prototypet = $collectionAyudas.data('prototype');

    // get the new index
    var index = $collectionAyudas.data('index');

    // Replace '__name__' in the prototype's HTML to
    // instead be a number based on how many items we have
    var newFormt = prototypet.replace(/__name__/g, index);

    // increase the index with one for the next item
    $collectionAyudas.data('index', index + 1);

    // Display the form in the page in an li, before the "Add a tag" link li
    var $newFormLiTelefonos = $('<div></div>').append(newFormt);
    //Quita los #label_ de los nuevos almacenes
    $newFormLiTelefonos.find('.control-label').first().remove();
    //$newLinkLiAyudas.before($newFormLiTelefonos);

    // also add a remove button, just for this example
    $newFormLiTelefonos.children('.form-group').append('<a href="#" class="remove-tag-telf btn btn-danger btn-block"><i class="fa fa-times fa-fw"></i> Quitar Ayuda</a>');
    
    $newLinkLiAyudas.before($newFormLiTelefonos);
    
    // handle the removal, just for this example
    $('.remove-tag-telf').click(function(e) {
        e.preventDefault();
        if($cantAyudas > 0){ $cantAyudas--; }
        $(this).parent().parent().remove();
        return false;
    });
}