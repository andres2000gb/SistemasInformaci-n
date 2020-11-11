var mapas;
function inicializar(){
    if(navigator.geolocation){
        navigator.geolocation.getCurrentPosition(mostrarLocalizacion,manejarError);
    }else{
        alert("Tu navegador no soporta geolocalización");
    }
    var opciones={zoom: 12,mapTypeId: google.maps.MapTypeId.HYBRID};
    mapas= new google.maps.Map(document.getElementById("mapa"),opciones);
}

function mostrarLocalizacion(posicion){
    let hosp = document.getElementById('selecthospital')
    let elegido = hosp.value;
    var nombre;
    var posx, posy;
    if(elegido=="1"){
        posx=  41.6348027;
        posy= -0.8999977;
        nombre = "Miguel Servet"
    }else if(elegido=='2'){
        posx=  41.6434118;
        posy= -0.9383873;
        nombre = "Clínico Universitario"
    }else if(elegido=='3'){
        posx=  41.6921901;
        posy= -0.8630831;
        nombre = "Royo Villanova"
    }else if(elegido=='4'){
        posx=  41.6299882;
        posy= -0.9391;
        nombre = "General de la Defensa"
    }else if(elegido=='5'){
        posx=  40.3331105;
        posy= -1.1421586;
        nombre = "Obispo Polanco"
    }else if(elegido=='6'){
        posx=  41.0448318;
        posy= -0.1319423;
        nombre = "Hospital de Alcañiz"
    }else if(elegido=='7'){
        posx=  42.0330333;
        posy= 0.1068238;
        nombre = "Hospital de Barbastro"
    }else if(elegido=='8'){
        posx=  42.1311427;
        posy= -0.4257344;
        nombre = "San José"
    }else if(elegido=='9'){
        posx=  41.3354133;
        posy= -1.6504655;
        nombre = "Ernest Lluch"
    }else if(elegido=='10'){
        posx=  42.1421758;
        posy= -0.4048485;
        nombre = "Sagrado Corazón de Jesús"
    }else if(elegido=='11'){
        posx=  40.3468045;
        posy= -1.1175481;
        nombre = "Hospital Público San José"
    }else if(elegido=='12'){
        posx=  42.1253326;
        posy= -1.1314834;
        nombre = "Hospital Ejea Cinco Villas"
    }else{
      posx=  41.6369444;
      posy= -0.6996111111111111;
      nombre = "Elija su hospital"
    }
    var pos= new google.maps.LatLng(posx,posy);
    var info=new google.maps.InfoWindow({map: mapas,position: pos,content: nombre });
    mapas.setCenter(pos);
}

function manejarError(error){
    switch(error.code){
        case error.PERMISSION_DENIED:
            alert("No tienes permiso");
            break;
        case error.POSITION_UNAVAIBLE:
            alert("No se puede detectar ubicación");
            break;
        case error.TIMEOUT:
            alert("Te has quedado sin tiempo");
            break;
        case error.UNKNOWN_ERROR:
            alert("Error desconocido");
            break;
    }
}

google.maps.event.addDomListener(window,'load',inicializar);
