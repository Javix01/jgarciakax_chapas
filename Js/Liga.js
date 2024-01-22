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

    // Verifica si el div de destino ya tiene un hijo
    if (targetDiv.children.length > 1) {
        alert("Ya hay un equipo en este div");
    } else {
        // Clona el elemento y lo mueve al div de destino
        var clonedElement = draggedElement.cloneNode(true);
        targetDiv.appendChild(clonedElement);

        // Elimina el elemento original
        draggedElement.parentNode.removeChild(draggedElement);
    }
}