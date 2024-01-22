document.addEventListener("DOMContentLoaded", function () {
    var btnSubirArriba = document.getElementById("btnSubirArriba");

    // Muestra u oculta el botón según la posición de desplazamiento
    window.onscroll = function () {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            btnSubirArriba.style.display = "block";
        } else {
            btnSubirArriba.style.display = "none";
        }
    };

    // Desplázate hacia arriba cuando haces clic en el botón
    btnSubirArriba.onclick = function () {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    };
});