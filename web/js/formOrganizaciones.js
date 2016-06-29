var $collectionOrganizaciones;
var $cantOrgs;
// setup an "add a tag" link
var $addTagLinkOrgs = $('<button style="margin-top: 10px;" class="btn btn-success btn-block" type="button" href="#" class="add_tag_link"><i class="fa fa-plus fa-fw"></i> Agregue una Situación de Exclusión</button>');
var $newLinkLiOrg = $('<div></div>').append($addTagLinkOrgs);

jQuery(document).ready(function() {
    // Get the ul that holds the collection of telefonos
    $collectionOrganizaciones = $('div.organizaciones');

    //Para en el editar quitar un almacen

    $collectionOrganizaciones.children().append('<a href="#" class="remove-tag-telf btn btn-danger btn-block"><i class="fa fa-times fa-fw"></i> Quitar Situación de Exclusión</a>');

    $removerTelf = $collectionOrganizaciones.find('.remove-tag-telf');
    $cantOrgs = $removerTelf.length;

    //Para quitar el primer label 0 ese ladilloso y el label 1 cuando hay dos almacenes agregados
    $collectionOrganizaciones.find('.control-label').first().remove();
    /*if ($cantOrgs > 1) {
        $hijos = $collectionOrganizaciones.find('.control-label');
        $hijos.get(2).remove();
    };*/

    $removerTelf.click(function(e) {
        e.preventDefault();
        $(this).parent().parent().remove();
        if($cantOrgs > 0){ $cantOrgs--; }

        return false;
    });
    // add the "add a tag" anchor and li to the telefonos ul
    $collectionOrganizaciones.append($newLinkLiOrg);

    // count the current form inputs we have (e.g. 2), use that as the new
    // index when inserting a new item (e.g. 2)
    $collectionOrganizaciones.data('index', $collectionOrganizaciones.find(':input').length);

    $addTagLinkOrgs.on('click', function(e) {
        // prevent the link from creating a "#" on the URL
        e.preventDefault();
        // add a new tag form (see next code block)
        //Es la cantidad maxima de items que podrá agregar a la venta
        if($cantOrgs < 100){ addTagFormOrgs($collectionOrganizaciones, $newLinkLiOrg); $cantOrgs++; }
    });
});
function addTagFormOrgs($collectionOrganizaciones, $newLinkLiOrg) {

    // Get the data-prototype explained earlier
    var prototypet = $collectionOrganizaciones.data('prototype');

    // get the new index
    var index = $collectionOrganizaciones.data('index');

    // Replace '__name__' in the prototype's HTML to
    // instead be a number based on how many items we have
    var newFormt = prototypet.replace(/__name__/g, index);

    // increase the index with one for the next item
    $collectionOrganizaciones.data('index', index + 1);

    // Display the form in the page in an li, before the "Add a tag" link li
    var $newFormLiTelefonos = $('<div></div>').append(newFormt);
    //Quita los #label_ de los nuevos almacenes
    $newFormLiTelefonos.find('.control-label').first().remove();
    //$newLinkLiOrg.before($newFormLiTelefonos);

    // also add a remove button, just for this example
    $newFormLiTelefonos.children('.form-group').append('<a href="#" class="remove-tag-telf btn btn-danger btn-block"><i class="fa fa-times fa-fw"></i> Quitar Situación de Exclusión</a>');
    
    $newLinkLiOrg.before($newFormLiTelefonos);
    
    // handle the removal, just for this example
    $('.remove-tag-telf').click(function(e) {
        e.preventDefault();
        if($cantOrgs > 0){ $cantOrgs--; }
        $(this).parent().parent().remove();
        return false;
    });
}