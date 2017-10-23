var currentStep = 0;

function updateIndicators(step) {
    var indicators = $('.step');
    for (var i = 0; i < indicators.length; i++) {
        $(indicators.get(i)).removeClass('active');
    }
    $(indicators.get(step)).addClass('active');
}

function show(step) {
    var tabs = $('.tab');
    $(tabs.get(step)).css('display', 'block');
    if (step == 0) {
        $('.btn-prev').css('display', 'none');
    } else {
        $('.btn-prev').css('display', 'inline');
    }
    if (step == (tabs.length - 1)) {
        $('.btn-next').html('Submit');
    } else {
        $('.btn-next').html('Next');
    }
    updateIndicators(step);
}

function navigate(step) {
    var tabs = $('.tab');
    $(tabs.get(currentStep)).css('display', 'none');
    currentStep = currentStep + step;
    if (currentStep >= tabs.length) {
        $('form').submit();
    }
    show(currentStep);
}

function initialize() {
    $(':checkbox').checkboxpicker();
    show(currentStep);
}

$(document).ready(function() {
    $('.btn-prev').click(function() {
        navigate(-1);
    });

    $('.btn-next').click(function() {
        navigate(1);
    });

    $('.rating input').change(function () {
        $(this).removeClass('selected');
        $(this).closest('label').addClass('selected');
    });

    initialize();
});
