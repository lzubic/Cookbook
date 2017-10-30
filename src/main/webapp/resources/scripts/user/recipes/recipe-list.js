$(document).ready(function() {
    $('#list').click(function(event){event.preventDefault();$('#recipes .item').addClass('list-group-item');});
    $('#grid').click(function(event){event.preventDefault();$('#recipes .item').removeClass('list-group-item');$('#recipes .item').addClass('grid-group-item');});
});