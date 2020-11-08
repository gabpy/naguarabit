<?php
if (isset($_FILES['file']) && $_FILES['file']['error'] == 0) {

// uploads image in the folder images
    $temp = explode(".", $_FILES["file"]["name"]);

    //datos de transaccion: fecha, cod pais origen + cod pais destino + id de transaccion)
    $codtransaccion .= '2019-09-11_' . '00001_' . 'PAR_VEN_';

    //ORIGINAL, nombre generado con valor aleatorio, y datos de la transaccion
    $newfilename = $codtransaccion . substr(md5(time()), 0, 10) .  '.' . end($temp);
    

    move_uploaded_file($_FILES['file']['tmp_name'], 'images/' . $newfilename);
    //original funciona: move_uploaded_file($_FILES['file']['tmp_name'], 'images/' . $newfilename);
    //en este caso sube a la carpeta images dentro del mismo directorio donde este el archivo .php

    //en este caso hace referencia a la carpeta images un nivel mas arriba de donde esta este archivo .php
    //move_uploaded_file($_FILES['file']['tmp_name'], '../images/' . $newfilename);


// give callback to your angular code with the image src name
    echo json_encode($newfilename);
}
?>