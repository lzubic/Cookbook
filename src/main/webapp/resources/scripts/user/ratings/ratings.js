$(document).ajaxSend(function(e, xhr) {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    xhr.setRequestHeader(header, token);
});

$(document).ready(function() {
    $('.rating input:radio').change(function() {
        $(this).closest('div').find('.selected').removeClass('selected');
        $(this).closest('label').addClass('selected');
    });

    $('.btn-done').click(function() {
        var recipes = [];
        $('input:hidden').each(function() {
            recipes.push($(this).val());
        });
        var rates = [];
        $('.rating input:radio:checked').each(function() {
            rates.push(parseInt($(this).val()));
        });
        $.ajax({
            url: '/ratings',
            type: 'post',
            contentType: 'application/json',
            data: JSON.stringify({ recipes: recipes, rates: rates }),
            success: function(response) {
                console.log(response);
                $('.cold-start-message').css('display', 'none');
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
});
