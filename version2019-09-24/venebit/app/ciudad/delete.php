<?php
/*
file:ciudad/delete.php
fecha creado: 2019-07-12

uso:
delete_user.php?codigo=CODIGOCIUDAD
*/
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

//se obtiene el parametro 'CODIGO'
  if (isset($_GET['codigo'])){
    $codigo = $_GET['codigo'];
  }else{
    $codigo="";
  }
//*DEBUG. echo "$codigo:".$codigo;

$outp = "";

if (!isset($codigo) || $codigo == ""){
  //TODO. devolver mensaje de error
  $err = "No se proporcionio parametro para borrar el registro: codigo";
  $outp .='{"resultado":"ERROR"';
  $outp .=',"mensaje":"' .$err. '"';
  $outp .= '}';
}

else{
  $conn = new mysqli("localhost", "venebit", "venebit", "venebit");
  $conn->set_charset("utf8"); //handle utf-8 encoding
  //*test
  //-$result = $conn->query("DELETE * from pais where codigo ='" . $codigo . "'");

  $sql="DELETE FROM ciudad WHERE codigo ='" . $codigo. "'";
  if($conn->query($sql) == TRUE) {
    if ($outp != "") {$outp .= ",";}
      $outp .='{"resultado":"EXITO"';
      $outp .=',"mensaje":"'     . "Datos borrados" . '"';
      $outp .='}';
  }else{
    $err = "Error intentando borrar datos.<br>".
    "Detalles: <br>".
    "Sentencia a ejecutar: " . $sql . "<br>" 
    ."Descripcion del error: ". $conn->error;
    $outp .='{"resultado":"ERROR"';
    $outp .=',"mensaje":"' .$err. '"';
    $outp .= '}';
  } 
}

  $outp ='{"records":['.$outp.']}';
  $conn->close();
  echo($outp);
?>