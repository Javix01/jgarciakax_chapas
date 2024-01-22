const xhttp = new XMLHttpRequest();
let cd;
xhttp.onload = function() {
    const xmlDoc = xhttp.responseXML;
    cd = xmlDoc.getElementsByTagName("PARTIDO");
    loadCD();
}
xhttp.open("GET", "../xml/PartidosLiga.xml");
xhttp.send();

function loadCD() {
    let table="<tr><th st>Local</th><th>Resultado</th><th>Visitante</th></tr>";
    for (let i = 0; i < cd.length; i++) {
        table += "<tr onclick='displayCD(" + i + ")'><td>";
        table += cd[i].getElementsByTagName("LOCAL")[0].childNodes[0].nodeValue;
        table += "</td><td>";
        table += cd[i].getElementsByTagName("RESULTADO")[0].childNodes[0].nodeValue;
        table += "</td><td>";
        table += cd[i].getElementsByTagName("VISITANTE")[0].childNodes[0].nodeValue;
        table += "</td></tr>";
    }
    document.getElementById("demo").innerHTML = table;
}

function displayCD(i) {
    let table = "<tr><th>Equipo Local</th><th>Datos del partido</th><th>Equipo Visitante</th></tr>";
    table += "<tr><td>";
    table += "<img src='" + cd[i].getElementsByTagName("IMGLOCAL")[0].childNodes[0].nodeValue + "' alt='Local' class='team-logo'>";
    table += "<br/>";
    table += cd[i].getElementsByTagName("LOCAL")[0].childNodes[0].nodeValue;
    table += "</td><td>";
    table += "Resultado: " + cd[i].getElementsByTagName("RESULTADO")[0].childNodes[0].nodeValue + "<br>";
    table += "Fecha: " + cd[i].getElementsByTagName("FECHA")[0].childNodes[0].nodeValue + "<br>";
    table += "Lugar: " + cd[i].getElementsByTagName("LUGAR")[0].childNodes[0].nodeValue;
    table += "</td><td>";
    table += "<img src='" + cd[i].getElementsByTagName("IMGVISITANTE")[0].childNodes[0].nodeValue + "' alt='Visitante' class='team-logo'>";
    table += "<br/>";
    table += cd[i].getElementsByTagName("VISITANTE")[0].childNodes[0].nodeValue;
    table += "</td></tr>";
    document.getElementById("showP").innerHTML = table;
}