// Javascript para el botón de hamburguesa y submenús
document.addEventListener('DOMContentLoaded', function () {
    let btnHamburguesa = document.getElementById("btn-hamburguesa");
    let menuNavegacion = document.getElementById("menu-navegacion");

    btnHamburguesa.addEventListener('click', function () {
        menuNavegacion.classList.toggle("viewMenu");
    });

    // Modificación para hacer desplegables los elementos con submenús en el modo responsivo
    $(".item-menu-sub-menu").click(function () {
        $(this).find(".sub-menu").toggle();
    });

    // Modificación para hacer desplegables los elementos con submenús en el modo responsivo
    $(".sub-menu .item-menu-sub-menu").click(function (e) {
        e.stopPropagation(); // Evitar que el clic en el submenú propague al contenedor principal
        $(this).find(".sub-menu").toggle();
    });
});