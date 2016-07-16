var $collectionMiembro;
var $cantHijos;
var $addTagLinkMembers = $('<button style="margin-top: 10px;" class="btn btn-success" type="button" href="#" class="add_tag_link"><i class="fa fa-user fa-fw"></i> Agregue una Persona</button>');
var $newLinkLiMGF = $('<div></div>').append($addTagLinkMembers);

jQuery(document).ready(function() {
    $collectionMiembro = $('div.miembrosGrupoFam');


    $collectionMiembro.children().append('<div class="col-sm-2"><a href="#" class="remove-tag-telf btn btn-danger"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Quitar Persona</a></div>');

    $removerTelf = $collectionMiembro.find('.remove-tag-telf');
    $cantHijos = $removerTelf.length;

    $collectionMiembro.find('.control-label').first().remove();
    /*if ($cantHijos > 1) {
        $hijos = $collectionMiembro.find('.control-label');
        $hijos.get(2).remove();
    };*/

    $removerTelf.click(function(e) {
        e.preventDefault();
        $(this).parent().parent().remove();
        if($cantHijos > 0){ $cantHijos--; }

        return false;
    });
    $collectionMiembro.append($newLinkLiMGF);

    $collectionMiembro.data('index', $collectionMiembro.find(':input').length);

    $addTagLinkMembers.on('click', function(e) {
        e.preventDefault();
        if($cantHijos < 100){ addTagFormMiembro($collectionMiembro, $newLinkLiMGF); $cantHijos++; }
    });
});
function addTagFormMiembro($collectionMiembro, $newLinkLiMGF) {

    var prototypet = $collectionMiembro.data('prototype');

    var index = $collectionMiembro.data('index');

    var newFormt = prototypet.replace(/__name__/g, index);

    $collectionMiembro.data('index', index + 1);

    var $newFormLiTelefonos = $('<div></div>').append(newFormt);
    $newFormLiTelefonos.find('.control-label').first().remove();

    $newFormLiTelefonos.children('.form-group').append('<div class="col-sm-2"><a href="#" class="remove-tag-telf btn btn-danger"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Quitar Persona</a></div>');
    
    $newLinkLiMGF.before($newFormLiTelefonos);
    
    $('.remove-tag-telf').click(function(e) {
        e.preventDefault();
        if($cantHijos > 0){ $cantHijos--; }
        $(this).parent().parent().remove();
        return false;
    });
}