function initialize() {
    $('.rating input:radio:checked').closest('label').addClass('selected');
}

$(document).ajaxSend(function(e, xhr) {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    xhr.setRequestHeader(header, token);
});

$(document).ready(function() {
    $('.rating input:radio').change(function () {
        var recipe = $('input:hidden[name=recipe]').val();
        var rate = $('.rating input:radio:checked').val();
        var that = this;
        $.ajax({
            url: '/rating',
            type: 'post',
            contentType: 'application/json',
            data: JSON.stringify({ recipe: recipe, rate: rate }),
            success: function(response) {
                console.log(response);
                $(that).closest('div').find('.selected').removeClass('selected');
                $(that).closest('label').addClass('selected');
            },
            error: function(error) {
                console.log(error);
            }
        });
    });

    initialize();
});
