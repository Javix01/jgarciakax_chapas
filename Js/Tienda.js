function setCookie(key, productName, unitPrice) {
    const expires = new Date();
    expires.setTime(expires.getTime() + 86400000); // 1 día = 86.400.000 milisegundos

    let cookies = document.cookie.split("; ");
    let found = false;

    for (let i = 0; i < cookies.length; i++) {
        let cookie = cookies[i].split("=");
        if (cookie[0] === key) {
            found = true;
            let productInfo = cookie[1].split(":");
            let quantity = Number(productInfo[2]);
            quantity++;
            let updatedCookieValue = `${productName}:${unitPrice}:${quantity}`;
            document.cookie = key + "=" + updatedCookieValue + ";" + expires.toUTCString() + ";path=/";
            break;
        }
    }

    if (!found) {
        // Si la cookie no existe, crea una nueva con información del producto
        let productInfo = `${productName}:${unitPrice}:1`;
        document.cookie = key + "=" + productInfo + ";" + expires.toUTCString() + ";path=/";
    }

    // Actualiza el resumen de la compra
    actualizarResumenCompra();
}

function actualizarResumenCompra() {
    let cookies = document.cookie.split("; ");
    let tablaResumen = document.getElementById("tablaResumen");
    let totalCompra = 0;

    // Limpiar la tabla antes de agregar las nuevas filas
    tablaResumen.innerHTML = "";

    if (cookies.length === 0 || (cookies.length === 1 && cookies[0] === "")) {
        document.getElementById("totalCompra").textContent = "00.00 €";
        return;
    }

    for (let i = 0; i < cookies.length; i++) {
        let cookie = cookies[i].split("=");
        let key = cookie[0];
        let productInfo = cookie[1].split(":");
        let productName = productInfo[0];
        let unitPrice = Number(productInfo[1]);
        let quantity = Number(productInfo[2]);

        // Crear una nueva fila para el producto
        let row = document.createElement("tr");
        row.innerHTML = `<td>${productName}</td><td>${quantity}</td><td>${unitPrice.toFixed(2)} €</td><td>${(unitPrice * quantity).toFixed(2)} €</td><td><button onclick="eliminarProducto('${key}')">Eliminar</button></td>`;
        tablaResumen.appendChild(row);

        // Actualizar el total de la compra
        totalCompra += unitPrice * quantity;
    }
// Mostrar el total de la compra o establecerlo en "00.00" si no hay productos
    document.getElementById("totalCompra").textContent = totalCompra > 0 ? totalCompra.toFixed(2) + " €" : "00.00 €";
}

window.onload = function() {
    actualizarResumenCompra();
};

function eliminarProducto(key) {
    // Elimina la cookie correspondiente al producto
    document.cookie = key + "=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";

    // Actualiza el resumen de la compra después de eliminar el producto
    actualizarResumenCompra();
}
