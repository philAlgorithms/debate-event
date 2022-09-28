$(document).ready(function(){
    $.ajaxSetup({
        headers: {
            'accept': 'application/json',
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
});

function showItem(item, hideItem){
    hideItem = hideItem || undefined;

    item.removeClass('d-none');
    if(hideItem !== undefined)
        hideItem.addClass('d-none');
}

function checkErrors (response)
{
    if (response.type == 'validation')
    {
        for (let key in response.message)
        {
            let el = $(`#${key}`);
            if(el.length){
                el.addClass('is-invalid');
                if(el.closest('.input-group').find('.invalid-feedback').length)
                    el.closest('.input-group').find('.invalid-feedback').text(response.message[key][0]);
            }
        }
    }
}

function clearInvalid(container)
{
    $(container).find('.is-invalid').removeClass('is-invalid');
}