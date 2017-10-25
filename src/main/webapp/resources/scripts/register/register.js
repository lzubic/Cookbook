var currentStep = 0;

function validate() {
    var username = $('input[name=username]');
    var password = $('input[name=password]');
    var email = $('input[name=email]');
    if (username.val() == "") username.css('border-color', 'red');
    if (password.val() == "") password.css('border-color', 'red');
    if (email.val() == "") email.css('border-color', 'red');
    return username.val() != "" && password.val() != "" && email.val() != "";
}

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
        $('.btn-next').html('Finish');
    } else {
        $('.btn-next').html('Next');
    }
    updateIndicators(step);
}

function navigate(step) {
    var tabs = $('.tab');
    if (step == 1 && !validate()) return false;
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

    initialize();
});
