var $collectionPreguntas;
var $cantPreguntas;
// setup an "add a tag" link
var $addTagLinkPreguntas = $('<button style="margin-top: 10px;" class="btn btn-success btn-block" type="button" href="#" class="add_tag_link"><i class="fa fa-plus fa-fw"></i> Agregar Pregunta</button>');
var $newLinkLiPreg = $('<div></div>').append($addTagLinkPreguntas);

jQuery(document).ready(function() {
    // Get the ul that holds the collection of telefonos
    $collectionPreguntas = $('div.preguntas');

    //Para en el editar quitar un almacen

    $collectionPreguntas.children().append('<a href="#" class="remove-tag-telf btn btn-danger btn-block"><i class="fa fa-times fa-fw"></i> Quitar Pregunta</a>');

    $removerTelf = $collectionPreguntas.find('.remove-tag-telf');
    $cantPreguntas = $removerTelf.length;

    //Para quitar el primer label 0 ese ladilloso y el label 1 cuando hay dos almacenes agregados
    $collectionPreguntas.find('.control-label').first().remove();
    /*if ($cantPreguntas > 1) {
        $hijos = $collectionPreguntas.find('.control-label');
        $hijos.get(2).remove();
    };*/

    $removerTelf.click(function(e) {
        e.preventDefault();
        $(this).parent().parent().remove();
        if($cantPreguntas > 0){ $cantPreguntas--; }

        return false;
    });
    // add the "add a tag" anchor and li to the telefonos ul
    $collectionPreguntas.append($newLinkLiPreg);

    // count the current form inputs we have (e.g. 2), use that as the new
    // index when inserting a new item (e.g. 2)
    $collectionPreguntas.data('index', $collectionPreguntas.find(':input').length);

    $addTagLinkPreguntas.on('click', function(e) {
        // prevent the link from creating a "#" on the URL
        e.preventDefault();
        // add a new tag form (see next code block)
        //Es la cantidad maxima de items que podrá agregar a la venta
        if($cantPreguntas < 100){ addTagFormPreguntas($collectionPreguntas, $newLinkLiPreg); $cantPreguntas++; }
    });
});
function addTagFormPreguntas($collectionPreguntas, $newLinkLiPreg) {

    // Get the data-prototype explained earlier
    var prototypet = $collectionPreguntas.data('prototype');

    // get the new index
    var index = $collectionPreguntas.data('index');

    // Replace '__name__' in the prototype's HTML to
    // instead be a number based on how many items we have
    var newFormt = prototypet.replace(/__name__/g, index);

    // increase the index with one for the next item
    $collectionPreguntas.data('index', index + 1);

    // Display the form in the page in an li, before the "Add a tag" link li
    var $newFormLiTelefonos = $('<div></div>').append(newFormt);
    //Quita los #label_ de los nuevos almacenes
    $newFormLiTelefonos.find('.control-label').first().remove();
    //$newLinkLiPreg.before($newFormLiTelefonos);

    // also add a remove button, just for this example
    $newFormLiTelefonos.children('.form-group').append('<a href="#" class="remove-tag-telf btn btn-danger btn-block"><i class="fa fa-times fa-fw"></i> Quitar Pregunta</a>');
    
    $newLinkLiPreg.before($newFormLiTelefonos);
    
    // handle the removal, just for this example
    $('.remove-tag-telf').click(function(e) {
        e.preventDefault();
        if($cantPreguntas > 0){ $cantPreguntas--; }
        $(this).parent().parent().remove();
        return false;
    });
}