<?php
/*
user/getuser.php
devuelve un objeto json con la data
forma de uso desde el URL o petición GET:
user/get_user.php?login=LOGINUSER
donde LOGINUSER es el valor del parametro
*/
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../bd/connection.php");

//obtiene objeto json con los parametros proporcionados a través de llamada tipo RestFul, desde el controlador
$dataParams =  json_decode(file_get_contents('php://input'), true);
//*
echo "\n Parametros via POST: $dataParams";

echo "\n Parametros via GET:";
//obtener parametros enviados via petcion GET o desde el URL
$login="";
if (isset($_GET['login'])){
  $login = $_GET['login'];
  //*
  echo "\n login: $login";
}

$password="";
if (isset($_GET['password'])){
  $password = $_GET['password'];
  //*
  echo "\n password:  $password";
}

$outp = "";

if (!isset($login)  || $login == ""){
  //*
  echo "\n Respuesta Vacía: \n";
  $outp ='{"records":['.$outp.']}';
}

else{
  $result = $conn->query("SELECT * from user where login ='" . $login . "' AND password ='" . $password . "' LIMIT 1");

  //test sin filtro
  //$result = $conn->query("SELECT * from user LIMIT 1");

  while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "") {$outp .= ",";}
    $outp .= '{';
    $outp .= '"id":"'        . $rs["id"]       . '"';
    $outp .= ',"login":"'     . $rs["login"]    . '"';
    $outp .= ',"nombre":"'    . $rs["nombre"]   . '"';
    $outp .= ',"email":"'     . $rs["email"]    . '"';
    $outp .= ',"telefono":"'  . $rs["telefono"] . '"';
    $outp .= ',"cod_pais":"'  . $rs["cod_pais"]     . '"';
    $outp .= ',"cod_ciudad":"'. $rs["cod_ciudad"]     . '"';
    //TODO. mostrar saltos de linea en el textarea de manera apropiada
    //replace salto de lineas por espacio
    $observ = str_replace(array("\r\n", "\r", "\n"), " ", $rs["observ"]);
    $outp .= ',"observ":"'  . $observ  . '"';
    $outp .= '}';
  }
  $outp ='{"records":['.$outp.']}';
}

$conn->close();
//*
echo "\n Contenido de Respuesta: \n";
echo($outp);

/*
<!--
$outp .= ',"codpais":"'  . $rs["cod_pais"]     . '"';
  $outp .= ',"codciudad":"'  . $rs["cod_ciudad"]     . '"';
-->
*/
?>
