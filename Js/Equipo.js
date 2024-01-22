function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev, targetDivId) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    var draggedElement = document.getElementById(data);
    var targetDiv = document.getElementById(targetDivId);

    // Verifica si el #div1 ya tiene un hijo
    if (targetDivId === "div1" && targetDiv.children.length > 0) {
        alert("Ya hay un portero");
    } else {
        // Mueve la imagen al div de destino
        targetDiv.appendChild(draggedElement);

        // Ajusta la posición solo si es div1
        if (targetDivId === "div1") {
            // Centra verticalmente el contenido en div1
            var offset = (targetDiv.offsetHeight - draggedElement.height) / 2;
            draggedElement.style.position = "relative";
            draggedElement.style.top = offset + "px";
        }
    }
}