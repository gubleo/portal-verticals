$.post('./html/grids/navegation.html', function (html) {
    $('#navegation-bar').html(html);
});

$.post('./html/feeds/artigo.html', function (html) {
    $('#maincontainer').html(html);
});

$.post('./html/grids/recents.html', function (html) {
    $('#recentes').html(html);
});

$.post('./html/grids/copyright.html', function (html) {
    $('#bycraos').html(html);
});
$.post('./html/grids/menu.html', function (html) {
    $('#menu').html(html);
});