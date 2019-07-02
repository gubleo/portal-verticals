$.post('./html/grids/navegation.html', function (navegation) {
    $('#navegation-bar').html(navegation);
});

$.post('./html/grids/copyright.html', function (copyright) {
    $('#bycraos').html(copyright);
});

$.post('./html/grids/menu.html', function (menu) {
    $('#menu').html(menu);
});

$.post('./html/feeds/artigo.html', function (artigo) {
    $('#maincontainer').html(artigo);
});

$.post('./html/grids/recents.html', function (recents) {
    $('#recentes').html(recents);
});

$(document).ready(function(){
    $("#ler-pagina").click(function(){

        $(function(){
            $("#conteudo-pagina-lida").load("pagina-lida.html");
        });
    })
});
//
// function exibirregistro() {
//     // document.getElementById("registro").innerHTML = './html/register.html';
//     window.location.replace('./html/register.html','janela');
// }
//
// $.post('../html/register.html', function (registro) {
//     $('register').html(registro);
// });
