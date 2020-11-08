<?php
if (isset($_FILES['file']) && $_FILES['file']['error'] == 0) {

// uploads image in the folder images
    //determina extensión de cada archivo
    $temp = explode(".", $_FILES["file"]["name"]);

    //define parte del nombre del archivo con
    //codigo de transaccion: fecha + id_transaccion + codigo_pais_origen + cod_pais_destino)
    //TODO. tomar fecha del sistema
    //$codtransaccion = '2019-09-11_' . '00001_' . 'PAR_VEN_';
    $codoper = date("Y-m-d") . '_00001_' . 'PAR_VEN_';

    echo 'codtransaccion para imagen: ' . $codoper;

    //ORIGINAL, nombre de archivo generado con valor aleatorio, y datos de la transaccion
    $newfilename = $codoper . substr(md5(time()), 0, 10) .  '.' . end($temp);
    
    //sube archivo/s a carpeta especificada, en este caso carpeta images dentro de upload
    move_uploaded_file($_FILES['file']['tmp_name'], 'images/' . $newfilename);

    //TODO. debe subir las imagenes a carpeta fuera de la carpeta app, para evitar conflictos para respaldar y actualizar app y uploads
    //move_uploaded_file($_FILES['file']['tmp_name'], '../uploads/images/' . $newfilename);

    //la linea original, que funciona es:
    //move_uploaded_file($_FILES['file']['tmp_name'], 'images/' . $newfilename);
    //en este caso sube a la carpeta images dentro del mismo directorio donde este el archivo .php


    //en este caso hace referencia a la carpeta images un nivel mas arriba de donde esta este archivo .php
    //move_uploaded_file($_FILES['file']['tmp_name'], '../images/' . $newfilename);


// give callback to your angular code with the image src name
    echo json_encode($newfilename);
}
?>