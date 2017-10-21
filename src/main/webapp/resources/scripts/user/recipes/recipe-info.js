/**
 * Created by Danica on 21-Oct-17.
 */

$('.rating input').change(function () {
    var $radio = $(this);
    $('.rating .selected').removeClass('selected');
    $radio.closest('label').addClass('selected');
});