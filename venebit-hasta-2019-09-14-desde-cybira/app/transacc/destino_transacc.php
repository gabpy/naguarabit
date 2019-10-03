<?php
/*
lista los pagos a destino de una transaccion especifica
devuelve un objeto json con la data
forma de uso:
user/get_resumen.php?id=ID_TRANSACC
*/
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "venebit", "venebit", "venebit");
$conn->set_charset("utf8"); //handle utf-8 encoding

//obtener parametro de URL
if (isset($_GET['id'])){
  $id = $_GET['id'];
}else{
  $id="";
}

$outp = "";

if (!isset($id)  || $id == ""){
$outp ='{"records":['.$outp.']}';
}

else{
  //sin filtro de id
  $sql = "SELECT * \n"
      . "FROM pago_destino a\n"
      . "INNER JOIN transacciones b ON a.id_transaccion = b.id\n"
      .  "WHERE id_transaccion=4";
      //TODO. agregar esta linea:
      //. "WHERE a.id_transacc = " . $id ."\n";
      //. "LIMIT 1\n";

  //test sin filtro
  $result = $conn->query($sql);

  while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "") {$outp .= ",";}
      $outp .= '{';
      $outp .= '"id":"'     		           . $rs["id"]  	         .'"';
      $outp .= ',"cod_banco":"'  		       . $rs["cod_banco"] 	   .'"';
      $outp .= ',"nroctabank":"' 		       . $rs["nroctabank"]	       .'"';
      $outp .= ',"monto":"'                . $rs["monto"] .'"';
      $outp .= ',"date_created":"'         . $rs["date_created"].'"';
      $outp .= ',"check_realizado":"'      . $rs["check_realizado"].'"';
      $outp .= ',"login_user_pagador":"'   . $rs["login_user_pagador"] .'"';
      $outp .= ',"img_comprob":"'          . $rs["img_comprob"] .'"';
      $outp .= ',"check_user_cliente":"'      . $rs["check_user_cliente"].'"';
      $outp .= '}';

/*
    //TODO. mostrar saltos de linea en el textarea de manera apropiada
    //replace salto de lineas por espacio
    $observ = str_replace(array("\r\n", "\r", "\n"), " ", $rs["observ"]);
    $outp .= ',"observ":"'  . $observ  . '"';
    $outp .= '}';
    */
  }
  $outp ='{"records":['.$outp.']}';
}

$conn->close();
echo($outp);

/*
<!--
$outp .= ',"codpais":"'  . $rs["cod_pais"]     . '"';
  $outp .= ',"codciudad":"'  . $rs["cod_ciudad"]     . '"';
-->
*/
?>
