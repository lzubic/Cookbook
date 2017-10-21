$(document).ready(function() {
    $('.btn-file :file').change(function() {
        var label = $(this).val().replace(/\\/g, '/').replace(/.*\//, '');
        var input = $(this).parents('.input-group').find(':text');
        if (input.length) {
            input.val(label);
        }
    });

    $('.photo-upload').change(function() {
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('.recipe-photo').attr('src', e.target.result);
            };
            reader.readAsDataURL(this.files[0]);
        }
    });
});
